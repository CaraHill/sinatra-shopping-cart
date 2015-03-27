using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Personal_Shopping_Cart.Startup))]
namespace Personal_Shopping_Cart
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
