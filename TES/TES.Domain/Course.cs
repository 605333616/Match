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
    public class Course:EntityBase
    {
        [Property(Length = 50)]
        [Display(Name = "课程名")]
        public virtual string CourseName { get; set; }

        [Property(Length = 50)]
        [Display(Name = "课程号")]
        public virtual string CourseNumber { get; set; }

        [BelongsTo(Type = typeof(Class),
            Column = "ClassID",
            Lazy = FetchWhen.OnInvoke,
            Insert = true, Update = false)]
        [Display(Name = "班级ID")]
        public virtual Class ClassId { get; set; }

        [BelongsTo(Type = typeof(College),
            Column = "CollegeID",
            Lazy = FetchWhen.OnInvoke,
            Insert = true, Update = false)]
        [Display(Name = "学院ID")]
        public virtual College CollegeId { get; set; }
        
    }
}
