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
    public class SystemFunctionComponent : BaseComponent<SystemFunction, SystemFunctionManager>, ISystemFunctionService
    {
        public string GetDefaultPassword(string pwd)
        {
            return pwd;
        }

    }
}
