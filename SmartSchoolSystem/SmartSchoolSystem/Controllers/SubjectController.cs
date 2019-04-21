using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class SubjectController : Controller
    {
        // GET: Subject
        public ActionResult Index()
        {
            SubjectViewModel.subjectList.Clear();

            SubjectViewModel.sampleSubject.name = "English";
            SubjectViewModel.subjectList.Add(SubjectViewModel.sampleSubject);

            SubjectViewModel.sampleSubject.name = "Physics";
            SubjectViewModel.subjectList.Add(SubjectViewModel.sampleSubject);

            SubjectViewModel.sampleSubject.name = "Math";
            SubjectViewModel.subjectList.Add(SubjectViewModel.sampleSubject);

            return View(SubjectViewModel.subjectList);
        }

        // GET: Subject/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Subject/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Subject/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index", "Subject");
            }
            catch
            {
                return View();
            }
        }

        // GET: Subject/Edit/5
        public ActionResult Edit(int id)
        {
            return View(SubjectViewModel.subjectList[id]);
        }

        // POST: Subject/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index", "Subject");
            }
            catch
            {
                return View();
            }
        }

        // GET: Subject/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Subject/Delete/5
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
