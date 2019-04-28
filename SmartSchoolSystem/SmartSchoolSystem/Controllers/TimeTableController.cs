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
