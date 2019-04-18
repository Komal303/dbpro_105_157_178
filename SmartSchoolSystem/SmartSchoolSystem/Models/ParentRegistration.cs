using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SmartSchoolSystem.Models
{
    public class ParentRegistration
    {
        [Required]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

        [Required]
        public string Email { get; set; }

        [Required]
        [Display(Name = "Contact")]
        public string PhoneNumber { get; set; }

        [Required]
        public string CNIC { get; set; }

        [Required]
        [Display(Name = "Password")]
        public string PrntPassword { get; set; }
    }
}