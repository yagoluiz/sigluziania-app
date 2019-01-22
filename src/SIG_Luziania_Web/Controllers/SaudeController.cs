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
    [RoutePrefix("saude")]
    public class SaudeController : Controller
    {
        private SigLuzianiaContexto db = null;

        public SaudeController()
        {
            this.db = new SigLuzianiaContexto();
        }

        // GET: saude/localidades
        [Route("localidades")]
        public ActionResult Localidades(string filtroAtual, string filtro, int? pagina)
        {
            var ListSaudeVM = new List<SaudeViewModel>();

            foreach (var item in db.Saude.Include(x => x.Cidade).Include(x => x.TipoSaude))
            {
                var saudeVM = Mapper.Map<Saude, SaudeViewModel>(item);
                ListSaudeVM.Add(saudeVM);
            }

            this.Search(filtroAtual, filtro, ref pagina, ref ListSaudeVM);

            int paginacao = 5;
            int paginaAtual = (pagina ?? 1);

            return View(ListSaudeVM.OrderBy(x => x.Nome).ToPagedList(paginaAtual, paginacao));
        }

        // GET: saude/especialidades
        [Route("especialidades")]
        public ActionResult Especialidades(string saude)
        {
            if (saude == string.Empty)
            {
                ModelState.AddModelError(string.Empty, "Selecione uma especialidade.");
                ViewBag.Saude = new SelectList(db.Saude, "SaudeId", "Nome");

                return View();
            }

            int saudeId = saude != null ? int.Parse(saude) : 0;
            var saudeEspecialidade = db.SaudeEspecialidade.Include(x => x.Saude).Include(x => x.Especialidade);
            var ListEspecialidadeVM = new List<EspecialidadeViewModel>();

            foreach (var item in saudeEspecialidade.Where(x => x.SaudeId.Equals(saudeId)).ToList())
            {
                var saudeEspecialidadeVM = Mapper.Map<SaudeEspecialidade, EspecialidadeViewModel>(item);
                ListEspecialidadeVM.Add(saudeEspecialidadeVM);
            }

            ViewBag.Saude = new SelectList(db.Saude, "SaudeId", "Nome");

            return View(ListEspecialidadeVM);
        }

        private void Search(string filtroAtual, string filtro, ref int? pagina, ref List<SaudeViewModel> ListSaudeVM)
        {
            if (filtro != null)
                pagina = 1;
            else
                filtro = filtroAtual;

            if (!string.IsNullOrEmpty(filtro))
            {
                ListSaudeVM = ListSaudeVM.Where(x => x.Cidade.Nome.ToUpper().Contains(filtro.ToUpper())
                    || x.TipoSaude.Nome.ToUpper().Contains(filtro.ToUpper()) || x.Nome.ToUpper().Contains(filtro.ToUpper())
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