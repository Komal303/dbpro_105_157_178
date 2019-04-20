using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartSchoolSystem.Models
{
    public class Attendance
    {
        public static List<Attendance> StudentsList = new List<Attendance>();
        public string status;
        public string regNo;
    }
}