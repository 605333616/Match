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
    public class Question:EntityBase
    {
        [Property(Length = 500)]
        [Display(Name = "话题")]
        public virtual string Topic { get; set; }

        [BelongsTo("Questiontype")]
        public Questiontype Questiontype { get; set; }

    }
}
