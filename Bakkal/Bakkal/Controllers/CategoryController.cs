
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Bakkal.DataBase_Dal;
using Bakkal.Models;

namespace Bakkal.Controllers
{
    public class CategoryController : Controller
    {
        // GET: Category

      
       
       

        CategoryDal categoryDal;
        Category category;

        public CategoryController()
        {

            categoryDal = new CategoryDal();
            category = new Category();
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
            category.c_name = form["k_adi"];
            categoryDal.Add(category);
            return RedirectToAction("List", "Category");

        }

       

        public ActionResult List()
        {
         
           DataSet dataSet= categoryDal.List("Category_List");
            ViewBag.table = dataSet.Tables[0];
        
            return View(dataSet);
        }

    
        public ActionResult Delete(int id)
        {
           
            categoryDal.Delete("Id","Category_Delete",id);
            return RedirectToAction("List" , "Category");

            
        }

        public ActionResult Update(int id)
        {
            DataSet dataSet = categoryDal.GetById("Category_Id", "id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return View();
        }



        [HttpPost]
        public ActionResult Update(FormCollection form, int id)
        {
            category.c_name = form["c_name"];
            category.category_id = id;

            categoryDal.Update(id, category);
            DataSet dataSet = categoryDal.GetById("Category_Id", "id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return RedirectToAction("List", "Category");

        }

    }
}