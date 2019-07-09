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
    public class Questiontype : EntityBase
    {
        [Property(NotNull = true, Length = 200)]
        [Required(ErrorMessage = "不能为空")]
        [StringLength(200, ErrorMessage = "不能超过200个字符")]
        [Display(Name = "问卷名")]
        public virtual string QuestiontypeName { get; set; }
        [HasMany(typeof(Question), ColumnKey = "Questiontype")]
        public IList<Question> Questions { get; set; }
    }

}
