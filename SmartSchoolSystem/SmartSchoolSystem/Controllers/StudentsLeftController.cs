
using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class StudentsLeftController : Controller
    {
        // GET: StudentsLeft
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ViewActiveStudents()
        {
            StudentsLeftViewModel.studentList.Clear();

            StudentsLeftViewModel studentsLeft = new StudentsLeftViewModel();
            studentsLeft.id = 1;
            studentsLeft.studentId = 1;
            studentsLeft.classId = 1;
            studentsLeft.className = "10th A";
            studentsLeft.studentName = "Abc";
            studentsLeft.studentRegNo = "2016-CS-105";
            StudentsLeftViewModel.studentList.Add(studentsLeft);

            StudentsLeftViewModel studentsLeft2 = new StudentsLeftViewModel();
            studentsLeft2.id = 2;
            studentsLeft2.studentId = 2;
            studentsLeft2.classId = 1;
            studentsLeft2.className = "10th A";
            studentsLeft2.studentName = "def";
            studentsLeft2.studentRegNo = "2016-CS-106";
            StudentsLeftViewModel.studentList.Add(studentsLeft2);

            return View(StudentsLeftViewModel.studentList);
        }

        public ActionResult InactiveStudents(int id)
        {
            StudentsLeftViewModel.studentList.RemoveAll(x => x.id == id);

            return View(StudentsLeftViewModel.studentList);
        }

        // GET: StudentsLeft/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: StudentsLeft/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: StudentsLeft/Create
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

        // GET: StudentsLeft/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: StudentsLeft/Edit/5
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

        // GET: StudentsLeft/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: StudentsLeft/Delete/5
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
