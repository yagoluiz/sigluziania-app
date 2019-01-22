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
    [RoutePrefix("saude-vinculacao")]
    [Route("{action}")]
    public class SaudeEspecialidadeController : Controller
    {
        private SigLuzianiaContexto db = null;

        public SaudeEspecialidadeController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: saude-vinculacao
        [Route("")]
        public ActionResult Index(string saude)
        {
            if (saude == string.Empty)
            {
                ModelState.AddModelError(string.Empty, "Selecione uma instituição de saúde.");
                ViewBag.Saude = new SelectList(db.Saude, "SaudeId", "Nome");

                return View();
            }

            int saudeId = saude != null ? int.Parse(saude) : 0;
            var saudeEspecialidade = db.SaudeEspecialidade.Include(x => x.Saude).Include(x => x.Especialidade);
            var ListSaudeEspecialidadeVM = new List<SaudeEspecialidadeViewModel>();

            foreach (var item in saudeEspecialidade.Where(x => x.SaudeId.Equals(saudeId)).ToList())
            {
                var saudeEspecialidadeVM = Mapper.Map<SaudeEspecialidade, SaudeEspecialidadeViewModel>(item);
                ListSaudeEspecialidadeVM.Add(saudeEspecialidadeVM);
            }

            ViewBag.Saude = new SelectList(db.Saude, "SaudeId", "Nome");

            return View(ListSaudeEspecialidadeVM);
        }

        // GET: saude-vinculacao/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            ViewBag.SaudeId = new SelectList(db.Saude, "SaudeId", "Nome");
            ViewBag.EspecialidadeId = new SelectList(db.Especialidade, "EspecialidadeId", "Nome");

            return View();
        }

        // POST: saude-vinculacao/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "SaudeEspecialidadeId,SaudeId,EspecialidadeId")] SaudeEspecialidadeViewModel saudeEspecialidadeVM)
        {
            if (ModelState.IsValid)
            {
                var saudeEspecialidade = Mapper.Map<SaudeEspecialidadeViewModel, SaudeEspecialidade>(saudeEspecialidadeVM);

                db.SaudeEspecialidade.Add(saudeEspecialidade);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.SaudeId = new SelectList(db.Saude, "SaudeId", "Nome", saudeEspecialidadeVM.SaudeId);
            ViewBag.EspecialidadeId = new SelectList(db.Especialidade, "EspecialidadeId", "Nome", saudeEspecialidadeVM.EspecialidadeId);

            return View(saudeEspecialidadeVM);
        }

        // GET: saude-vinculacao/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            SaudeEspecialidade saudeEspecialidade = db.SaudeEspecialidade.Find(id);

            if (saudeEspecialidade == null)
                return HttpNotFound();

            var saudeEspecialidadeVM = Mapper.Map<SaudeEspecialidade, SaudeEspecialidadeViewModel>(saudeEspecialidade);

            ViewBag.SaudeId = new SelectList(db.Saude, "SaudeId", "Nome", saudeEspecialidadeVM.SaudeId);
            ViewBag.EspecialidadeId = new SelectList(db.Especialidade, "EspecialidadeId", "Nome", saudeEspecialidadeVM.EspecialidadeId);

            return View(saudeEspecialidadeVM);
        }

        // POST: saude-vinculacao/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "SaudeEspecialidadeId,SaudeId,EspecialidadeId")] SaudeEspecialidadeViewModel saudeEspecialidadeVM)
        {
            if (ModelState.IsValid)
            {
                var saudeEspecialidade = Mapper.Map<SaudeEspecialidadeViewModel, SaudeEspecialidade>(saudeEspecialidadeVM);

                db.Entry(saudeEspecialidade).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.SaudeId = new SelectList(db.Saude, "SaudeId", "Nome", saudeEspecialidadeVM.SaudeId);
            ViewBag.EspecialidadeId = new SelectList(db.Especialidade, "EspecialidadeId", "Nome", saudeEspecialidadeVM.EspecialidadeId);

            return View(saudeEspecialidadeVM);
        }

        // GET: saude-vinculacao/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            SaudeEspecialidade saudeEspecialidade = db.SaudeEspecialidade.Find(id);

            if (saudeEspecialidade == null)
                return HttpNotFound();

            var saudeEspecialidadeVM = Mapper.Map<SaudeEspecialidade, SaudeEspecialidadeViewModel>(saudeEspecialidade);

            return View(saudeEspecialidadeVM);
        }

        // POST: saude-vinculacao/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            SaudeEspecialidade saudeEspecialidade = db.SaudeEspecialidade.Find(id);

            db.SaudeEspecialidade.Remove(saudeEspecialidade);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar vínculo de especialidade
        public ActionResult VerificarVinculo(int? saudeEspecialidadeId, int saudeId, int especialidadeId)
        {
            bool vinculo = saudeEspecialidadeId != null ? db.SaudeEspecialidade.Any(x => x.SaudeEspecialidadeId != saudeEspecialidadeId
                && x.SaudeId == saudeId && x.EspecialidadeId == especialidadeId)
                : db.SaudeEspecialidade.Any(x => x.SaudeId == saudeId && x.EspecialidadeId == especialidadeId);

            return Json(!vinculo, JsonRequestBehavior.AllowGet);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
                db.Dispose();

            base.Dispose(disposing);
        }
    }
}