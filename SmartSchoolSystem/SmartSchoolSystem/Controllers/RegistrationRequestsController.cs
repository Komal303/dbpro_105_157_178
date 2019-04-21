using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class RegistrationRequestsController : Controller
    {
        // GET: RegistrationRequests
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ApproveRegistrationRequests(int id)
        {
            //foreach (RegistrationRequests r in RegistrationRequests.RequestList)
            //{
            //    if (r.id == id)
            //    {
                    
            //    }
            //}
            RegistrationRequests.RequestList.RemoveAll(x => x.id == id);
            return View(RegistrationRequests.RequestList);
        }

        public ActionResult ViewRegistrationRequests()
        {
            RegistrationRequests.RequestList.Clear();

            RegistrationRequests requests1 = new RegistrationRequests();
            requests1.designation = "parent";
            requests1.id = 1;
            requests1.Name = "Abc";

            RegistrationRequests requests2 = new RegistrationRequests();
            requests2.designation = "Student";
            requests2.id = 2;
            requests2.Name = "Def";

            RegistrationRequests.RequestList.Add(requests1);
            RegistrationRequests.RequestList.Add(requests2);


            return View(RegistrationRequests.RequestList);
        }

        // GET: RegistrationRequests/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: RegistrationRequests/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: RegistrationRequests/Create
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

        // GET: RegistrationRequests/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: RegistrationRequests/Edit/5
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

        // GET: RegistrationRequests/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: RegistrationRequests/Delete/5
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
