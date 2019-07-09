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
    public class College:EntityBase
    {
        [BelongsTo(Type = typeof(Teacher),
            Column = "Teacher",
            Lazy = FetchWhen.OnInvoke,
            Insert = true, Update = false)]
        [Display(Name = "教师ID")]
        public virtual Teacher TeacherId { get; set; }

        [BelongsTo(Type = typeof(Class),
            Column = "ClassID",
            Lazy = FetchWhen.OnInvoke,
            Insert = true, Update = false)]
        [Display(Name = "班级ID")]
        public virtual Class ClassId { get; set; }

        [Property]
        [Required]
        [Display(Name = "学院号")]
        public virtual int CollegeNumber { get; set; }

        [Property(Length = 50)]
        [Display(Name = "学院名")]
        public virtual string CollegeName { get; set; }
    }
}
