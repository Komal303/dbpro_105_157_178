using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SmartSchoolSystem.Models
{
    public class LeaveRequestsViewModel
    {
        public static List<LeaveRequestsViewModel> requests = new List<LeaveRequestsViewModel>();

        public int id { get; set; }

        public int parentId { get; set; }

        [Required]
        public string parentEmail { get; set; }

        public int studentId { get; set; }

        [Required]
        public string studentName { get; set; }

        [Required]
        public string leaveDescription { get; set; }

        [Required]
        public string regNo { get; set; }

        [Required]
        public DateTime dateFrom { get; set; }

        [Required]
        public DateTime dateTo { get; set; }
    }
}