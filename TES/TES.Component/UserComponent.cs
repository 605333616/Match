using NHibernate.Criterion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TES.Domain;
using TES.Manager;
using TES.Service;

namespace TES.Component
{
    public class UserComponent : BaseComponent<User, UserManager>, IUserService
    {
        public User Login(string account, string password)
        {
            IList<NHibernate.Criterion.ICriterion> criterionList = new List<ICriterion>();
            criterionList.Add(NHibernate.Criterion.Expression.Eq("Account", account));
            criterionList.Add(Expression.Eq("Password", password));
            criterionList.Add(Expression.Eq("IsActive", true));
            User user = manager.Get(criterionList);
            return user;
        }

        public void SwitchStatus(int id)
        {
            User user = this.Get(id);
            user.IsActive = !user.IsActive;

            Update(user);
        }

        public void Create(User user, string rolesId)
        {
            if (!string.IsNullOrEmpty(rolesId))
            {
                if (user.Roles == null)
                    user.Roles = new List<Role>();
                string[] ids = rolesId.Split(new char[] { ',', '_', '|' });

                foreach (string id in ids)
                {
                    if (string.IsNullOrEmpty(id))
                        continue;
                    user.Roles.Add(new RoleComponent().Get(int.Parse(id)));
                }
            }
            manager.Create(user);
        }

        public bool AccountCheck(int? id, string account)
        {
            IList<ICriterion> criterionList = new List<ICriterion>();
            criterionList.Add(Expression.Eq("Account", account));
            if (id.HasValue && id.Value > 0)
            {
                ICriterion criterion = Expression.Eq("ID", id.Value);
                criterionList.Add(Expression.Not(criterion));
            }
            return this.Exists(criterionList);
        }

        public void AssignRole(int userId, string rolesId)
        {
            User user = manager.Get(userId);
            if (user.Roles == null)
                user.Roles = new List<Role>();
            user.Roles.Clear();
            if (!string.IsNullOrEmpty(rolesId))
            {
                string[] ids = rolesId.Split(new char[] { ',', '_', '|' });
                foreach (string tempId in ids)
                {
                    if (string.IsNullOrEmpty(tempId))
                        continue;
                    user.Roles.Add(new RoleManager().Get(int.Parse(tempId)));
                }
            }
            manager.Update(user);
        }

        public new void Delete(int id)
        {
            manager.Delete(id);
        }

        public void Delete(User user)
        {
            manager.Delete(user);
        }
    }
}
