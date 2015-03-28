using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Shopping_Cart_Personal.Startup))]
namespace Shopping_Cart_Personal
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
