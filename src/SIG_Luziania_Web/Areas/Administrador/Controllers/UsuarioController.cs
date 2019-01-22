using AutoMapper;
using PagedList;
using SIG_Luziania_Web.Areas.Administrador.ViewModels;
using SIG_Luziania_Web.Helpers;
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
    [RoutePrefix("usuario")]
    [Route("{action}")]
    public class UsuarioController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public UsuarioController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: usuario
        [Route("")]
        public ViewResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListUsuarioVM = new List<UsuarioViewModel>();

            foreach (var item in db.Usuario.Include(x => x.Perfil))
            {
                var usuarioVM = Mapper.Map<Usuario, UsuarioViewModel>(item);
                ListUsuarioVM.Add(usuarioVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListUsuarioVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListUsuarioVM.OrderBy(x => x.Login).ToPagedList(paginaAtual, paginacao));
        }

        // GET: usuario/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            ViewBag.PerfilId = new SelectList(db.Perfil, "PerfilId", "Nome");

            return View();
        }

        // POST: usuario/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "UsuarioId,PerfilId,Nome,Login,Senha,ConfirmarSenha,Area")]UsuarioViewModel usuarioVM)
        {
            if (ModelState.IsValid)
            {
                usuarioVM.Senha = Criptografia.HashPassword(usuarioVM.Senha);

                var usuario = Mapper.Map<UsuarioViewModel, Usuario>(usuarioVM);

                db.Usuario.Add(usuario);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.PerfilId = new SelectList(db.Perfil, "PerfilId", "Nome", usuarioVM.Perfil);

            return View(usuarioVM);
        }

        // GET: usuario/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Usuario usuario = db.Usuario.Find(id);

            if (usuario == null)
                return HttpNotFound();

            var usuarioVM = Mapper.Map<Usuario, UsuarioViewModel>(usuario);

            ViewBag.PerfilId = new SelectList(db.Perfil, "PerfilId", "Nome", usuarioVM.Perfil);

            return View(usuarioVM);
        }

        // POST: usuario/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "UsuarioId,PerfilId,Nome,Login,Senha,ConfirmarSenha,Area")]UsuarioViewModel usuarioVM)
        {
            if (ModelState.IsValid)
            {
                usuarioVM.Senha = Criptografia.HashPassword(usuarioVM.Senha);

                var usuario = Mapper.Map<UsuarioViewModel, Usuario>(usuarioVM);

                db.Entry(usuario).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.PerfilId = new SelectList(db.Perfil, "PerfilId", "Nome", usuarioVM.Perfil);

            return View(usuarioVM);
        }

        // GET: usuario/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Usuario usuario = db.Usuario.Find(id);

            if (usuario == null)
                return HttpNotFound();

            var usuarioVM = Mapper.Map<Usuario, UsuarioViewModel>(usuario);

            return View(usuarioVM);
        }

        // POST: usuario/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            Usuario usuario = db.Usuario.Find(id);

            db.Usuario.Remove(usuario);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar login único
        public ActionResult VerificarUsuario(string login, int? usuarioId)
        {
            bool usuario = usuarioId != null ? db.Usuario.Any(x => x.Login.ToUpper() == login.ToUpper() && x.UsuarioId != usuarioId)
                : db.Usuario.Any(x => x.Login.ToUpper() == login.ToUpper());

            return Json(!usuario, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<UsuarioViewModel> ListUsuarioVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListUsuarioVM = ListUsuarioVM.Where(x => x.Login.ToUpper().Contains(filtro.ToUpper())
                    || x.Perfil.Nome.ToUpper().Contains(filtro.ToUpper()) || x.Nome.ToUpper().Contains(filtro.ToUpper())
                   || x.Area.ToUpper().Contains(filtro.ToUpper())).OrderBy(x => x.Login).ToList();
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