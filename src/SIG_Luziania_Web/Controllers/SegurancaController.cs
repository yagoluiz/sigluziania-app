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
    [RoutePrefix("seguranca")]
    public class SegurancaController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public SegurancaController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: seguranca/localidades
        [Route("localidades")]
        public ActionResult Localidades(string filtroAtual, string filtro, int? pagina)
        {
            var ListSegurancaVM = new List<SegurancaViewModel>();

            foreach (var item in db.Seguranca.Include(s => s.Cidade).Include(s => s.TipoSeguranca))
            {
                var segurancaVM = Mapper.Map<Seguranca, SegurancaViewModel>(item);
                ListSegurancaVM.Add(segurancaVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListSegurancaVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListSegurancaVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<SegurancaViewModel> ListSegurancaVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListSegurancaVM = ListSegurancaVM.Where(x => x.Cidade.Nome.ToUpper().Contains(filtro.ToUpper())
                    || x.TipoSeguranca.Nome.ToUpper().Contains(filtro.ToUpper()) || x.Nome.ToUpper().Contains(filtro.ToUpper())
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