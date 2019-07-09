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
    public class UserController : BaseController
    {
        //
        // GET: /User/
        [HttpGet]
        public ViewResult Login()
        {
            return View();
        }
        [HttpPost]
        public string Login(string account, string pwd)
        {
            //pwd = AppHelper.EncodeMd5(pwd);
            TES.Domain.User loginedUser = TES.Core.Container.Instance.Resolve<IUserService>().Login(account, pwd);
            if (loginedUser != null)
            {
                AppHelper.LoginedUser = loginedUser;
                IList<Role> roleList = loginedUser.Roles;
                return "1";
            }
            else
            {
                return "0";
            }
        }

        public ActionResult Index(int pageIndex = 1, string userName = "")
        {
            IList<ICriterion> queryConditions = new List<ICriterion>();
            if (!string.IsNullOrEmpty(userName))
            {
                queryConditions.Add(new LikeExpression("Account", userName));

            }
            int count = 0;
            IList<Order> listOrder = new List<Order>(){
                new Order("ID",true)
            };
            IList<User> list = Container.Instance.Resolve<IUserService>().GetPaged(queryConditions, listOrder, pageIndex, PagerHelper.PageSize, out count);
            PageList<User> pageList = list.ToPageList<User>(pageIndex, PagerHelper.PageSize, count);
            return View(pageList);
        }
        [HttpGet]
        public ActionResult Create()
        {
            Domain.User user = new Domain.User();
            SetRoles();
            return View(user);
        }
        private void SetRoles()
        {
            IList<Role> roleList = Container.Instance.Resolve<IRoleService>().GetAll()
                .Where(m => m.IsActive == true)
                .ToList();
            ViewBag.RoleList = roleList;
        }
        [HttpPost]
        public ActionResult Create(Domain.User user, string hdSelectedIds)
        {
            user.Password = Container.Instance.Resolve<ISystemFunctionService>().GetDefaultPassword("123");
            if (ModelState.IsValid)
            {
                if (Container.Instance.Resolve<IUserService>().AccountCheck(0, user.Account))
                {
                    ModelState.AddModelError("Account", "账号已存在");
                    SetRoles();
                    return View(user);
                }
                Container.Instance.Resolve<IUserService>().Create(user, hdSelectedIds.Replace(",,", ","));
                return RedirectToAction("Index");
            }
            SetRoles();
            return View(user);
        }
        [HttpGet]
        public ViewResult AssignRole(int id)
        {
            User user = Container.Instance.Resolve<IUserService>().Get(id);
            IList<Role> roleList = Container.Instance.Resolve<IRoleService>().GetAll().Where(m => m.IsActive == true).ToList();
            if (user.Roles != null)
            {
                foreach (var item in roleList)
                {
                    if (user.Roles.Where(m => m.ID == item.ID).Count() > 0)
                        item.IsChecked = true;
                }
            }
            ViewBag.RoleList = roleList;
            return View(user);
        }
        [HttpPost]
        public ActionResult AssignRole(int userId, string hdSelectedIds)
        {
            Container.Instance.Resolve<IUserService>().AssignRole(userId, hdSelectedIds.Replace(",", ","));
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Details(int id = 0)
        {
            if (id == 0)
            {
                IList<ICriterion> criterion = new List<ICriterion>();
                criterion.Add(Expression.Eq("ID", AppHelper.LoginedUser.ID));
                Manager.ManagerBase<Student> manager = new Manager.ManagerBase<Student>();
                Student student = manager.Get(criterion);
                if (student == null)
                {
                    Teacher teacher = Container.Instance.Resolve<ITeacherService>().Get(criterion);
                    ViewBag.teacher = teacher;
                    return View();
                }
                ViewBag.student = student;
            }
            else
            {
                IList<ICriterion> criterion = new List<ICriterion>();
                criterion.Add(Expression.Eq("ID", id));
                Manager.ManagerBase<Student> manager = new Manager.ManagerBase<Student>();
                Student student = Container.Instance.Resolve<IStudentService>().Get(criterion);
                if (student == null)
                {
                    Teacher teacher = Container.Instance.Resolve<ITeacherService>().Get(criterion);
                    ViewBag.teacher = teacher;
                    return View();
                }
                ViewBag.student = student;
            }
            return View();
        }
        public ActionResult SwitchStatus(int id)
        {
            User model = Container.Instance.Resolve<IUserService>().Get(id);
            model.IsActive = !model.IsActive;
            Container.Instance.Resolve<IUserService>().Update(model);
            return RedirectToAction("Index");
        }
	}
}