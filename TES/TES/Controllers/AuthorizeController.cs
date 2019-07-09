using NHibernate.Criterion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TES.Core;
using TES.Domain;
using TES.Service;

namespace TES.Controllers
{
    public class AuthorizeController : BaseController
    {
        //
        // GET: /Authorize/
        public ActionResult Index(int roleID = 0, int topFunctionID = 0)
        {
            if (roleID == 0)
                return View();
            Role role = Container.Instance.Resolve<IRoleService>().Get(roleID);
            if (topFunctionID > 0)
            {
                IList<ICriterion> queryFunctionConditions = new List<ICriterion>();
                queryFunctionConditions.Add(Expression.Eq("Parent.ID", topFunctionID));
                ViewBag.FunctionList = Container.Instance.Resolve<ISystemFunctionService>().Find(queryFunctionConditions);
            }
            else
            {
                ViewBag.FunctionList = Container.Instance.Resolve<ISystemFunctionService>().GetAll();
            }
            IList<ICriterion> queryConditions = new List<ICriterion>();
            queryConditions.Add(Expression.IsNull("Parent"));
            ViewData["TopFunctions"] = Container.Instance.Resolve<ISystemFunctionService>().Find(queryConditions).OrderBy(m => m.Idx).ToList();
            return View(role);
        }
        //public ActionResult Index(DateTime? beginTime, DateTime? endTime, string userName = "")
        //{
        //    if (!beginTime.HasValue)
        //        beginTime = DateTime.Today.AddDays(-DateTime.Now.Day + 1);
        //    if (endTime.HasValue)
        //        endTime = DateTime.Today.AddDays(1);
        //    List<StatisticsAchievement> list = GetData(beginTime.Value, endTime.Value, userName);
        //    ViewBag.UserNameList = FormatUserNameForAutocomplete();
        //    if (Request.IsAjaxRequest())
        //        return PartialView("_List", list);
        //    return View(list);
        //}
        public string FormatUserNameForAutocomplete()
        {
            string userNameList = String.Empty;
            var users = Container.Instance.Resolve<IUserService>().GetAll();
            for (int i = 0; i < users.Count; i++)
            {
                if (i > 0) userNameList += ",";
                userNameList += "{id:" + (i + 1).ToString() + ",name:'" + users[i].UserName + "'}";
            }
            return "[" + userNameList + "]";
        }
        [HttpPost]
        public ActionResult AssignAuthorize(int roleID, string hdSelectedIds)
        {
            Container.Instance.Resolve<IRoleService>().AssignAuthorize(roleID, hdSelectedIds);
            return RedirectToAction("Index", "Role");
        }
	}
}