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
    [RoutePrefix("seguranca-tipo")]
    [Route("{action}")]
    public class TipoSegurancaController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public TipoSegurancaController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: seguranca-tipo
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListTipoSegurancaVM = new List<TipoSegurancaViewModel>();

            foreach (var item in db.TipoSeguranca.ToList())
            {
                var tipoSegurancaVM = Mapper.Map<TipoSeguranca, TipoSegurancaViewModel>(item);
                ListTipoSegurancaVM.Add(tipoSegurancaVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListTipoSegurancaVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListTipoSegurancaVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: seguranca-tipo/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            return View();
        }

        // POST: seguranca-tipo/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "TipoSegurancaId,Nome,Descricao")] TipoSegurancaViewModel tipoSegurancaVM)
        {
            if (ModelState.IsValid)
            {
                var tipoSeguranca = Mapper.Map<TipoSegurancaViewModel, TipoSeguranca>(tipoSegurancaVM);

                db.TipoSeguranca.Add(tipoSeguranca);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(tipoSegurancaVM);
        }

        // GET: seguranca-tipo/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            TipoSeguranca tipoSeguranca = db.TipoSeguranca.Find(id);

            if (tipoSeguranca == null)
                return HttpNotFound();

            var tipoSegurancaVM = Mapper.Map<TipoSeguranca, TipoSegurancaViewModel>(tipoSeguranca);

            return View(tipoSegurancaVM);
        }

        // POST: seguranca-tipo/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "TipoSegurancaId,Nome,Descricao")] TipoSegurancaViewModel tipoSegurancaVM)
        {
            if (ModelState.IsValid)
            {
                var tipoSeguranca = Mapper.Map<TipoSegurancaViewModel, TipoSeguranca>(tipoSegurancaVM);

                db.Entry(tipoSeguranca).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(tipoSegurancaVM);
        }

        // GET: seguranca-tipo/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            TipoSeguranca tipoSeguranca = db.TipoSeguranca.Find(id);

            if (tipoSeguranca == null)
                return HttpNotFound();

            var tipoSegurancaVM = Mapper.Map<TipoSeguranca, TipoSegurancaViewModel>(tipoSeguranca);

            return View(tipoSegurancaVM);
        }

        // POST: seguranca-tipo/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            TipoSeguranca tipoSeguranca = db.TipoSeguranca.Find(id);

            db.TipoSeguranca.Remove(tipoSeguranca);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar tipo seguranca único
        public ActionResult VerificarTipoSeguranca(string nome, int? tipoSegurancaId)
        {
            bool tipoSeguranca = tipoSegurancaId != null ? db.TipoSeguranca.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.TipoSegurancaId != tipoSegurancaId)
                : db.TipoSeguranca.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!tipoSeguranca, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<TipoSegurancaViewModel> ListTipoSegurancaVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListTipoSegurancaVM = ListTipoSegurancaVM.Where(x => x.Nome.ToUpper().Contains(filtro.ToUpper())
                    || x.Descricao.ToUpper().Contains(filtro.ToUpper())).OrderBy(x => x.Nome).ToList();
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