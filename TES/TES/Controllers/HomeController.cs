using Castle.ActiveRecord;
using Castle.ActiveRecord.Queries;
using NHibernate;
using NHibernate.Mapping;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using TES.Apps;
using TES.Core;
using TES.Domain;
using TES.Service;

namespace TES.Controllers
{
    public class HomeController : BaseController
    {
        //
        // GET: /Home/
        public ActionResult Index()
        {
            string UserName = AppHelper.LoginedUser.UserName;
            ViewData["UserName"] = UserName;
            return View();
        }      
	}
}