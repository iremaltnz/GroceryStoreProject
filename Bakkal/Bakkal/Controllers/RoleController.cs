using Bakkal.DataBase_Dal;
using Bakkal.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bakkal.Controllers
{
    public class RoleController : Controller
    {
        // GET: Rol

        RoleDal roleDal;
        Role role;
     
     
        public RoleController()
        {
            roleDal = new RoleDal();
            role = new Role();
        }
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Add()
        {
            return View();

        }

      

        public ActionResult List()
        {

            DataSet dataSet = roleDal.List("Role_List");
            ViewBag.table = dataSet.Tables[0];

            return View(dataSet);
        }


        
        [HttpPost]
        public ActionResult Add(FormCollection form)
        {
            role.r_name = form["r_name"];
            roleDal.Add(role);
            return RedirectToAction("List", "Role");

        }


      
        public ActionResult Delete(int id)
        {

            roleDal.Delete("Role_Id","Role_Delete",id);
            return RedirectToAction("List", "Role");


        }

        public ActionResult Update(int id)
        {
            DataSet dataSet = roleDal.GetById("Role_Id", "Role_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return View();
        }



        [HttpPost]
        public ActionResult Update(FormCollection form, int id)
        {
            role.r_name = form["r_name"];
            role.role_id = id;

            roleDal.Update(id, role);
            DataSet dataSet = roleDal.GetById("Role_Id", "Role_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return RedirectToAction("List", "Role");

        }
    }
}