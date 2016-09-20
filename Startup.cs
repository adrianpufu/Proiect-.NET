using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(pentruex1.Startup))]
namespace pentruex1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
