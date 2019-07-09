using NHibernate.Criterion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TES.Apps;
using TES.Core;
using TES.Domain;
using TES.Service;

namespace TES.Controllers
{
    public class ClassManagementController : BaseController
    {
        //
        // GET: /ClassManagement/
        public ActionResult Index(int pageIndex = 1)
        {
            int count = 0;
            IList<User> list = Container.Instance.Resolve<IUserService>().GetPaged(null, null, pageIndex, PagerHelper.PageSize, out count);
            PageList<User> pageList = list.ToPageList<User>(pageIndex, PagerHelper.PageSize, count);
            return View(pageList);
        }

        public ActionResult StudentManagement(int StudentID = 0, int topFunctionID = 0)
        {

            if (StudentID == 0)
                return View();
            Student student = Container.Instance.Resolve<IStudentService>().Get(StudentID);

            //if (topFunctionID > 0)
            //{
            //    IList<ICriterion> queryFunctionConditions = new List<ICriterion>();
            //    queryFunctionConditions.Add(Expression.Eq("Parent.ID", topFunctionID));
            //    ViewBag.FunctionList = Container.Instance.Resolve<ISystemFunctionService>().Find(queryFunctionConditions);
            //}
            //else
            //{
            //    ViewBag.FunctionList = Container.Instance.Resolve<ISystemFunctionService>().GetAll();
            //}
            //IList<ICriterion> queryConditions = new List<ICriterion>();
            //queryConditions.Add(Expression.IsNull("Parent"));
            //ViewData["TopFunctions"] = Container.Instance.Resolve<ISystemFunctionService>().Find(queryConditions).OrderBy(m => m.Idx).ToList();
            return View(student);
        }
        public void StduentClass(string a, string stduentID)
        {
            int id = int.Parse(stduentID);
            int class1 = int.Parse(a);
            Student student = Container.Instance.Resolve<IStudentService>().Get(id);
            student.Class = class1;
            Container.Instance.Resolve<IStudentService>().Update(student);

        }
	}
}