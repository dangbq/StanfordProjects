using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Working_with_ASP_NET_MVC.Startup))]
namespace Working_with_ASP_NET_MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
