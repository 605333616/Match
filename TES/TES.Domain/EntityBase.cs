using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Castle.ActiveRecord;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace TES.Domain
{
    public class EntityBase
    {
        [PrimaryKey(PrimaryKeyType.Identity)]
        [Display(AutoGenerateField = false)]
        public virtual int ID { get; set; }
    }
}
