﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SmartSchoolSystem.Models
{
    public class ApplyForLeaveViewModel
    {
        public static List<ApplyForLeaveViewModel> applyRequests = new List<ApplyForLeaveViewModel>();

        public int id { get; set; }

        public int parentId { get; set; }

        [Required]
        [Display(Name = "Parent Email")]
        public string parentEmail { get; set; }

        public int studentId { get; set; }

        [Required]
        [Display(Name = "Student Name")]
        public string studentName { get; set; }

        [Required]
        [Display(Name = "Registration Number")]
        public string regNo { get; set; }

        [Required]
        [Display(Name = "Description")]
        public string description { get; set; }

        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "From")]
        public DateTime from { get; set; }

        [Required]
        [DataType(DataType.Date)]
        [Display(Name = "To")]
        public DateTime to { get; set; }
    }
}