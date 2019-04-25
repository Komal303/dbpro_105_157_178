using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmartSchoolSystem
{
    public class HelperClass
    {
        public static string account = "";
        public static int SetAdmin()
        {
            HelperClass.account = "Admin";
            return 0;
            

        }
        public static int SetStudent()
        {
            HelperClass.account = "Student";
            return 0;

        }
        public static int SetParent()
        {
            HelperClass.account = "Parent";
            return 0;

        }
        public static int SetEmpty()
        {
            HelperClass.account = "";
            return 0;


        }
    }
}