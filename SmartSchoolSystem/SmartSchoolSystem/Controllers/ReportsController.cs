using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class ReportsController : Controller
    {
        // GET: Reports
        public ActionResult Index()
        {
            return View();
        }

        // GET: Reports/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Reports/Create
        public ActionResult Create()
        {
            return View();
        }
        public ActionResult ParentReports()
        {
            List<string> students = new List<string>();
            DB37Entities db = new DB37Entities();
            foreach (ParentStudenttbl c in db.ParentStudenttbls)
            {
                if (c.ParentId == HelperClass.accountid)
                {
                    students.Add(db.Studentstbls.Where(t => t.Id == c.StudentId).FirstOrDefault().RegistrationNumber);
                }
            }
            ViewBag.students = students;
            return View();

        }
        public ActionResult StudentReports()
        {
           
            return View();

        }
        public ActionResult AdminReportsOnly()
        {
            DB37Entities db = new DB37Entities();
            List<string> classlist = new List<string>();

            List<string> termList = new List<string>();
            foreach (Termstbl ttbl in db.Termstbls)
            {
                termList.Add(ttbl.Name);
            }
            ViewBag.Options1 = termList;

            string temp;
            classlist.Add("All");
            foreach (Classtbl c in db.Classtbls)
            {
                temp = c.Section;
                classlist.Add(temp);
            }

            ViewBag.Options = classlist;
            return View();
        }

        public JsonResult UpdateSubjects(string classname)
        {
            DB37Entities db = new DB37Entities();
            int classId = db.Classtbls.Where(t => t.Section == classname).FirstOrDefault().Id;
            if (!db.ClassSubjecttbls.Any(t => t.ClassId == classId))
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


        public JsonResult UpdateStudents(string classname)
        {
            DB37Entities db = new DB37Entities();
            int classId = db.Classtbls.Where(t => t.Section == classname).FirstOrDefault().Id;
            if (!db.StudentClasstbls.Any(t => t.ClassId == classId))
            {
                List<string> studentListEmpty = new List<string>();
                return Json(studentListEmpty, JsonRequestBehavior.AllowGet);
            }


            db.Configuration.ProxyCreationEnabled = false;
            //List<ClassTbl> ClassList = db.ClassTbls.Where(x => x.School_Id == schoolId).ToList();
            List<string> studentList = new List<string>();
            foreach (StudentClasstbl c in db.StudentClasstbls)
            {
                if (c.ClassId == classId)
                {
                    studentList.Add(db.Studentstbls.Where(t => t.Id == c.StudentId).FirstOrDefault().RegistrationNumber);
                }
            }
            return Json(studentList, JsonRequestBehavior.AllowGet);
        }

        // POST: Reports/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Reports/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Reports/Edit/5
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

        // GET: Reports/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Reports/Delete/5
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
