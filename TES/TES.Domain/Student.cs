﻿using Castle.ActiveRecord;
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
    public class Student:EntityBase
    {
        [Property(Length = 50)]
        [Required(ErrorMessage = "不能为空")]
        [StringLength(20, ErrorMessage = "不能超过50个字符")]
        [Display(Name = "学号")]
        [Remote("AjaxCheckStudntId", "Student", ErrorMessage = "该账号已存在")]
        public virtual string StudentNumber { get; set; }

        [Property(Length = 20)]
        [Required(ErrorMessage = "不能为空")]
        [StringLength(20, ErrorMessage = "不能超过20个字符")]
        [Display(Name = "用户名")]
        public virtual string StudentName { get; set; }


        [Property(NotNull = true)]
        [Display(Name = "性别")]
        public virtual int Sex { get; set; }

        [Property(NotNull = true)]
        [Required]
        [Display(Name = "激活")]
        public virtual bool IsActive { get; set; }

        [Property]
        [Required]
        [Display(Name = "班级")]
        public virtual int Class { get; set; }

        [Property(Length = 50)]
        [Display(Name = "学院")]
        public virtual string College { get; set; }

        [BelongsTo("CreatorID")]
        public User UserID { get; set; }


        [Property(NotNull = true)]
        public virtual int CreatorID { get; set; }


        [Property(Length = 50)]
        [Display(Name = "问题类型")]
        public virtual int QuestionType { get; set; }
    }
}
