using Castle.ActiveRecord;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TES.Domain
{
    [ActiveRecord("SystemUser")]
    public class User : EntityBase
    {
        [Property(NotNull = true)]
        [Display(Name = "版本")]
        public virtual int Version { get; set; }

        [Property(NotNull = true, Length = 20)]
        [Required(ErrorMessage = "不能为空")]
        [StringLength(20, ErrorMessage = "不能超过20个字符")]
        [Display(Name = "用户名")]
        public virtual string UserName { get; set; }

        [Property(NotNull = true, Length = 50)]
        [Required(ErrorMessage = "不能为空")]
        [StringLength(20, ErrorMessage = "不能超过50个字符")]
        [Display(Name = "账号")]
        //[Remote("AjaxCheckAccount","User",ErrorMessage="该账号已存在")]
        public virtual string Account { get; set; }

        [Property(NotNull = true, Length = 50)]
        [Display(Name = "密码")]
        public virtual string Password { get; set; }

        [Property(NotNull = true)]
        [Required]
        [Display(Name = "激活")]
        public virtual bool IsActive { get; set; }
        [HasAndBelongsToMany(typeof(Role),
            Table = "User_Role",
            ColumnKey = "UserID",
            ColumnRef = "RoleID",
            Cascade = ManyRelationCascadeEnum.None,
            Inverse = false,
            Lazy = false)]
        public virtual IList<Role> Roles { get; set; }
    }
}
