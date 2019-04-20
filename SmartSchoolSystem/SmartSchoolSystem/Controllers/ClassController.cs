using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SmartSchoolSystem.Models;
namespace SmartSchoolSystem.Controllers
{
    public class ClassController : Controller
    {
        
        // GET: Class
        public ActionResult Index()
        {
            ClassesViewModels.ClassesList.Clear();
            ClassesViewModels.sampleclass.Name = "10th Aqua";
            ClassesViewModels.ClassesList.Add(ClassesViewModels.sampleclass);
            ClassesViewModels.sampleclass.Name = "10th Aqua";
            ClassesViewModels.ClassesList.Add(ClassesViewModels.sampleclass);
            ClassesViewModels.sampleclass.Name = "10th Aqua";
            ClassesViewModels.ClassesList.Add(ClassesViewModels.sampleclass);
            ClassesViewModels.sampleclass.Name = "10th Aqua";
            ClassesViewModels.ClassesList.Add(ClassesViewModels.sampleclass);
            return View(ClassesViewModels.ClassesList);
        }

        // GET: Class/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Class/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Class/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index","Class");
            }
            catch
            {
                return View();
            }
        }

        // GET: Class/Edit/5
        public ActionResult Edit(int id)
        {
            
            return View(ClassesViewModels.ClassesList[id]);
        }

        // POST: Class/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index","Class");
            }
            catch
            {
                return View();
            }
        }

        // GET: Class/Delete/5
        public ActionResult Delete(int id)
        {
            ClassesViewModels.ClassesList.RemoveAt(id);
            return RedirectToAction("Index", "Class");
        }

        // POST: Class/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index","Class");
            }
            catch
            {
                return View();
            }
        }
    }
}
