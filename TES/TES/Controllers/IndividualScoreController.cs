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
    public class IndividualScoreController : BaseController
    {
        //
        // GET: /IndividualScore/
        public ActionResult Index(int pageIndex = 1)
        {
            IList<Evaluate> list = Container.Instance.Resolve<IEvaluateService>().GetAll();
            Teacher teacher = Container.Instance.Resolve<ITeacherService>().Get(AppHelper.LoginedUser.ID);
            int studenta = 0;
            int studentnum = 0;
            int studentx = 0;

            int teachera = 0;
            int teachernum = 0;
            int teacherx = 0;

            int leadershipa = 0;
            int leadershipnum = 0;
            int leadershipx = 0;
            
            foreach (Evaluate inx in list)
            {
                IList<ICriterion> criterion = new List<ICriterion>();
                criterion.Add(Expression.Eq("ID", inx.UserID.ID));
                Manager.ManagerBase<Student> manager = new Manager.ManagerBase<Student>();
                Student student = manager.Get(criterion);

                criterion.Add(Expression.Eq("ID", inx.UserID.ID));
                Manager.ManagerBase<Teacher> manager1 = new Manager.ManagerBase<Teacher>();
                Teacher teacher1 = manager1.Get(criterion);

                if (inx.TeacherID.ID == AppHelper.LoginedUser.ID&&student!=null)
                {
                    studentnum = inx.Goal;
                    studentx = studentx + studentnum;
                    studenta++;
                }

                if (inx.TeacherID.ID == AppHelper.LoginedUser.ID && teacher1 != null && teacher1.Leadership!=true)
                {
                    teachernum = inx.Goal;
                    teacherx = teacherx + teachernum;
                    teachera++;
                }

                if (inx.TeacherID.ID == AppHelper.LoginedUser.ID && teacher1 != null && teacher1.Leadership == true)
                {
                    leadershipnum = inx.Goal;
                    leadershipx = leadershipx + leadershipnum;
                    leadershipa++;
                }
            }
            if (studenta == 0)
            {
                studenta = 1;

            }
            if (teachera == 0)
            {
                teachera = 1;

            }
            if (leadershipa == 0)
            {
                leadershipa = 1;

            }
            //Evaluate inxa = from n in list where n.TeacherID.ID == AppHelper.LoginedUser.ID select n;
            int studentAverage = studentx / studenta;
            ViewData["studentAverage"] = studentAverage;
            int teacherAverage = teacherx / teachera;
            ViewData["teacherAverage"] = teacherAverage;
            int leadershipAverage = leadershipx / leadershipa;
            ViewData["leadershipAverage"] = leadershipAverage;
            ViewData["Average"] = studentAverage * 0.4 + teacherAverage * 0.25 + leadershipAverage * 0.35;




            ViewData["TeacherNumber"] = teacher.TeacherNumber;
                return View();
        }
	}
}