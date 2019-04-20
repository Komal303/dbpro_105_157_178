using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
   
    public class HomeController : Controller
    {
       
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

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}