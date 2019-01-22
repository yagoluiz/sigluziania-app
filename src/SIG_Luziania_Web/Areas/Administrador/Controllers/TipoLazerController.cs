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
    [RoutePrefix("lazer-tipo")]
    [Route("{action}")]
    public class TipoLazerController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public TipoLazerController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: lazer-tipo
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListTipoLazerVM = new List<TipoLazerViewModel>();

            foreach (var item in db.TipoLazer.ToList())
            {
                var tipoLazerVM = Mapper.Map<TipoLazer, TipoLazerViewModel>(item);
                ListTipoLazerVM.Add(tipoLazerVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListTipoLazerVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListTipoLazerVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: lazer-tipo/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            return View();
        }

        // POST: lazer-tipo/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "TipoLazerId,Nome,Descricao")] TipoLazerViewModel tipoLazerVM)
        {
            if (ModelState.IsValid)
            {
                var tipoLazer = Mapper.Map<TipoLazerViewModel, TipoLazer>(tipoLazerVM);

                db.TipoLazer.Add(tipoLazer);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(tipoLazerVM);
        }

        // GET: lazer-tipo/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            TipoLazer tipoLazer = db.TipoLazer.Find(id);

            if (tipoLazer == null)
                return HttpNotFound();

            var tipoLazerVM = Mapper.Map<TipoLazer, TipoLazerViewModel>(tipoLazer);

            return View(tipoLazerVM);
        }

        // POST: lazer-tipo/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "TipoLazerId,Nome,Descricao")] TipoLazerViewModel tipoLazerVM)
        {
            if (ModelState.IsValid)
            {
                var tipoLazer = Mapper.Map<TipoLazerViewModel, TipoLazer>(tipoLazerVM);

                db.Entry(tipoLazer).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(tipoLazerVM);
        }

        // GET: lazer-tipo/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            TipoLazer tipoLazer = db.TipoLazer.Find(id);

            if (tipoLazer == null)
                return HttpNotFound();

            var tipoLazerVM = Mapper.Map<TipoLazer, TipoLazerViewModel>(tipoLazer);

            return View(tipoLazerVM);
        }

        // POST: lazer-tipo/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            TipoLazer tipoLazer = db.TipoLazer.Find(id);

            db.TipoLazer.Remove(tipoLazer);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar tipo lazer único
        public ActionResult VerificarTipoLazer(string nome, int? tipoLazerId)
        {
            bool tipoLazer = tipoLazerId != null ? db.TipoLazer.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.TipoLazerId != tipoLazerId)
                : db.TipoLazer.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!tipoLazer, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<TipoLazerViewModel> ListTipoLazerVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListTipoLazerVM = ListTipoLazerVM.Where(x => x.Nome.ToUpper().Contains(filtro.ToUpper())
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