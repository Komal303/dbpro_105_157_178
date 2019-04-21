using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
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
            TimeTableViewModel.lst.Clear();

            TimeTableViewModel timetable1 = new TimeTableViewModel();
            timetable1.id = 1;
            timetable1.day = "Monday";
            TimeTableViewModel.lst.Add(timetable1);

            TimeTableViewModel timetable2 = new TimeTableViewModel();
            timetable2.id = 2;
            timetable2.day = "Tuesday";
            TimeTableViewModel.lst.Add(timetable2);

            TimeTableViewModel timetable3 = new TimeTableViewModel();
            timetable3.id = 3;
            timetable3.day = "Wednesday";
            TimeTableViewModel.lst.Add(timetable3);

            TimeTableViewModel timetable4 = new TimeTableViewModel();
            timetable4.id = 4;
            timetable4.day = "Thursday";
            TimeTableViewModel.lst.Add(timetable4);

            TimeTableViewModel timetable5 = new TimeTableViewModel();
            timetable5.id = 1;
            timetable5.day = "Friday";
            TimeTableViewModel.lst.Add(timetable5);


            return View(TimeTableViewModel.lst);
        }

        // GET: TimeTable/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: TimeTable/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TimeTable/Create
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
        public ActionResult Delete(int id)
        {
            return View();
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
