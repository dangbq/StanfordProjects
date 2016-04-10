using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Stanford_WorkingwithRazor.Startup))]
namespace Stanford_WorkingwithRazor
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
