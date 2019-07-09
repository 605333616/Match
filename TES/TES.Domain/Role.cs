using Castle.ActiveRecord;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TES.Domain
{
    [ActiveRecord]
    public class Role:EntityBase
    {
        [Property(NotNull = true)]
        [Display(Name = "版本")]
        public virtual int Version { get; set; }

        [Property(Length = 20)]
        [Display(Name = "角色名")]
        public virtual string RoleName { get; set; }

        [Property]
        [Required]
        [Display(Name = "激活")]
        public virtual bool IsActive { get; set; }

        [HasAndBelongsToMany(typeof(User),
        Table = "User_Role",
        ColumnKey = "RoleID",
        ColumnRef = "UserID",
        Inverse = false,
        Lazy = false)]
        public virtual IList<User> Users { get; set; }
        [HasAndBelongsToMany(typeof(SystemFunction),
            Table = "Role_SystemFunction",
            ColumnKey = "RoleID",
            ColumnRef = "SystemFunctionID",
            Inverse = false,
            Lazy = false)]
        public IList<SystemFunction> SystemFunctions { get; set; }
        public bool IsChecked
        {
            get;
            set;
        }
    }
}
