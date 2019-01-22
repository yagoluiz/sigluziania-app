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
    [RoutePrefix("lazer")]
    public class LazerController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public LazerController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: lazar/localidades
        [Route("localidades")]
        public ActionResult Localidades(string filtroAtual, string filtro, int? pagina)
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