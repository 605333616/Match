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
    public class EvaluateComponent : BaseComponent<Evaluate, EvaluateManager>, IEvaluateService
    {
    }
}
