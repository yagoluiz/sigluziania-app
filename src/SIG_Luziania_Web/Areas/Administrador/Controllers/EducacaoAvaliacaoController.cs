using AutoMapper;
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
    [RoutePrefix("educacao-vinculacao")]
    [Route("{action}")]
    public class EducacaoAvaliacaoController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public EducacaoAvaliacaoController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: educacao-avaliacao
        [Route("")]
        public ActionResult Index(string educacao)
        {
            if (educacao == string.Empty)
            {
                ModelState.AddModelError(string.Empty, "Selecione uma instituição.");
                ViewBag.Educacao = new SelectList(db.Educacao, "EducacaoId", "Nome");

                return View();
            }

            int educacaoId = educacao != null ? int.Parse(educacao) : 0;
            var educacaoAvaliacao = db.EducacaoAvaliacao.Include(x => x.Educacao).Include(x => x.Avaliacao);
            var ListEducacaoAvaliacaoVM = new List<EducacaoAvaliacaoViewModel>();

            foreach (var item in educacaoAvaliacao.Where(x => x.EducacaoId.Equals(educacaoId)).ToList())
            {
                var educacaoAvaliacaoVM = Mapper.Map<EducacaoAvaliacao, EducacaoAvaliacaoViewModel>(item);
                ListEducacaoAvaliacaoVM.Add(educacaoAvaliacaoVM);
            }

            ViewBag.Educacao = new SelectList(db.Educacao, "EducacaoId", "Nome");

            return View(ListEducacaoAvaliacaoVM);
        }

        // GET: educacao-vinculacao/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            ViewBag.AvaliacaoId = new SelectList(db.Avaliacao, "AvaliacaoId", "Nome");
            ViewBag.EducacaoId = new SelectList(db.Educacao, "EducacaoId", "Nome");

            return View();
        }

        // POST: educacao-vinculacao/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "EducacaoAvaliacaoId,EducacaoId,AvaliacaoId,Nota,Ano")] EducacaoAvaliacaoViewModel educacaoAvaliacaoVM)
        {
            if (ModelState.IsValid)
            {
                var educacaoAvaliacao = Mapper.Map<EducacaoAvaliacaoViewModel, EducacaoAvaliacao>(educacaoAvaliacaoVM);

                db.EducacaoAvaliacao.Add(educacaoAvaliacao);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.AvaliacaoId = new SelectList(db.Avaliacao, "AvaliacaoId", "Nome", educacaoAvaliacaoVM.AvaliacaoId);
            ViewBag.EducacaoId = new SelectList(db.Educacao, "EducacaoId", "Nome", educacaoAvaliacaoVM.EducacaoId);

            return View(educacaoAvaliacaoVM);
        }

        // GET: educacao-vinculacao/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            EducacaoAvaliacao educacaoAvaliacao = db.EducacaoAvaliacao.Find(id);

            if (educacaoAvaliacao == null)
                return HttpNotFound();

            var educacaoAvaliacaoVM = Mapper.Map<EducacaoAvaliacao, EducacaoAvaliacaoViewModel>(educacaoAvaliacao);

            ViewBag.AvaliacaoId = new SelectList(db.Avaliacao, "AvaliacaoId", "Nome", educacaoAvaliacao.AvaliacaoId);
            ViewBag.EducacaoId = new SelectList(db.Educacao, "EducacaoId", "Nome", educacaoAvaliacao.EducacaoId);

            return View(educacaoAvaliacaoVM);
        }

        // POST: educacao-vinculacao/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "EducacaoAvaliacaoId,EducacaoId,AvaliacaoId,Nota,Ano")] EducacaoAvaliacaoViewModel educacaoAvaliacaoVM)
        {
            if (ModelState.IsValid)
            {
                var educacaoAvaliacao = Mapper.Map<EducacaoAvaliacaoViewModel, EducacaoAvaliacao>(educacaoAvaliacaoVM);

                db.Entry(educacaoAvaliacao).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.AvaliacaoId = new SelectList(db.Avaliacao, "AvaliacaoId", "Nome", educacaoAvaliacaoVM.AvaliacaoId);
            ViewBag.EducacaoId = new SelectList(db.Educacao, "EducacaoId", "Nome", educacaoAvaliacaoVM.EducacaoId);

            return View(educacaoAvaliacaoVM);
        }

        // GET: educacao-vinculacao/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            EducacaoAvaliacao educacaoAvaliacao = db.EducacaoAvaliacao.Find(id);

            if (educacaoAvaliacao == null)
                return HttpNotFound();

            var educacaoAvaliacaoVM = Mapper.Map<EducacaoAvaliacao, EducacaoAvaliacaoViewModel>(educacaoAvaliacao);

            return View(educacaoAvaliacaoVM);
        }

        // POST: educacao-vinculacao/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            EducacaoAvaliacao educacaoAvaliacao = db.EducacaoAvaliacao.Find(id);

            db.EducacaoAvaliacao.Remove(educacaoAvaliacao);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar vinculação única
        public ActionResult VerificarVinculacao(int ano, int? educacaoAvaliacaoId, int educacaoId, int avaliacaoId)
        {
            bool vinculacao = educacaoAvaliacaoId != null ?
                db.EducacaoAvaliacao.Any(x => x.EducacaoAvaliacaoId != educacaoAvaliacaoId && x.EducacaoId == educacaoId
                && x.AvaliacaoId == avaliacaoId && x.Ano == ano)
                : db.EducacaoAvaliacao.Any(x => x.EducacaoId != educacaoId && x.AvaliacaoId == avaliacaoId && x.Ano == ano);

            return Json(!vinculacao, JsonRequestBehavior.AllowGet);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
                db.Dispose();

            base.Dispose(disposing);
        }
    }
}