using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class TimeTableController : Controller
    {
        // GET: TimeTable
        public ActionResult Index()
        {

            TimeTableIndexViewModels.indextimetable.Clear();
            DB37Entities db = new DB37Entities();
            List<string> classlist = new List<string>();
            string temp;

            foreach (Classtbl c in db.Classtbls)
            {
                temp = c.Section;
                classlist.Add(temp);
            }

            ViewBag.Options = classlist;
            ViewBag.classname = "";
            return View(TimeTableIndexViewModels.indextimetable);
        }
        [HttpPost]
        public ActionResult Index(FormCollection form)
        {
            TimeTableIndexViewModels.indextimetable.Clear();
            DB37Entities db = new DB37Entities();
            List<string> classlist = new List<string>();
            string temp;

            foreach (Classtbl c in db.Classtbls)
            {
                temp = c.Section;
                classlist.Add(temp);
            }

            ViewBag.Options = classlist;

            string classname = form["Classlist"].ToString();
            ViewBag.classname = classname;
            int classid = db.Classtbls.Where(t => t.Section.Equals(classname)).FirstOrDefault().Id;
            foreach(TimeTabletbl t in db.TimeTabletbls)
            {
                if(t.ClassId == classid && t.WeeksDay == "Monday")
                {
                    TimeTableIndexViewModels a = new TimeTableIndexViewModels();
                    a.subjectname = db.Subjectstbls.Where(a1 => a1.Id == t.SubjectId).FirstOrDefault().Name;
                    a.dayname = t.WeeksDay;
                    a.time = t.LectureTime.ToString()+" AM";
                    TimeTableIndexViewModels.indextimetable.Add(a);
                }
            }
            foreach (TimeTabletbl t in db.TimeTabletbls)
            {
                if (t.ClassId == classid && t.WeeksDay == "Tuesday")
                {
                    TimeTableIndexViewModels a = new TimeTableIndexViewModels();
                    a.subjectname = db.Subjectstbls.Where(a1 => a1.Id == t.SubjectId).FirstOrDefault().Name;
                    a.dayname = t.WeeksDay;
                    a.time = t.LectureTime.ToString() + " AM";
                    TimeTableIndexViewModels.indextimetable.Add(a);
                }
            }
            foreach (TimeTabletbl t in db.TimeTabletbls)
            {
                if (t.ClassId == classid && t.WeeksDay == "Wednesday")
                {
                    TimeTableIndexViewModels a = new TimeTableIndexViewModels();
                    a.subjectname = db.Subjectstbls.Where(a1 => a1.Id == t.SubjectId).FirstOrDefault().Name;
                    a.dayname = t.WeeksDay;
                    a.time = t.LectureTime.ToString() + " AM";
                    TimeTableIndexViewModels.indextimetable.Add(a);
                }
            }
            foreach (TimeTabletbl t in db.TimeTabletbls)
            {
                if (t.ClassId == classid && t.WeeksDay == "Thursday")
                {
                    TimeTableIndexViewModels a = new TimeTableIndexViewModels();
                    a.subjectname = db.Subjectstbls.Where(a1 => a1.Id == t.SubjectId).FirstOrDefault().Name;
                    a.dayname = t.WeeksDay;
                    a.time = t.LectureTime.ToString() + " AM";
                    TimeTableIndexViewModels.indextimetable.Add(a);
                }
            }
            foreach (TimeTabletbl t in db.TimeTabletbls)
            {
                if (t.ClassId == classid && t.WeeksDay == "Friday")
                {
                    TimeTableIndexViewModels a = new TimeTableIndexViewModels();
                    a.subjectname = db.Subjectstbls.Where(a1 => a1.Id == t.SubjectId).FirstOrDefault().Name;
                    a.dayname = t.WeeksDay;
                    a.time = t.LectureTime.ToString() + " AM";
                    TimeTableIndexViewModels.indextimetable.Add(a);
                }
            }
            return View(TimeTableIndexViewModels.indextimetable);
        }
        // GET: TimeTable/Details/5
        public void redirecttodetailedtimetable(string classname)
        {

            TimeTableDetailedViewModels.timetablelist.Clear();
            DB37Entities db = new DB37Entities();
            int classid = db.Classtbls.Where(t => t.Section == classname).FirstOrDefault().Id;
            TimeTableDetailedViewModels timetableobj1 = new TimeTableDetailedViewModels();
            int subjectid;
            string timename1;
            timetableobj1.dayname = "Monday";
            timename1 = "08:00:00 AM";
            CultureInfo culture1 = new CultureInfo("en-US");
            DateTime tempDate1 = Convert.ToDateTime("01/01/0001 " + timename1, culture1);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj1.lecture1 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj1.lecture1 = null;
            }
            string timename2 = "09:00:00 AM";
            CultureInfo culture2 = new CultureInfo("en-US");
            DateTime tempDate2 = Convert.ToDateTime("01/01/0001 " + timename2, culture2);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate2.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate2.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj1.lecture2 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj1.lecture2 = null;
            }
            string timename3 = "10:00:00 AM";
            CultureInfo culture3 = new CultureInfo("en-US");
            DateTime tempDate3 = Convert.ToDateTime("01/01/0001 " + timename3, culture3);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate3.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate3.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj1.lecture3 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj1.lecture3 = null;
            }
            string timename4 = "11:00:00 AM";
            CultureInfo culture4 = new CultureInfo("en-US");
            DateTime tempDate4 = Convert.ToDateTime("01/01/0001 " + timename4, culture4);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate4.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate4.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj1.lecture4 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj1.lecture4 = null;
            }
            string timename5 = "12:00:00 AM";
            CultureInfo culture5 = new CultureInfo("en-US");
            DateTime tempDate5 = Convert.ToDateTime("01/01/0001 " + timename5, culture5);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate5.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj1.dayname && t.LectureTime.ToString() == tempDate5.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj1.lecture5 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj1.lecture5 = null;
            }


            // For Tuesday




            TimeTableDetailedViewModels timetableobj2 = new TimeTableDetailedViewModels();

            timetableobj2.dayname = "Tuesday";
            string timename6 = "08:00:00 AM";
            CultureInfo culture6 = new CultureInfo("en-US");
            DateTime tempDate6 = Convert.ToDateTime("01/01/0001 " + timename6, culture6);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj2.lecture1 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj2.lecture1 = null;
            }
            string timename7 = "09:00:00 AM";
            CultureInfo culture7 = new CultureInfo("en-US");
            DateTime tempDate7 = Convert.ToDateTime("01/01/0001 " + timename7, culture7);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate7.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate7.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj2.lecture2 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj2.lecture2 = null;
            }
            string timename8 = "10:00:00 AM";
            CultureInfo culture8 = new CultureInfo("en-US");
            DateTime tempDate8 = Convert.ToDateTime("01/01/0001 " + timename8, culture8);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate8.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate8.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj2.lecture3 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj2.lecture3 = null;
            }
            string timename9 = "11:00:00 AM";
            CultureInfo culture9 = new CultureInfo("en-US");
            DateTime tempDate9 = Convert.ToDateTime("01/01/0001 " + timename9, culture9);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate9.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate9.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj2.lecture4 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj2.lecture4 = null;
            }
            string timename10 = "12:00:00 AM";
            CultureInfo culture10 = new CultureInfo("en-US");
            DateTime tempDate10 = Convert.ToDateTime("01/01/0001 " + timename10, culture10);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate10.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj2.dayname && t.LectureTime.ToString() == tempDate10.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj2.lecture5 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj2.lecture5 = null;
            }



            // For Wednesday
            TimeTableDetailedViewModels timetableobj3 = new TimeTableDetailedViewModels();

            timetableobj3.dayname = "Wednesday";
            string timename11 = "08:00:00 AM";
            CultureInfo culture11 = new CultureInfo("en-US");
            DateTime tempDate11 = Convert.ToDateTime("01/01/0001 " + timename11, culture11);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj3.lecture1 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj3.lecture1 = null;
            }
            string timename12 = "09:00:00 AM";
            CultureInfo culture12 = new CultureInfo("en-US");
            DateTime tempDate12 = Convert.ToDateTime("01/01/0001 " + timename12, culture12);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate12.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate12.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj3.lecture2 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj3.lecture2 = null;
            }
            string timename13 = "10:00:00 AM";
            CultureInfo culture13 = new CultureInfo("en-US");
            DateTime tempDate13 = Convert.ToDateTime("01/01/0001 " + timename13, culture13);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate13.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate13.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj3.lecture3 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj3.lecture3 = null;
            }
            string timename14 = "11:00:00 AM";
            CultureInfo culture14 = new CultureInfo("en-US");
            DateTime tempDate14 = Convert.ToDateTime("01/01/0001 " + timename14, culture14);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate14.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate14.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj3.lecture4 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj3.lecture4 = null;
            }
            string timename15 = "12:00:00 AM";
            CultureInfo culture15 = new CultureInfo("en-US");
            DateTime tempDate15 = Convert.ToDateTime("01/01/0001 " + timename15, culture15);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate15.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj3.dayname && t.LectureTime.ToString() == tempDate15.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj3.lecture5 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj3.lecture5 = null;
            }
            // For Thursday


            TimeTableDetailedViewModels timetableobj4 = new TimeTableDetailedViewModels();

            timetableobj4.dayname = "Thursday";
            string timename16 = "08:00:00 AM";
            CultureInfo culture16 = new CultureInfo("en-US");
            DateTime tempDate16 = Convert.ToDateTime("01/01/0001 " + timename16, culture16);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj4.lecture1 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj4.lecture1 = null;
            }
            string timename17 = "09:00:00 AM";
            CultureInfo culture17 = new CultureInfo("en-US");
            DateTime tempDate17 = Convert.ToDateTime("01/01/0001 " + timename17, culture17);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate17.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate17.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj4.lecture2 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj4.lecture2 = null;
            }
            string timename18 = "10:00:00 AM";
            CultureInfo culture18 = new CultureInfo("en-US");
            DateTime tempDate18 = Convert.ToDateTime("01/01/0001 " + timename18, culture18);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate18.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate18.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj4.lecture3 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj4.lecture3 = null;
            }
            string timename19 = "11:00:00 AM";
            CultureInfo culture19 = new CultureInfo("en-US");
            DateTime tempDate19 = Convert.ToDateTime("01/01/0001 " + timename19, culture19);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate19.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate19.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj4.lecture4 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj4.lecture4 = null;
            }
            string timename20 = "12:00:00 AM";
            CultureInfo culture20 = new CultureInfo("en-US");
            DateTime tempDate20 = Convert.ToDateTime("01/01/0001 " + timename20, culture20);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate20.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj4.dayname && t.LectureTime.ToString() == tempDate20.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj4.lecture5 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj4.lecture5 = null;
            }

            // For Friday


            TimeTableDetailedViewModels timetableobj5 = new TimeTableDetailedViewModels();

            timetableobj5.dayname = "Friday";
            string timename21 = "08:00:00 AM";
            CultureInfo culture21 = new CultureInfo("en-US");
            DateTime tempDate21 = Convert.ToDateTime("01/01/0001 " + timename21, culture21);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate1.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj5.lecture1 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj5.lecture1 = null;
            }
            string timename22 = "09:00:00 AM";
            CultureInfo culture22 = new CultureInfo("en-US");
            DateTime tempDate22 = Convert.ToDateTime("01/01/0001 " + timename22, culture22);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate22.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate22.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj5.lecture2 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj5.lecture2 = null;
            }
            string timename23 = "10:00:00 AM";
            CultureInfo culture23 = new CultureInfo("en-US");
            DateTime tempDate23 = Convert.ToDateTime("01/01/0001 " + timename23, culture23);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate23.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate23.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj5.lecture3 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj5.lecture3 = null;
            }
            string timename24 = "11:00:00 AM";
            CultureInfo culture24 = new CultureInfo("en-US");
            DateTime tempDate24 = Convert.ToDateTime("01/01/0001 " + timename24, culture24);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate24.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate24.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj5.lecture4 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj5.lecture4 = null;
            }
            string timename25 = "12:00:00 AM";
            CultureInfo culture25 = new CultureInfo("en-US");
            DateTime tempDate25 = Convert.ToDateTime("01/01/0001 " + timename25, culture25);
            if (db.TimeTabletbls.Any(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate25.TimeOfDay.ToString()))
            {
                subjectid = db.TimeTabletbls.Where(t => t.WeeksDay == timetableobj5.dayname && t.LectureTime.ToString() == tempDate25.TimeOfDay.ToString()).FirstOrDefault().SubjectId;
                timetableobj5.lecture5 = db.Subjectstbls.Where(t => t.Id == subjectid).FirstOrDefault().Name;
            }
            else
            {
                timetableobj5.lecture5 = null;
            }
            TimeTableDetailedViewModels.timetablelist.Add(timetableobj1);
            TimeTableDetailedViewModels.timetablelist.Add(timetableobj2);
            TimeTableDetailedViewModels.timetablelist.Add(timetableobj3);
            TimeTableDetailedViewModels.timetablelist.Add(timetableobj4);
            TimeTableDetailedViewModels.timetablelist.Add(timetableobj5);

            TimeTableController t2 = new TimeTableController();
            t2.DetailedTimeTable();
            
            
        }

        public ActionResult DetailedTimeTable()
        {
            

            return View(TimeTableDetailedViewModels.timetablelist);
        }
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: TimeTable/Create
        public ActionResult Create()
        {
            DB37Entities db = new DB37Entities();
            List<string> classlist = new List<string>();
            List<string> days = new List<string>();
            List<string> time = new List<string>();
            string temp;

            foreach(Classtbl c in db.Classtbls)
            {
                temp = c.Section;
                classlist.Add(temp);
            }
            
            // List of Days
            temp = "Monday";
            days.Add(temp);
            temp = "Tuesday";
            days.Add(temp);
            temp = "Wednesday";
            days.Add(temp);
            temp = "Thursday";
            days.Add(temp);
            temp = "Friday";
            days.Add(temp);

            temp = "08:00:00 AM";
            time.Add(temp);
            temp = "09:00:00 AM";
            time.Add(temp);
            temp = "10:00:00 AM";
            time.Add(temp);
            temp = "11:00:00 AM";
            time.Add(temp);
            temp = "12:00:00 AM";
            time.Add(temp);


            ViewBag.Options = classlist;
            ViewBag.Days = days;
            ViewBag.Time = time;
            return View();
        }

        public JsonResult UpdateSubjects(string classname)
        {
            DB37Entities db = new DB37Entities();
            int classId = db.Classtbls.Where(t => t.Section == classname).FirstOrDefault().Id;
            if (!db.ClassSubjecttbls.Any(t=> t.ClassId == classId))
            {
                List<string> subjectListEmpty = new List<string>();
                return Json(subjectListEmpty, JsonRequestBehavior.AllowGet);
            }
           

            db.Configuration.ProxyCreationEnabled = false;
            //List<ClassTbl> ClassList = db.ClassTbls.Where(x => x.School_Id == schoolId).ToList();
            List<string> subjectList = new List<string>();
            foreach (ClassSubjecttbl c in db.ClassSubjecttbls)
            {
                if (c.ClassId == classId)
                {
                    subjectList.Add(db.Subjectstbls.Where(t => t.Id == c.SubjectId).FirstOrDefault().Name);
                }
            }
            return Json(subjectList, JsonRequestBehavior.AllowGet);
        }
        // POST: TimeTable/Create
        [HttpPost]
        public ActionResult Create(FormCollection form)
        {
            try
            {
                // TODO: Add insert logic here

                DB37Entities db = new DB37Entities();
                List<string> classlist = new List<string>();
                List<string> days = new List<string>();
                List<string> time = new List<string>();
                string temp;

                foreach (Classtbl c in db.Classtbls)
                {
                    temp = c.Section;
                    classlist.Add(temp);
                }


                // List of Days
                temp = "Monday";
                days.Add(temp);
                temp = "Tuesday";
                days.Add(temp);
                temp = "Wednesday";
                days.Add(temp);
                temp = "Thursday";
                days.Add(temp);
                temp = "Friday";
                days.Add(temp);

                temp = "08:00:00 AM";
                time.Add(temp);
                temp = "09:00:00 AM";
                time.Add(temp);
                temp = "10:00:00 AM";
                time.Add(temp);
                temp = "11:00:00 AM";
                time.Add(temp);
                temp = "12:00:00 AM";
                time.Add(temp);


                ViewBag.Options = classlist;
                ViewBag.Days = days;
                ViewBag.Time = time;




                string classname = form["Classlist"].ToString();
                string subjectname = form["subjectList"].ToString();
                string dayname = form["daylist"].ToString();
                string timename = form["timelist"].ToString();

                int classid = db.Classtbls.Where(t => t.Section == classname).FirstOrDefault().Id;
                int subjectid = db.Subjectstbls.Where(t => t.Name == subjectname).FirstOrDefault().Id;
                CultureInfo culture = new CultureInfo("en-US");
                DateTime tempDate = Convert.ToDateTime("01/01/0001 "+timename, culture);

                if(db.TimeTabletbls.Any(t=> t.LectureTime.ToString() == tempDate.TimeOfDay.ToString() && t.WeeksDay == dayname && t.ClassId == classid))
                {
                    ViewBag.warn = "Lecture is already assigned at this time";
                    return View();
                }

                TimeTabletbl t1 = new TimeTabletbl();
                t1.ClassId = classid;
                t1.SubjectId = subjectid;
                t1.WeeksDay = dayname;
                t1.LectureTime = tempDate.TimeOfDay;

                db.TimeTabletbls.Add(t1);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TimeTable/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }
        
        // POST: TimeTable/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: TimeTable/Delete/5
        public ActionResult Delete(string classname, string subjectname, string dayname, string time)
        {
            CultureInfo culture = new CultureInfo("en-US");
            DateTime tempDate = Convert.ToDateTime("01/01/0001 " + time, culture);
            DB37Entities db = new DB37Entities();
            int classid = db.Classtbls.Where(t => t.Section == classname).FirstOrDefault().Id;
            int subjectid = db.Subjectstbls.Where(t => t.Name == subjectname).FirstOrDefault().Id;

            db.TimeTabletbls.Remove(db.TimeTabletbls.Where(t => t.ClassId == classid && t.SubjectId == subjectid && t.WeeksDay == dayname && t.LectureTime == tempDate.TimeOfDay).FirstOrDefault());
            db.SaveChanges();
            return RedirectToAction("Index", "TimeTable");
        }

        // POST: TimeTable/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
