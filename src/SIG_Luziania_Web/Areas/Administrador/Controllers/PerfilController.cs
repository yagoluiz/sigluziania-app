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
    [RoutePrefix("perfil")]
    [Route("{action}")]
    public class PerfilController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public PerfilController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: perfil
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListPerfilVM = new List<PerfilViewModel>();

            foreach (var item in db.Perfil.ToList())
            {
                var perfilVM = Mapper.Map<Perfil, PerfilViewModel>(item);
                ListPerfilVM.Add(perfilVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListPerfilVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListPerfilVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: perfil/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            return View();
        }

        // POST: perfil/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "PerfilId,Nome,Descricao")] PerfilViewModel perfilVM)
        {
            if (ModelState.IsValid)
            {
                var perfil = Mapper.Map<PerfilViewModel, Perfil>(perfilVM);

                db.Perfil.Add(perfil);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(perfilVM);
        }

        // GET: perfil/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Perfil perfil = db.Perfil.Find(id);

            if (perfil == null)
                return HttpNotFound();

            var perfilVM = Mapper.Map<Perfil, PerfilViewModel>(perfil);

            return View(perfilVM);
        }

        // POST: perfil/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "PerfilId,Nome,Descricao")] PerfilViewModel perfilVM)
        {
            if (ModelState.IsValid)
            {
                var perfil = Mapper.Map<PerfilViewModel, Perfil>(perfilVM);

                db.Entry(perfil).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(perfilVM);
        }

        // GET: perfil/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Perfil perfil = db.Perfil.Find(id);

            if (perfil == null)
                return HttpNotFound();

            var perfilVM = Mapper.Map<Perfil, PerfilViewModel>(perfil);

            return View(perfilVM);
        }

        // POST: perfil/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            Perfil perfil = db.Perfil.Find(id);

            db.Perfil.Remove(perfil);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar perfil único
        public ActionResult VerificarPerfil(string nome, int? perfilId)
        {
            bool perfil = perfilId != null ? db.Perfil.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.PerfilId != perfilId)
                : db.Perfil.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!perfil, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<PerfilViewModel> ListPerfilVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListPerfilVM = ListPerfilVM.Where(x => x.Nome.ToUpper().Contains(filtro.ToUpper())
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