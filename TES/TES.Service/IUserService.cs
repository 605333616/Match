using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TES.Domain;

namespace TES.Service
{
    public interface IUserService : IBaseService<User>
    {
        User Login(string account, string password);
        bool AccountCheck(int? id, string account);
        void Create(User user, string rolesId);
        void AssignRole(int userId, string rolesId);
    }
}
