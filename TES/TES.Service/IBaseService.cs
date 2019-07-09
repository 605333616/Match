using NHibernate.Criterion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TES.Domain;
using TES.Manager;

namespace TES.Service
{
    public interface IBaseService<T> where T : EntityBase, new()
    {
        void Create(T entity);
        void Update(T entity);
        T Get(int ID);
        T Get(IList<ICriterion> queryConditions);
        void Delete(int ID);
        void Delete(T entity);
        bool Exists(int id);
        bool Exists(IList<ICriterion> queryConditions);
        IList<T> GetAll();
        IList<T> GetAll(IList<ICriterion> queryConditions);
        IList<T> GetPaged(IList<ICriterion> queryConditions, IList<Order> orderList, int pageIndex, int pageSize, out int count);
        IList<T> GetPaged(IList<QueryConditions> queryConditions, int pageIndex, int pageSize, out int count);
        IList<T> Find(IList<ICriterion> queryConditions);
    }
}
