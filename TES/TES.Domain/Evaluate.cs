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
    public class Evaluate:EntityBase
    {
        [BelongsTo(Type = typeof(User),
            Column = "UserID",
            Lazy = FetchWhen.OnInvoke,
            Insert = true, Update = false)]
        [Display(Name = "用户ID")]
        public virtual User UserID { get; set; }

        [BelongsTo(Type = typeof(Teacher),
            Column = "TeacherID",
            Lazy = FetchWhen.OnInvoke,
            Insert = true, Update = false)]
        [Display(Name = "教师ID")]
        public virtual Teacher TeacherID { get; set; }

        [Property(Length = 50)]
        [Display(Name = "评价")]
        public virtual string Evaluation { get; set; }

        [Property(Length = 50)]
        [Display(Name = "成绩")]
        public virtual int Goal { get; set; }

    }
}
