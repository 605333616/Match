using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TES.Domain;

namespace TES.Service
{
    public interface IRoleService : IBaseService<Role>
    {
        void AssignAuthorize(int roleID, string systemfunctions);
    }
}
