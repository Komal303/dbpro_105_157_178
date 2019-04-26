using SmartSchoolSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SmartSchoolSystem.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult StudentRegistration()
        {
            return View(); 
        }
        [HttpPost]
        public ActionResult StudentRegistration(StudentRegistrationViewModels s)
        {
            DB37Entities db = new DB37Entities();

            if (HelperClass.account != "Parent" && ParentRegistrationViewModels.p.Email == null)
            {
                return RedirectToAction("Index", "Home");
            }
            Parentstbl parent = new Parentstbl();
            if (HelperClass.account != "Parent")
            {
                
                parent.FirstName = ParentRegistrationViewModels.p.FirstName;

                parent.LastName = ParentRegistrationViewModels.p.LastName;

                parent.PhoneNumber = ParentRegistrationViewModels.p.PhoneNumber;

                parent.MailAddress = ParentRegistrationViewModels.p.Email;

                parent.CNIC = ParentRegistrationViewModels.p.CNIC;

                parent.PrntPassword = ParentRegistrationViewModels.p.PrntPassword;
                parent.ApprovalStatusId = db.ApprovalStatustbls.Where(t=>t.Name.Equals("pending")).FirstOrDefault().Id;
                db.Parentstbls.Add(parent);

            }

            Studentstbl student = new Studentstbl();
            student.FirstName = s.FirstName;
            student.LastName = s.LastName;
            student.ActiveStatusId = db.ActiveStatustbls.Where(t => t.Name.Equals("Active")).FirstOrDefault().Id;
            student.ApprovalStatusId = db.ApprovalStatustbls.Where(t => t.Name.Equals("pending")).FirstOrDefault().Id;
            student.Username = s.Username;
            student.StdPassword = s.StdPassword;

            db.Studentstbls.Add(student);

            
            db.SaveChanges();

            DB37Entities db2 = new DB37Entities();


            ParentStudenttbl pstbl = new ParentStudenttbl();
            pstbl.StudentId = db2.Studentstbls.Where(t => t.Username == student.Username).FirstOrDefault().Id;
            pstbl.ParentId = db2.Parentstbls.Where(t => t.MailAddress == parent.MailAddress).FirstOrDefault().Id;

            db2.ParentStudenttbls.Add(pstbl);

            db2.SaveChanges();
            
            
            return RedirectToAction("Index","Home");
        }


        // GET: Student/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Student/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Student/Create
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

        // GET: Student/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Student/Edit/5
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

        // GET: Student/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Student/Delete/5
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
