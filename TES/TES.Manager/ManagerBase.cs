using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Castle.ActiveRecord;
using NHibernate.Criterion;
using NHibernate;

namespace TES.Manager
{
    public class ManagerBase<T> : ActiveRecordBase<T>
        where T : class
    {
        public new void Create(T t)
        {
            ActiveRecordBase.CreateAndFlush(t);
        }

        public new void Update(T t)
        {
            ActiveRecordBase.UpdateAndFlush(t);
        }

        public new void DeleteAll()
        {
            DeleteAll(typeof(T));
        }

        public void Delete(int id)
        {
            T t = Get(id);
            if (t != null)
            {
                ActiveRecordBase.DeleteAndFlush(t);
            }
        }

        public new void Delete(T t)
        {
            ActiveRecordBase.DeleteAndFlush(t);
        }

        public bool Exists(int id)
        {
            return ActiveRecordBase.Exists(typeof(T), id);
        }

        public bool Exists(IList<ICriterion> queryConditions)
        {
            return ActiveRecordBase.Exists(typeof(T), queryConditions.ToArray());
        }

        public IList<T> GetAll()
        {
            return FindAll(typeof(T)) as IList<T>;
        }

        public IList<T> GetAll(IList<ICriterion> queryConditions)
        {
            Array arr = FindAll(typeof(T));
            return arr as IList<T>;
        }

        public T Get(int ID)
        {
            return FindByPrimaryKey(typeof(T), ID) as T;
        }

        public T Get(IList<ICriterion> queryConditions)
        {
            object obj = ActiveRecordBase.FindOne(typeof(T), queryConditions.ToArray());
            if (obj == null) return null;
            else return obj as T;
        }

        public IList<T> GetAll(IList<QueryConditions> queryConditions)
        {
            StringBuilder hql = new StringBuilder(@"from " + typeof(T).Name + " d");
            for (int i = 0; i < queryConditions.Count; i++)
            {
                QueryConditions qc = queryConditions[i];
                if (qc.Value != null)
                {
                    AddHqlSatements(hql);
                    hql.Append(String.Format("d.{0}{1} :q_{2}", qc.PropertyName, qc.Operator, i));
                }
            }

            ISession session = ActiveRecordBase.holder.CreateSession(typeof(T));

            IQuery query = session.CreateQuery(hql.ToString());

            IQuery queryScalar = session.CreateQuery("select count(ID) " + hql.ToString());
            for (int i = 0; i < queryConditions.Count; i++)
            {
                QueryConditions qc = queryConditions[i];
                if (qc.Value != null)
                {
                    if (qc.Operator.ToUpper() == "LIKE")
                    {
                        qc.Value = "% " + qc.Value + "% ";
                    }
                    queryScalar.SetParameter("q_" + i, qc.Value);
                    query.SetParameter("q_" + i, qc.Value);
                }
            }
            IList<object> result = queryScalar.List<object>();
            IList<T> arr = query.List<T>();
            return arr;
        }

        public IList<T> GetPaged(IList<ICriterion> queryConditions, IList<Order> orderList, int pageIndex, int pageSize, out int count)
        {
            if (queryConditions == null)
            {
                queryConditions = new List<ICriterion>();
            }
            if (orderList == null)
            {
                orderList = new List<Order>();
            }
            count = Count(typeof(T), queryConditions.ToArray());
            Array arr = SlicedFindAll(typeof(T), (pageIndex - 1) * pageSize, pageSize, orderList.ToArray(), queryConditions.ToArray());
            return arr as IList<T>;
        }
        public IList<T> GetPaged(IList<QueryConditions> queryConditions, int pageIndex, int pageSize, out int count)
        {
            StringBuilder hql = new StringBuilder(@"from " + typeof(T).Name + " d");
            for (int i = 0; i < queryConditions.Count; i++)
            {
                QueryConditions qc = queryConditions[i];
                if (qc.Value != null)
                {
                    AddHqlSatements(hql);
                    hql.Append(string.Format("d.{0}{1}:q_{2}", qc.PropertyName, qc.Operator, i));
                }
            }
            ISession session = ActiveRecordBase.holder.CreateSession(typeof(T));
            IQuery query = session.CreateQuery(hql.ToString());
            IQuery queryScalar = session.CreateQuery("select count(ID) " + hql.ToString());
            for (int i = 0; i < queryConditions.Count; i++)
            {
                QueryConditions qc = queryConditions[i];
                if (qc.Value != null)
                {
                    if (qc.Operator.ToUpper() == "LIKE")
                    {
                        qc.Value = "% " + qc.Value + "% ";
                    }
                    queryScalar.SetParameter("q_" + i, qc.Value);
                    query.SetParameter("q_" + i, qc.Value);
                }
            }
            IList<object> result = queryScalar.List<object>();
            int.TryParse(result[0].ToString(), out count);
            query.SetFirstResult((pageIndex - 1) * pageSize);
            query.SetMaxResults(pageSize);
            IList<T> arr = query.List<T>();
            return arr;
        }
        protected void AddHqlSatements(StringBuilder hql)
        {
            if (!hql.ToString().Contains("where"))
            {
                hql.Append(" where ");
            }
            else
            {
                hql.Append(" and ");
            }
        }
        public IList<T> Find(IList<ICriterion> queryConditions)
        {
            Array arr = ActiveRecordBase.FindAll(typeof(T), queryConditions.ToArray());
            return arr as IList<T>;
        }

    }
    public class QueryConditions
    {
        public string PropertyName { get; set; }
        public string Operator { get; set; }
        public object Value { get; set; }
    }
}
