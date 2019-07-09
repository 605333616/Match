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
    public class CheckResultsController : BaseController
    {
        //
        // GET: /CheckResults/
        public ActionResult Index(int pageIndex = 1, string TeacherName = "")
        {
           

            IList<ICriterion> queryConditions = new List<ICriterion>();
            if (!string.IsNullOrEmpty(TeacherName))
            {
                IList<ICriterion> criterion = new List<ICriterion>();
                criterion.Add(Expression.Eq("TeacherName", TeacherName));
                Teacher teacher = Container.Instance.Resolve<ITeacherService>().Get(criterion);
                string teacherId = teacher.ID.ToString();
                queryConditions.Add(new LikeExpression("TeacherID", teacherId));

            }
            int count = 0;
            IList<Order> listOrder = new List<Order>(){
                new Order("ID",true)
            };
            IList<Evaluate> list = Container.Instance.Resolve<IEvaluateService>().GetPaged(queryConditions, listOrder, pageIndex, PagerHelper.PageSize, out count);
            PageList<Evaluate> pageList = list.ToPageList<Evaluate>(pageIndex, PagerHelper.PageSize, count);
            return View(pageList);
        }
	}
}