using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class EventsController : Controller
    {
        // GET: Events
        public ActionResult Index()
        {

            Event.EventList.Clear();
            Event e1 = new Event();
            e1.id = 0;
            e1.name = "satrangi";
            e1.description = "fazool";
            e1.contact = "090078601";
            e1.date = DateTime.Now;


            Event.EventList.Add(e1);
            Event.EventList.Add(e1);
            Event.EventList.Add(e1);
            Event.EventList.Add(e1);

            return View(Event.EventList);

        
        }

        // GET: Events/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Events/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Events/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index","Events");
            }
            catch
            {
                return View();
            }
        }

        // GET: Events/Edit/5
        public ActionResult Edit(int id)
        {
            Event.SampleEvent = Event.EventList[1];
            return View(Event.SampleEvent);
        }

        // POST: Events/Edit/5
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

        // GET: Events/Delete/5
        public ActionResult Delete(int id)
        {

            Event.EventList.RemoveAt(id);
            return RedirectToAction("Index", "Events");
        }

        // POST: Events/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                return View();
            }
            catch
            {
                return View();
            }
        }
    }
}
