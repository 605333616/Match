using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Castle.ActiveRecord.Framework;
using Castle.ActiveRecord;
using TES.Core;
namespace TES
{
    public class MvcApplication : System.Web.HttpApplication
    {
        private Container container;
        protected void Application_Start()
        {
            IConfigurationSource source = System.Configuration.ConfigurationManager.GetSection("activerecord") as IConfigurationSource;
            ActiveRecordStarter.Initialize(typeof(TES.Domain.Student).Assembly, source);
            container = Container.Instance;
            AreaRegistration.RegisterAllAreas();
            RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            //AreaRegistration.RegisterAllAreas();
            //RouteConfig.RegisterRoutes(RouteTable.Routes);
        }
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
