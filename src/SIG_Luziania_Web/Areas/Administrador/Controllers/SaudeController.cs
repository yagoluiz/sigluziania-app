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
    [RoutePrefix("saude")]
    [Route("{action}")]
    public class SaudeController : Controller
    {
        private SigLuzianiaContexto db = null;

        public SaudeController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: saude
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListSaudeVM = new List<SaudeViewModel>();

            foreach (var item in db.Saude.Include(x => x.Cidade).Include(x => x.TipoSaude))
            {
                var saudeVM = Mapper.Map<Saude, SaudeViewModel>(item);
                ListSaudeVM.Add(saudeVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListSaudeVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListSaudeVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: saude/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome");
            ViewBag.TipoSaudeId = new SelectList(db.TipoSaude, "TipoSaudeId", "Nome");

            return View();
        }

        // POST: saude/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "SaudeId,CidadeId,TipoSaudeId,Nome,Endereco,Bairro,Cep,Telefone,Latitude,Longitude")] SaudeViewModel saudeVM)
        {
            if (ModelState.IsValid)
            {
                var saude = Mapper.Map<SaudeViewModel, Saude>(saudeVM);

                db.Saude.Add(saude);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", saudeVM.CidadeId);
            ViewBag.TipoSaudeId = new SelectList(db.TipoSaude, "TipoSaudeId", "Nome", saudeVM.TipoSaudeId);

            return View(saudeVM);
        }

        // GET: saude/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Saude saude = db.Saude.Find(id);

            if (saude == null)
                return HttpNotFound();

            var saudeVM = Mapper.Map<Saude, SaudeViewModel>(saude);

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", saudeVM.CidadeId);
            ViewBag.TipoSaudeId = new SelectList(db.TipoSaude, "TipoSaudeId", "Nome", saudeVM.TipoSaudeId);

            return View(saudeVM);
        }

        // POST: saude/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "SaudeId,CidadeId,TipoSaudeId,Nome,Endereco,Bairro,Cep,Telefone,Latitude,Longitude")] SaudeViewModel saudeVM)
        {
            if (ModelState.IsValid)
            {
                var saude = Mapper.Map<SaudeViewModel, Saude>(saudeVM);

                db.Entry(saude).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", saudeVM.CidadeId);
            ViewBag.TipoSaudeId = new SelectList(db.TipoSaude, "TipoSaudeId", "Nome", saudeVM.TipoSaudeId);

            return View(saudeVM);
        }

        // GET: saude/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Saude saude = db.Saude.Find(id);

            if (saude == null)
                return HttpNotFound();

            var saudeVM = Mapper.Map<Saude, SaudeViewModel>(saude);

            return View(saudeVM);
        }

        // POST: saude/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            Saude saude = db.Saude.Find(id);

            db.Saude.Remove(saude);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar lazer único
        public ActionResult VerificarSaude(string nome, int? saudeId)
        {
            bool saude = saudeId != null ? db.Saude.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.SaudeId != saudeId)
                : db.Saude.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!saude, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<SaudeViewModel> ListSaudeVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListSaudeVM = ListSaudeVM.Where(x => x.Cidade.Nome.ToUpper().Contains(filtro.ToUpper())
                    || x.TipoSaude.Nome.ToUpper().Contains(filtro.ToUpper()) || x.Nome.ToUpper().Contains(filtro.ToUpper())
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