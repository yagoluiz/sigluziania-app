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
    [RoutePrefix("lazer")]
    [Route("{action}")]
    public class LazerController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public LazerController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: lazer
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListLazerVM = new List<LazerViewModel>();

            foreach (var item in db.Lazer.Include(x => x.Cidade).Include(x => x.TipoLazer))
            {
                var lazerVM = Mapper.Map<Lazer, LazerViewModel>(item);
                ListLazerVM.Add(lazerVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListLazerVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListLazerVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: lazer/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome");
            ViewBag.TipoLazerId = new SelectList(db.TipoLazer, "TipoLazerId", "Nome");

            return View();
        }

        // POST: lazer/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "LazerId,CidadeId,TipoLazerId,Nome,Endereco,Bairro,Cep,Telefone,Latitude,Longitude")] LazerViewModel lazerVM)
        {
            if (ModelState.IsValid)
            {
                var lazer = Mapper.Map<LazerViewModel, Lazer>(lazerVM);

                db.Lazer.Add(lazer);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", lazerVM.Cidade);
            ViewBag.TipoLazerId = new SelectList(db.TipoLazer, "TipoLazerId", "Nome", lazerVM.TipoLazer);

            return View(lazerVM);
        }

        // GET: lazer/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Lazer lazer = db.Lazer.Find(id);

            if (lazer == null)
                return HttpNotFound();

            var lazerVM = Mapper.Map<Lazer, LazerViewModel>(lazer);

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", lazerVM.Cidade);
            ViewBag.TipoLazerId = new SelectList(db.TipoLazer, "TipoLazerId", "Nome", lazerVM.TipoLazer);

            return View(lazerVM);
        }

        // POST: lazer/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "LazerId,CidadeId,TipoLazerId,Nome,Endereco,Bairro,Cep,Telefone,Latitude,Longitude")] LazerViewModel lazerVM)
        {
            if (ModelState.IsValid)
            {
                var lazer = Mapper.Map<LazerViewModel, Lazer>(lazerVM);

                db.Entry(lazer).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", lazerVM.Cidade);
            ViewBag.TipoLazerId = new SelectList(db.TipoLazer, "TipoLazerId", "Nome", lazerVM.TipoLazer);

            return View(lazerVM);
        }

        // GET: lazer/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Lazer lazer = db.Lazer.Find(id);

            if (lazer == null)
                return HttpNotFound();

            var lazerVM = Mapper.Map<Lazer, LazerViewModel>(lazer);

            return View(lazerVM);
        }

        // POST: lazer/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            Lazer lazer = db.Lazer.Find(id);

            db.Lazer.Remove(lazer);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar lazer único
        public ActionResult VerificarLazer(string nome, int? lazerId)
        {
            bool lazer = lazerId != null ? db.Lazer.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.LazerId != lazerId)
                : db.Lazer.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!lazer, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<LazerViewModel> ListLazerVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListLazerVM = ListLazerVM.Where(x => x.Cidade.Nome.ToUpper().Contains(filtro.ToUpper())
                    || x.TipoLazer.Nome.ToUpper().Contains(filtro.ToUpper()) || x.Nome.ToUpper().Contains(filtro.ToUpper())
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