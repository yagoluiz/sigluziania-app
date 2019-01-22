using AutoMapper;
using PagedList;
using SIG_Luziania_Web.Models;
using SIG_Luziania_Web.ViewModels;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;

namespace SIG_Luziania_Web.Controllers
{
    [RoutePrefix("educacao")]
    public class EducacaoController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public EducacaoController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: educacao/instituicoes
        [Route("instituicoes")]
        public ActionResult Instituicoes(string filtroAtual, string filtro, int? pagina)
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

        // GET: educacao/ideb
        [Route("ideb")]
        public ActionResult Ideb()
        {
            return View();
        }

        // GET: educacao/enem
        [Route("enem")]
        public ActionResult Enem()
        {
            return View();
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