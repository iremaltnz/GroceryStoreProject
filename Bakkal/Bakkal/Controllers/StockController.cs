using Bakkal.DataBase_Dal;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bakkal.Controllers
{
    public class StockController : Controller
    {
        // GET: Stok

        StockDal stockDal;
        Stock stock;

        public StockController()
        {
            stock = new Stock();
            stockDal = new StockDal();
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

            stock.s_quantity = Convert.ToInt32(form["s_quantity"].ToString());
       
            stock.entry_date = Convert.ToDateTime(form["entry_date"].ToString());

            stock.end_date = Convert.ToDateTime(form["end_date"].ToString());
      

            stockDal.Add(stock);
            return RedirectToAction("List", "Stock");

        }


       
        public ActionResult List()
        {

            DataSet dataSet = stockDal.List("Stock_List");
            ViewBag.table = dataSet.Tables[0];

            return View(dataSet);
        }


     
        public ActionResult Delete(int id)
        {

            stockDal.Delete("Stock_Id","Stock_Delete",id);
            return RedirectToAction("List", "Stock");


        }


        public ActionResult Update(int id)
        {
            DataSet dataSet = stockDal.GetById("Stock_Id", "Stock_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return View();
        }



        [HttpPost]
        public ActionResult Update(FormCollection form, int id)
        {
            stock.s_quantity = Convert.ToInt32(form["s_quantity"].ToString());

            stock.entry_date = Convert.ToDateTime(form["entry_date"].ToString());

            stock.end_date = Convert.ToDateTime(form["end_date"].ToString());
            stock.stock_id = id;

            stockDal.Update(id, stock);

            DataSet dataSet = stockDal.GetById("Stock_Id", "Stock_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return RedirectToAction("List", "Stock");

        }
    }
}