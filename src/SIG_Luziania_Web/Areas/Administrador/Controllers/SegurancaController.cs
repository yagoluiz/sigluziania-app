using AutoMapper;
using PagedList;
using SIG_Luziania_Web.Areas.Administrador.ViewModels;
using SIG_Luziania_Web.Models;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;

namespace SIG_Luziania_Web.Areas.Administrador.Controllers
{
    [Authorize]
    [RouteArea("administrador")]
    [RoutePrefix("seguranca")]
    [Route("{action}")]
    public class SegurancaController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public SegurancaController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: seguranca
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListSegurancaVM = new List<SegurancaViewModel>();

            foreach (var item in db.Seguranca.Include(s => s.Cidade).Include(s => s.TipoSeguranca))
            {
                var segurancaVM = Mapper.Map<Seguranca, SegurancaViewModel>(item);
                ListSegurancaVM.Add(segurancaVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListSegurancaVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListSegurancaVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: seguranca/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome");
            ViewBag.TipoSegurancaId = new SelectList(db.TipoSeguranca, "TipoSegurancaId", "Nome");

            return View();
        }

        // POST: seguranca/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "SegurancaId,CidadeId,TipoSegurancaId,Nome,Endereco,Bairro,Cep,Telefone,Latitude,Longitude")] SegurancaViewModel segurancaVM)
        {
            if (ModelState.IsValid)
            {
                var seguranca = Mapper.Map<SegurancaViewModel, Seguranca>(segurancaVM);

                db.Seguranca.Add(seguranca);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", segurancaVM.CidadeId);
            ViewBag.TipoSegurancaId = new SelectList(db.TipoSeguranca, "TipoSegurancaId", "Nome", segurancaVM.TipoSegurancaId);

            return View(segurancaVM);
        }

        // GET: seguranca/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Seguranca seguranca = db.Seguranca.Find(id);

            if (seguranca == null)
                return HttpNotFound();

            var segurancaVM = Mapper.Map<Seguranca, SegurancaViewModel>(seguranca);

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", seguranca.CidadeId);
            ViewBag.TipoSegurancaId = new SelectList(db.TipoSeguranca, "TipoSegurancaId", "Nome", seguranca.TipoSegurancaId);

            return View(segurancaVM);
        }

        // POST: seguranca/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "SegurancaId,CidadeId,TipoSegurancaId,Nome,Endereco,Bairro,Cep,Telefone,Latitude,Longitude")] SegurancaViewModel segurancaVM)
        {
            if (ModelState.IsValid)
            {
                var seguranca = Mapper.Map<SegurancaViewModel, Seguranca>(segurancaVM);

                db.Entry(seguranca).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", segurancaVM.CidadeId);
            ViewBag.TipoSegurancaId = new SelectList(db.TipoSeguranca, "TipoSegurancaId", "Nome", segurancaVM.TipoSegurancaId);

            return View(segurancaVM);
        }

        // GET: seguranca/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Seguranca seguranca = db.Seguranca.Find(id);

            if (seguranca == null)
                return HttpNotFound();

            var segurancaVM = Mapper.Map<Seguranca, SegurancaViewModel>(seguranca);

            return View(segurancaVM);
        }

        // POST: seguranca/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            Seguranca seguranca = db.Seguranca.Find(id);

            db.Seguranca.Remove(seguranca);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar segurança única
        public ActionResult VerificarSeguranca(string nome, int? segurancaId)
        {
            bool seguranca = segurancaId != null ? db.Seguranca.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.SegurancaId != segurancaId)
                : db.Seguranca.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!seguranca, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<SegurancaViewModel> ListSegurancaVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListSegurancaVM = ListSegurancaVM.Where(x => x.Cidade.Nome.ToUpper().Contains(filtro.ToUpper())
                    || x.TipoSeguranca.Nome.ToUpper().Contains(filtro.ToUpper()) || x.Nome.ToUpper().Contains(filtro.ToUpper())
                    || x.Endereco.ToUpper().Contains(filtro.ToUpper()) || x.Bairro.ToUpper().Contains(filtro.ToUpper())
                    || (x.Cep != null && x.Cep.ToUpper().Contains(filtro.ToUpper())) || (x.Telefone != null && x.Telefone.ToUpper().Contains(filtro.ToUpper()))
                    || x.Latitude.ToString().Contains(filtro) || x.Longitude.ToString().Contains(filtro)).OrderBy(x => x.Nome).ToList();
            }

            ViewBag.Filtro = filtro;
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
                db.Dispose();

            base.Dispose(disposing);
        }
    }
}