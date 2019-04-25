using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartSchoolSystem.Models
{
    public class SubjectViewModel
    {
        public static SubjectViewModel sampleSubject = new SubjectViewModel();
        public static List<SubjectViewModel> subjectList = new List<SubjectViewModel>();

        public int id { get; set; }

        public string name { get; set; }
    }
}