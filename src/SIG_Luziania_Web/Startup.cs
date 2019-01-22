using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(SIG_Luziania_Web.Startup))]

namespace SIG_Luziania_Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuthentication(app);
        }
    }
}
