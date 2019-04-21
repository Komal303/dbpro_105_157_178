using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class LeaveRequestsController : Controller
    {
        // GET: LeaveRequests
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ApproveLeaveRequests(int id)
        {
            LeaveRequests.requests.RemoveAll(x => x.id == id);
            return View(LeaveRequests.requests);
        }

        public ActionResult ViewLeaveRequests()
        {
            LeaveRequests.requests.Clear();

            LeaveRequests request1 = new LeaveRequests();
            request1.id = 1;
            request1.name = "Abc";
            request1.regNo = "2016CS105";
            request1.dateFrom = DateTime.Now;
            request1.dateTo = DateTime.Now;

            LeaveRequests request2 = new LeaveRequests();
            request2.id = 2;
            request2.name = "Def";
            request2.regNo = "2016CS454";
            request2.dateFrom = DateTime.Now;
            request2.dateTo = DateTime.Now;

            LeaveRequests.requests.Add(request1);
            LeaveRequests.requests.Add(request2);

            return View(LeaveRequests.requests);
        }

        // GET: LeaveRequests/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: LeaveRequests/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: LeaveRequests/Create
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

        // GET: LeaveRequests/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: LeaveRequests/Edit/5
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

        // GET: LeaveRequests/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: LeaveRequests/Delete/5
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
