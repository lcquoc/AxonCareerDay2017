using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PersonalFinanceManagement.Startup))]
namespace PersonalFinanceManagement
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
