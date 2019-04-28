using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace SmartSchoolSystem.Models
{
    public class StudentRegistrationViewModels
    {
        [Required]
        [Display(Name = "First Name")]


        public string FirstName { get; set; }
        [Required]
        [Display(Name = "Last Name")]

        public string LastName { get; set; }
        [Required]
        [Display(Name = "Registration Number")]
        public string RegistrationNumber { get; set; }

        [Required]
        [Display(Name = "Username")]
        public string Username { get; set; }
        [Required]
        [Display(Name = "Password")]
        public string StdPassword { get; set; }

        [Required]
        [Display(Name = "CNIC/B-Form#")]
        public string CNIC { get; set; }






    }
}