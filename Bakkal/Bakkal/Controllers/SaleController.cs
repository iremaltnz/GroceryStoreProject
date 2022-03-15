using Bakkal.DataBase_Dal;
using Bakkal.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bakkal.Controllers
{
    public class SaleController : Controller
    {
        // GET: Satis

        SaleDal saleDal;
        Sale sale;
      
        public SaleController()
        {

            saleDal = new SaleDal();
            sale = new Sale();
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Add()
        {
            return View();

        }


      
        [HttpPost]
        public ActionResult Add(FormCollection form)
        {
            sale.user_id = Convert.ToInt32(form["id"]);
            sale.quantity = Convert.ToUInt16(form["quantity"]);
            sale.date = Convert.ToDateTime(form["date"]);
            sale.state = form["state"].Trim();
            sale.price = Convert.ToUInt16(form["price"]);
            sale.product_id = Convert.ToUInt16(form["product_id"]);
            sale.discount = Convert.ToUInt16(form["discount"]);

            
           
            saleDal.Add(sale);
            return RedirectToAction("List", "Sale");

        }

        

        public ActionResult List()
        {

            DataSet dataSet = saleDal.List("Sale_List");
            ViewBag.table = dataSet.Tables[0];

            return View(dataSet);
        }


      

        public ActionResult Delete(int id)
        {

            saleDal.Delete("Sale_Id","Sale_Delete",id);
            return RedirectToAction("List", "Sale");


        }



        public ActionResult Update(int id)
        {
            DataSet dataSet = saleDal.GetById("Sale_Id", "Sale_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return View();
        }



        [HttpPost]
        public ActionResult Update(FormCollection form, int id)
        {

            sale.user_id = Convert.ToInt32(form["id"]);
            sale.quantity = Convert.ToUInt16(form["quantity"]);
            sale.date = Convert.ToDateTime(form["date"]);
            sale.state = form["state"].Trim();
            sale.price = Convert.ToUInt16(form["price"]);
            sale.product_id = Convert.ToUInt16(form["product_id"]);
            sale.discount = Convert.ToUInt16(form["discount"]);
            sale.id = id;

            saleDal.Update(id, sale);
            DataSet dataSet = saleDal.GetById("Sale_Id", "Sale_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return RedirectToAction("List", "Sale");

        }
    }
}