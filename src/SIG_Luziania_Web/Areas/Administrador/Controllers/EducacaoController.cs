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
    [RoutePrefix("educacao")]
    [Route("{action}")]
    public class EducacaoController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public EducacaoController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: educacao
        [Route("")]
        public ActionResult Index(string filtroAtual, string filtro, int? pagina)
        {
            var ListEducacaoVM = new List<EducacaoViewModel>();

            foreach (var item in db.Educacao.Include(x => x.Cidade))
            {
                var educacaoVM = Mapper.Map<Educacao, EducacaoViewModel>(item);
                ListEducacaoVM.Add(educacaoVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListEducacaoVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListEducacaoVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: educacao/adicionar
        [Route("adicionar")]
        public ActionResult Adicionar()
        {
            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome");

            return View();
        }

        // POST: educacao/adicionar
        [Route("adicionar")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Adicionar([Bind(Include = "EducacaoId,CidadeId,MecId,Nome,Endereco,Bairro,Cep,Telefone,Gestor,Zona,DependenciaAdministrativa,Latitude,Longitude")] EducacaoViewModel educacaoVM)
        {
            if (ModelState.IsValid)
            {
                var educacao = Mapper.Map<EducacaoViewModel, Educacao>(educacaoVM);

                db.Educacao.Add(educacao);
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", educacaoVM.CidadeId);

            return View(educacaoVM);
        }

        // GET: educacao/editar/5
        [Route("editar/{id}")]
        public ActionResult Editar(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Educacao educacao = db.Educacao.Find(id);

            if (educacao == null)
                return HttpNotFound();

            var educacaoVM = Mapper.Map<Educacao, EducacaoViewModel>(educacao);

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", educacaoVM.CidadeId);

            return View(educacaoVM);
        }

        // POST: educacao/editar/5
        [Route("editar/{id}")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Editar([Bind(Include = "EducacaoId,CidadeId,MecId,Nome,Endereco,Bairro,Cep,Telefone,Gestor,Zona,DependenciaAdministrativa,Latitude,Longitude")] EducacaoViewModel educacaoVM)
        {
            if (ModelState.IsValid)
            {
                var educacao = Mapper.Map<EducacaoViewModel, Educacao>(educacaoVM);

                db.Entry(educacao).State = EntityState.Modified;
                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.CidadeId = new SelectList(db.Cidade, "CidadeId", "Nome", educacaoVM.CidadeId);

            return View(educacaoVM);
        }

        // GET: educacao/excluir/5
        [Route("excluir/{id}")]
        public ActionResult Excluir(int? id)
        {
            if (id == null)
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            Educacao educacao = db.Educacao.Find(id);

            if (educacao == null)
                return HttpNotFound();

            var educacaoVM = Mapper.Map<Educacao, EducacaoViewModel>(educacao);

            return View(educacaoVM);
        }

        // POST: educacao/excluir/5
        [Route("excluir/{id}")]
        [HttpPost, ActionName("Excluir")]
        [ValidateAntiForgeryToken]
        public ActionResult Excluir(int id)
        {
            Educacao educacao = db.Educacao.Find(id);

            db.Educacao.Remove(educacao);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        // Validar educação único
        public ActionResult VerificarEducacao(string nome, int? educacaoId)
        {
            bool educacao = educacaoId != null ? db.Educacao.Any(x => x.Nome.ToUpper() == nome.ToUpper() && x.EducacaoId != educacaoId)
                : db.Educacao.Any(x => x.Nome.ToUpper() == nome.ToUpper());

            return Json(!educacao, JsonRequestBehavior.AllowGet);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<EducacaoViewModel> ListEducacaoVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListEducacaoVM = ListEducacaoVM.Where(x => x.Cidade.Nome.ToUpper().Contains(filtro.ToUpper())
                    || (x.MecId != null && x.MecId.ToString().Contains(filtro)) || x.Nome.ToUpper().Contains(filtro.ToUpper())
                    || x.Endereco.ToUpper().Contains(filtro.ToUpper()) || x.Bairro.ToUpper().Contains(filtro.ToUpper())
                    || (x.Cep != null && x.Cep.ToUpper().Contains(filtro.ToUpper())) || (x.Telefone != null && x.Telefone.ToUpper().Contains(filtro.ToUpper()))
                    || (x.Gestor != null && x.Gestor.ToUpper().Contains(filtro.ToUpper())) || x.Zona.ToString().ToUpper().Contains(filtro.ToUpper())
                    || x.DependenciaAdministrativa.ToString().ToUpper().Contains(filtro.ToUpper()) || x.Latitude.ToString().Contains(filtro)
                    || x.Longitude.ToString().Contains(filtro)).OrderBy(x => x.Nome).ToList();
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