using Castle.ActiveRecord;
using Castle.ActiveRecord.Queries;
using NHibernate.Criterion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using TES.Apps;
using TES.Core;
using TES.Domain;
using TES.Service;

namespace TES.Controllers
{
    public class EvaluationController : BaseController
    {
        //
        // GET: /Teacher/
        public ActionResult Student(int pageIndex = 1)
        {
            int UserId = AppHelper.LoginedUser.ID;
            Student student = Container.Instance.Resolve<IStudentService>().Get(UserId);
            ViewData["Class"] =student.Class ;

            //IList<ICriterion> criterion = new List<ICriterion>();
            //criterion.Add(Expression.Eq("ClassNumber", student.Class));
            //IList<Class> Class = Container.Instance.Resolve<IClassService>().GetAll(criterion);
            //foreach (Class item in Class)
            //{

            //}
            
            int count = 0;
            IList<Teacher> list = Container.Instance.Resolve<ITeacherService>().GetPaged(null, null, pageIndex, PagerHelper.PageSize, out count);
            PageList<Teacher> pageList = list.ToPageList<Teacher>(pageIndex, PagerHelper.PageSize, count);
            return View(pageList);
        }

        public ActionResult Teacher(int pageIndex = 1)
        {
            int UserId = AppHelper.LoginedUser.ID;
            Teacher teacher = Container.Instance.Resolve<ITeacherService>().Get(UserId);
            ViewData["College"] = teacher.College;
            ViewData["TeacherID"] = teacher.ID;

            int count = 0;
            IList<Teacher> list = Container.Instance.Resolve<ITeacherService>().GetPaged(null, null, pageIndex, PagerHelper.PageSize, out count);
            PageList<Teacher> pageList = list.ToPageList<Teacher>(pageIndex, PagerHelper.PageSize, count);
            return View(pageList);
        }
        [HttpGet]
        public ActionResult StudentQuestion(int pageIndex = 1)
        {
            

            int count = 0;
            IList<Question> list = Container.Instance.Resolve<IQuestionService>().GetPaged(null, null, pageIndex, PagerHelper.PageSize, out count);
            PageList<Question> pageList = list.ToPageList<Question>(pageIndex, PagerHelper.PageSize, count);


            return View(pageList);
        }
        [HttpGet]
        public ActionResult TeacherQuestion(int pageIndex = 1)
        {
            

            int count = 0;
            IList<Question> list = Container.Instance.Resolve<IQuestionService>().GetPaged(null, null, pageIndex, PagerHelper.PageSize, out count);
            PageList<Question> pageList = list.ToPageList<Question>(pageIndex, PagerHelper.PageSize, count);


            return View(pageList);
        }

        [HttpPost]
        public void StudentQuestion(string ID,string sum, Evaluate evaluate)
        {
            if(ID!=null)
            {
            int id = int.Parse(ID);
            Teacher teacher = Container.Instance.Resolve<ITeacherService>().Get(id);
            AppHelper.GetTeacher = teacher;
            }
            if (sum != null)
            {
                int UserID = AppHelper.LoginedUser.ID;
                int TeacherID = AppHelper.GetTeacher.ID;
                evaluate.UserID = AppHelper.LoginedUser;
                evaluate.TeacherID = AppHelper.GetTeacher;
                evaluate.Goal = int.Parse(sum);
                evaluate.Evaluation = "";
                Container.Instance.Resolve<IEvaluateService>().Create(evaluate);
            }            
        }
        //public void StudentQuestion(string ID)
        //{
        //    int id = int.Parse(ID);
        //    Teacher teacher = Container.Instance.Resolve<ITeacherService>().Get(id);
        //    AppHelper.GetTeacher = teacher;

        //}

        [HttpPost]
        public void TeacherQuestion(string ID)
        {
            int id = int.Parse(ID);
            Teacher teacher = Container.Instance.Resolve<ITeacherService>().Get(id);
            AppHelper.GetTeacher = teacher;
        }
        //[HttpPost]
        //public void ToAdd(string sum, Evaluate evaluate)
        //{
        //    int UserID=AppHelper.LoginedUser.ID;
        //    int TeacherID = AppHelper.GetTeacher.ID;
        //    evaluate.UserID = AppHelper.LoginedUser;
        //    evaluate.TeacherID = AppHelper.GetTeacher;
        //    evaluate.Goal = int.Parse(sum);
        //    evaluate.Evaluation = "";
        //    Container.Instance.Resolve<IEvaluateService>().Create(evaluate);

        //}


	}
}