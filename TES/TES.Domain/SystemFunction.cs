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
    public class SystemFunction : EntityBase
    {

        [Property(NotNull = true)]
        [Display(Name = "版本")]
        public virtual int Version { get; set; }

        [Property(NotNull = true, Length = 20)]
        [Required(ErrorMessage = "不能为空")]
        [StringLength(20, ErrorMessage = "不能超过10个字符")]
        [Display(Name = "名称")]
        public string SystemFunctionName { get; set; }

        [Property(NotNull = true, Length = 200)]
        [Required(ErrorMessage = "不能为空")]
        [StringLength(200, ErrorMessage = "不能超过200个字符")]
        [Display(Name = "类名")]
        public string ClassName { get; set; }

        [Property(Length = 50)]
        [Required(ErrorMessage = "不能为空")]
        [StringLength(50, ErrorMessage = "不能超过50个字符")]
        [Display(Name = "控制器名称")]
        public string ControllerName { get; set; }

        [Property(Length = 200)]
        [Required(ErrorMessage = "ActionName 不能为空")]
        [StringLength(50, ErrorMessage = "不能超过50个字符")]
        [Display(Name = "Action 名称")]
        public string ActionName { get; set; }

        [Property]
        [Required(ErrorMessage = "请输入显示序号")]
        [Range(0, 100, ErrorMessage = "序号的有效范围为0~100的数字")]
        [Display(Name = "序号")]
        public int Idx { get; set; }

        [Property]
        [Required(ErrorMessage = "请设置是否显示序号")]
        [Display(Name = "是否显示")]
        public bool IsShow { get; set; }


        [BelongsTo(Type = typeof(SystemFunction),
            Table = "SystemFunction",
            Column = "ParentID",
            NotNull = false,
            Cascade = CascadeEnum.None,
            Lazy = FetchWhen.OnInvoke)]
        [Required(ErrorMessage = "不能为空")]
        public SystemFunction Parent { get; set; }

        [HasMany(typeof(SystemFunction),
            ColumnKey = "ParentID",
            Cascade = ManyRelationCascadeEnum.None,
            Inverse = false, Lazy = false)]
        public IList<SystemFunction> Children { get; set; }

        [HasAndBelongsToMany(typeof(Role),
            Table = "Role_SystemFunction",
            ColumnKey = "SystemFunctionID",
            ColumnRef = "RoleID",
            Cascade = ManyRelationCascadeEnum.All,
            Inverse = false,
            Lazy = false)]
        public IList<Role> Roles { get; set; }

        public bool IsChecked { get; set; }
    }
}
