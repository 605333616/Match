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
    public class RoleComponent : BaseComponent<Role, RoleManager>, IRoleService
    {
        public void AssignAuthorize(int roleID, string systemfunctions)
        {
            Role role = manager.Get(roleID);

            if (role.SystemFunctions == null)
                role.SystemFunctions = new List<SystemFunction>();
            role.SystemFunctions.Clear();

            SystemFunctionManager funManager = new SystemFunctionManager();

            string[] systemStr = systemfunctions.Split(',');
            if (systemStr != null && systemStr.Length > 0)
            {
                foreach (var fun in systemStr)
                {
                    if (string.IsNullOrEmpty(fun)) continue;
                    role.SystemFunctions.Add(funManager.Get(int.Parse(fun)));
                }
            }
            manager.Update(role);
        }
    }
}
