using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using SIG_Luziania_Web.Helpers;
using SIG_Luziania_Web.Models;
using SIG_Luziania_Web.ViewModels;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;

namespace SIG_Luziania_Web.Controllers
{
    [Authorize]
    [RoutePrefix("autenticacao")]
    public class AutenticacaoController : Controller
    {
        private readonly SigLuzianiaContexto db = null;

        public AutenticacaoController()
        {
            this.db = new SigLuzianiaContexto();
        }

        IAuthenticationManager Authentication
        {
            get { return HttpContext.GetOwinContext().Authentication; }
        }

        // GET: autenticacao/login
        [Route("login")]
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;

            return View();
        }

        // POST: autenticacao/login
        [Route("login")]
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginViewModel loginVM, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                var usuario = db.Usuario.FirstOrDefault(x => x.Login == loginVM.Login);
                bool isHashUsuario = usuario != null ? Criptografia.VerifyHashedPassword(usuario.Senha, loginVM.Senha) : false;

                if (usuario != null && isHashUsuario)
                {
                    var identity = new ClaimsIdentity(new[] {
                            new Claim(ClaimTypes.Name, loginVM.Login),
                        },
                        DefaultAuthenticationTypes.ApplicationCookie,
                        ClaimTypes.Name, ClaimTypes.Role);

                    const string IDENTITY_PROVIDER = "http://schemas.microsoft.com/accesscontrolservice/2010/07/claims/identityprovider";

                    identity.AddClaim(new Claim(IDENTITY_PROVIDER, User.Identity.AuthenticationType));
                    identity.AddClaim(new Claim(ClaimTypes.NameIdentifier, identity.Name));

                    Authentication.SignIn(new AuthenticationProperties
                    {
                        IsPersistent = loginVM.Lembrar
                    }, identity);

                    return RedirectToLocal(returnUrl);
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Usuário e senha não conferem!");

                    return View("Login", loginVM);
                }
            }

            return View("Login", loginVM);
        }

        [Route("logoff")]
        public ActionResult Logoff()
        {
            Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);

            return RedirectToAction("Index", "Home", new { area = "" });
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
                return Redirect(returnUrl);

            return RedirectToAction("Index", "Usuario", new { area = "Administrador" });
        }
    }
}