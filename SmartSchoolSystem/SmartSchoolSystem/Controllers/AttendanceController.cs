using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class AttendanceController : Controller
    {
        // GET: Attendance
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AddAttendance()
        {
            Attendance.StudentsList.Clear();
            Attendance att = new Attendance();
            att.status = "Present";
            att.regNo = "2016CS105";

            Attendance.StudentsList.Add(att);
            Attendance.StudentsList.Add(att);
            Attendance.StudentsList.Add(att);
            Attendance.StudentsList.Add(att);

            return View(Attendance.StudentsList);
        }

        // GET: Attendance/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Attendance/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Attendance/Create
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

        // GET: Attendance/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Attendance/Edit/5
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

        // GET: Attendance/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Attendance/Delete/5
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
