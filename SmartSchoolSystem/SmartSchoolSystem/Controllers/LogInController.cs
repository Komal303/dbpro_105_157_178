﻿using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class LogInController : Controller
    {
        // GET: LogIn
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult LogIn()
        {
            return View();
        }
        // GET: LogIn/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: LogIn/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: LogIn/Create
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

        // GET: LogIn/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: LogIn/Edit/5
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

        // GET: LogIn/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: LogIn/Delete/5
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
        public ActionResult LogOut()
        {
            HelperClass.account = "";
            return RedirectToAction("Index", "Home");
        }

        
        public ActionResult LogInPost(LogIn login)
        {
            
            try
            {
                return RedirectToAction("Index", "Home");
            }
            catch
            {
                return View();
            }
        }
        public ActionResult LogInRequest(LogIn login,string account)
        {
            return View();
        }
        public ActionResult SetAdmin()
        {
            HelperClass.account = "Admin";
            return RedirectToAction("Index", "Home");
        }
        public ActionResult SetStudent()
        {
            HelperClass.account = "Student";
            return RedirectToAction("Index", "Home");

        }
        public ActionResult SetParent()
        {
            HelperClass.account = "Parent";
            return RedirectToAction("Index", "Home");
        }

    }
}
