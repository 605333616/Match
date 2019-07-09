using NHibernate.Criterion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TES.Apps;
using TES.Component;
using TES.Core;
using TES.Domain;
using TES.Service;

namespace TES.Controllers
{
    public class QuestionController : BaseController
    {
        //
        // GET: /Question/
        public ActionResult Index(int QuestiontypeID = 1)
        {
            IList<ICriterion> criterion = new List<ICriterion>();
            criterion.Add(Expression.Eq("Questiontype.ID", QuestiontypeID));
            ViewBag.QuestionList = Container.Instance.Resolve<IQuestionService>().Find(criterion);
            ViewData["QuestiontypeList"] = Container.Instance.Resolve<IQuestiontypeService>().GetAll();
            return View();
        }
        public ActionResult Create()
        {
            Question question = new Question();
            ViewBag.QuestiontypeList = Container.Instance.Resolve<IQuestiontypeService>().GetAll();
            return View(question);
        }
        [HttpPost]
        public ActionResult Create(Question question, string hdSelectedIds)
        {
            if (!string.IsNullOrEmpty(hdSelectedIds))
            {
                if (question.Questiontype == null)
                { question.Questiontype = new Questiontype(); }
                string[] ids = hdSelectedIds.Split(new char[] { ',', '_', '|' });
                foreach (string id in ids)
                {
                    if (string.IsNullOrEmpty(id))
                    {
                        continue;
                    }
                    question.Questiontype = new QuestiontypeComponent().Get(int.Parse(id));
                    Container.Instance.Resolve<IQuestionService>().Create(question);
                }
                return RedirectToAction("Index");
            }
            ViewBag.QuestiontypeList = Container.Instance.Resolve<IQuestiontypeService>().GetAll();
            return View("Create", question);
        }
        public ActionResult Edit(int id)
        {
            Question question = Container.Instance.Resolve<IQuestionService>().Get(id);
            ViewBag.QuestiontypeList = Container.Instance.Resolve<IQuestiontypeService>().GetAll();
            return View("Create", question);
        }
        [HttpPost]
        public ActionResult Edit(Question question, string hdSelectedIds)
        {
            if (question.Questiontype == null)
            { question.Questiontype = new Questiontype(); }
            question.Questiontype = null;
            string[] ids = hdSelectedIds.Split(new char[] { ',', '_', '|' });
            foreach (string id in ids)
            {
                if (string.IsNullOrEmpty(id))
                {
                    continue;
                }
                question.Questiontype = new QuestiontypeComponent().Get(int.Parse(id));
                Container.Instance.Resolve<IQuestionService>().Update(question);
            }
            return RedirectToAction("Index");
        }
        public ActionResult delete(int Id)
        {
            Container.Instance.Resolve<IQuestionService>().Delete(Id);
            //删除后转到货运单列表页面
            return RedirectToAction("Index");
        }
    }
}
