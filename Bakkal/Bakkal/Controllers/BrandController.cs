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
    public class BrandController : Controller
    {
        // GET: Brand

        BrandDal markaDal;
        Brand marka;

        public BrandController()
        {
            marka = new Brand();
            markaDal = new BrandDal();
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
            marka.m_name= form["m_name"];
            markaDal.Add(marka);
            return RedirectToAction("List", "Brand");

        }

       
        public ActionResult List()
        {
           
            DataSet dataSet = markaDal.List("Brand_List");
            ViewBag.table = dataSet.Tables[0];

            return View(dataSet);
        }

      
        public ActionResult Delete(int id)
        {

            markaDal.Delete("Brand_Id","Brand_Delete",id);
            return RedirectToAction("List", "Brand");


        }

        public ActionResult Update(int id)
        {
            DataSet dataSet = markaDal.GetById("Brand_Id","Brand_Id",id );
            ViewBag.emprecord = dataSet.Tables[0];

            return View();
        }

       

        [HttpPost]
        public ActionResult Update(FormCollection form , int id)
        {
            marka.m_name = form["m_name"];
            marka.marka_id = id;

            markaDal.Update(id,marka);
            DataSet dataSet = markaDal.GetById("Brand_Id", "Brand_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return RedirectToAction("List", "Brand");

        }
    }
}