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
    [RoutePrefix("educacao-avaliacao")]
    [Route("{action}")]
    public class AvaliacaoController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public AvaliacaoController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: educacao/avaliacao
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListAvaliacaoVM = new List<AvaliacaoViewModel>();

            foreach (var item in db.Avaliacao.ToList())
            {
                var avaliacaoVM = Mapper.Map<Avaliacao, AvaliacaoViewModel>(item);
                ListAvaliacaoVM.Add(avaliacaoVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListAvaliacaoVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListAvaliacaoVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: educacao-avaliacao/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            return View();
        }

        // POST: educacao-avaliacao/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "AvaliacaoId,Nome,Descricao")] AvaliacaoViewModel avaliacaoVM)
        {
            if (ModelState.IsValid)
            {
                var avaliacao = Mapper.Map<AvaliacaoViewModel, Avaliacao>(avaliacaoVM);

                db.Avaliacao.Add(avaliacao);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(avaliacaoVM);
        }

        // GET: educacao-avaliacao/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Avaliacao avaliacao = db.Avaliacao.Find(id);

            if (avaliacao == null)
                return HttpNotFound();

            var avaliacaoVM = Mapper.Map<Avaliacao, AvaliacaoViewModel>(avaliacao);

            return View(avaliacaoVM);
        }

        // POST: educacao-avaliacao/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "AvaliacaoId,Nome,Descricao")] AvaliacaoViewModel avaliacaoVM)
        {
            if (ModelState.IsValid)
            {
                var avaliacao = Mapper.Map<AvaliacaoViewModel, Avaliacao>(avaliacaoVM);

                db.Entry(avaliacao).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(avaliacaoVM);
        }

        // GET: educacao-avaliacao/excluir/5
        [Route("editar/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Avaliacao avaliacao = db.Avaliacao.Find(id);

            if (avaliacao == null)
                return HttpNotFound();

            var avaliacaoVM = Mapper.Map<Avaliacao, AvaliacaoViewModel>(avaliacao);

            return View(avaliacaoVM);
        }

        // POST: educacao-avaliacao/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            Avaliacao avaliacao = db.Avaliacao.Find(id);

            db.Avaliacao.Remove(avaliacao);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar avaliação única
        public ActionResult VerificarAvaliacao(string nome, int? avaliacaoId)
        {
            bool avaliacao = avaliacaoId != null ? db.Avaliacao.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.AvaliacaoId != avaliacaoId)
                : db.Avaliacao.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!avaliacao, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<AvaliacaoViewModel> ListAvaliacaoVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListAvaliacaoVM = ListAvaliacaoVM.Where(x => x.Nome.ToUpper().Contains(filtro.ToUpper())
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