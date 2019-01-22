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
    [RoutePrefix("saude-especialidade")]
    [Route("{action}")]
    public class EspecialidadeController : Controller
    {
        private SigLuzianiaContexto db = null;

        public EspecialidadeController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: saude-especialidade
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListEspecialidadeVM = new List<EspecialidadeViewModel>();

            foreach (var item in db.Especialidade.ToList())
            {
                var especialidadeVM = Mapper.Map<Especialidade, EspecialidadeViewModel>(item);
                ListEspecialidadeVM.Add(especialidadeVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListEspecialidadeVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListEspecialidadeVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: saude-especialidade/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            return View();
        }

        // POST: saude-especialidade/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "EspecialidadeId,Nome,Descricao")] EspecialidadeViewModel especialidadeVM)
        {
            if (ModelState.IsValid)
            {
                var especialidade = Mapper.Map<EspecialidadeViewModel, Especialidade>(especialidadeVM);

                db.Especialidade.Add(especialidade);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(especialidadeVM);
        }

        // GET: saude-especialidade/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Especialidade especialidade = db.Especialidade.Find(id);

            if (especialidade == null)
                return HttpNotFound();

            var especialidadeVM = Mapper.Map<Especialidade, EspecialidadeViewModel>(especialidade);

            return View(especialidadeVM);
        }

        // POST: saude-especialidade/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "EspecialidadeId,Nome,Descricao")] EspecialidadeViewModel especialidadeVM)
        {
            if (ModelState.IsValid)
            {
                var especialidade = Mapper.Map<EspecialidadeViewModel, Especialidade>(especialidadeVM);

                db.Entry(especialidade).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(especialidadeVM);
        }

        // GET: saude-especialidade/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Especialidade especialidade = db.Especialidade.Find(id);

            if (especialidade == null)
                return HttpNotFound();

            var especialidadeVM = Mapper.Map<Especialidade, EspecialidadeViewModel>(especialidade);

            return View(especialidadeVM);
        }

        // POST: saude-especialidade/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            Especialidade especialidade = db.Especialidade.Find(id);

            db.Especialidade.Remove(especialidade);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar especialidade única
        public ActionResult VerificarEspecialidade(string nome, int? especialidadeId)
        {
            bool especialidade = especialidadeId != null ? db.Especialidade.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.EspecialidadeId != especialidadeId)
                : db.Especialidade.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!especialidade, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<EspecialidadeViewModel> ListEspecialidadeVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListEspecialidadeVM = ListEspecialidadeVM.Where(x => x.Nome.ToUpper().Contains(filtro.ToUpper())
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