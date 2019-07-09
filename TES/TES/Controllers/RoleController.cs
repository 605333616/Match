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
    public class RoleController : BaseController
    {
        //
        // GET: /Role/
        public ActionResult Index(int pageIndex = 1)
        {
            int count = 0;
            IList<Role> list = Container.Instance.Resolve<IRoleService>().GetPaged(null, null, pageIndex, PagerHelper.PageSize, out count);
            PageList<Role> pageList = list.ToPageList<Role>(pageIndex, PagerHelper.PageSize, count);
            return View(pageList);
        }

        [HttpGet]
        public ViewResult Create()
        {
            Role role = new Role();
            return View(role);
        }
        [HttpPost]
        public ActionResult Create(Role role)
        {
            if (ModelState.IsValid)
            {
                Container.Instance.Resolve<IRoleService>().Create(role);
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            Role model = Container.Instance.Resolve<IRoleService>().Get(id);
            return View("Create", model);
        }
        [HttpPost]
        public ActionResult Edit(Role model)
        {
            if (ModelState.IsValid)
            {
                Container.Instance.Resolve<IRoleService>().Update(model);
                return RedirectToAction("Index");
            }
            return View("Create", model);
        }
        public ActionResult SwitchStatus(int id)
        {
            Role model = Container.Instance.Resolve<IRoleService>().Get(id);
            model.IsActive = !model.IsActive;
            Container.Instance.Resolve<IRoleService>().Update(model);
            return RedirectToAction("Index");
        }
        public ActionResult Delete(int id)
        {
            Role model = Container.Instance.Resolve<IRoleService>().Get(id);
            if (model.Users == null || model.Users.Count == 0)
                Container.Instance.Resolve<IRoleService>().Delete(model);
            return RedirectToAction("Index");
        }
	}
}