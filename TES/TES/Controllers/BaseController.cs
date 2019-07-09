using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TES.Apps;


namespace TES.Controllers
{
    public class BaseController : Controller
    {       
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            GetCurrentUserPrivilege();
            base.OnActionExecuting(filterContext);
        }
        //
        // GET: /Base/
        public void GetCurrentUserPrivilege()
        {
            ViewBag.PrivilegeList = AppHelper.Privileges;
        }
        private bool IsAuthenticated(string controllerName, string actionName)
        {
            if (AppHelper.Privileges == null)
            {
                return false;
            }
            
            return true;
        }
        private void Redirect(ActionExecutingContext filterContext)
        {
            filterContext.HttpContext.Response.Redirect("~/User/Login?ReturnUrl=" + Server.UrlEncode(Request.Url.OriginalString), true);
        }
    }
}