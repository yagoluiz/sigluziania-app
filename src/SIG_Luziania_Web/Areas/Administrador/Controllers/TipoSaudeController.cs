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
    [RoutePrefix("saude-tipo")]
    [Route("{action}")]
    public class TipoSaudeController : Controller
    {
        private SigLuzianiaContexto db = null;

        public TipoSaudeController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: saude-tipo
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListTipoSaudeVM = new List<TipoSaudeViewModel>();

            foreach (var item in db.TipoSaude.ToList())
            {
                var tipoSaudeVM = Mapper.Map<TipoSaude, TipoSaudeViewModel>(item);
                ListTipoSaudeVM.Add(tipoSaudeVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListTipoSaudeVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListTipoSaudeVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: saude-tipo/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            return View();
        }

        // POST: saude-tipo/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "TipoSaudeId,Nome,Descricao")] TipoSaudeViewModel tipoSaudeVM)
        {
            if (ModelState.IsValid)
            {
                var tipoSaude = Mapper.Map<TipoSaudeViewModel, TipoSaude>(tipoSaudeVM);

                db.TipoSaude.Add(tipoSaude);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(tipoSaudeVM);
        }

        // GET: saude-tipo/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            TipoSaude tipoSaude = db.TipoSaude.Find(id);

            if (tipoSaude == null)
                return HttpNotFound();

            var tipoSaudeVM = Mapper.Map<TipoSaude, TipoSaudeViewModel>(tipoSaude);

            return View(tipoSaudeVM);
        }

        // POST: saude-tipo/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "TipoSaudeId,Nome,Descricao")] TipoSaudeViewModel tipoSaudeVM)
        {
            if (ModelState.IsValid)
            {
                var tipoSaude = Mapper.Map<TipoSaudeViewModel, TipoSaude>(tipoSaudeVM);

                db.Entry(tipoSaude).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(tipoSaudeVM);
        }

        // GET: saude-tipo/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            TipoSaude tipoSaude = db.TipoSaude.Find(id);

            if (tipoSaude == null)
                return HttpNotFound();

            var tipoSaudeVM = Mapper.Map<TipoSaude, TipoSaudeViewModel>(tipoSaude);

            return View(tipoSaudeVM);
        }

        // POST: saude-tipo/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            TipoSaude tipoSaude = db.TipoSaude.Find(id);

            db.TipoSaude.Remove(tipoSaude);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar tipo saúde único
        public ActionResult VerificarTipoSaude(string nome, int? tipoSaudeId)
        {
            bool tipoSaude = tipoSaudeId != null ? db.TipoSaude.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.TipoSaudeId != tipoSaudeId)
                : db.TipoSaude.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!tipoSaude, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<TipoSaudeViewModel> ListTipoSaudeVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListTipoSaudeVM = ListTipoSaudeVM.Where(x => x.Nome.ToUpper().Contains(filtro.ToUpper())
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