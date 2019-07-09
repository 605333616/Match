using Castle.ActiveRecord;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace TES.Domain
{
    [ActiveRecord]
    public class Class:EntityBase
    {
        [BelongsTo(Type = typeof(Teacher),
            Column = "TeacherID",
            Lazy = FetchWhen.OnInvoke,
            Insert = true, Update = false)]
        [Display(Name = "教师ID")]
        public virtual Teacher TeacherId { get; set; }

        //[BelongsTo(Type = typeof(Student),
        //    Column = "StudntID",
        //    Lazy = FetchWhen.OnInvoke,
        //    Insert = true, Update = false)]
        //[Display(Name = "教师ID")]
        //public virtual Student StudentId { get; set; }

        [Property(Length = 50)]
        [Required]
        [Display(Name = "班级号")]
        public virtual string ClassNumber { get; set; }

        [Property(Length = 50)]
        [Required]
        [Display(Name = "班级名")]
        public virtual string ClassName { get; set; }
        
    }
}
