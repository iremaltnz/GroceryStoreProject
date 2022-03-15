using Bakkal.DataBase_Dal;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bakkal.Controllers
{
    public class ProductController : Controller
    {
        // GET: Ürün

        ProductDal productDal;
        StockDal stockDal;
        Product product;
      
    
        public ProductController()
        {
            product = new Product();
            productDal = new ProductDal();
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

            product.category_id = Convert.ToInt32(form["c_id"]);
            product.name = form["name"];
            product.barcode = form["barcode"];
            product.prod_date= Convert.ToDateTime(form["prod_date"].ToString());

            product.cons_date = Convert.ToDateTime(form["cons_date"].ToString());
            product.price= Convert.ToUInt16( form["price"]);
            product.weight = Convert.ToUInt16(form["weight"]);
            product.stock_id = Convert.ToInt32( form["stock_id"]);
            product.brand_id= Convert.ToInt32(form["brand_id"]);
            product.color = form["color"];

           

            productDal.Add(product);
            return RedirectToAction("List", "Product");

        }

       
        public ActionResult List()
        {

            DataSet dataSet = productDal.List("Product_List");
            ViewBag.table = dataSet.Tables[0];

            return View(dataSet);
        }


       
        public ActionResult Delete(int id)
        {

            productDal.Delete("Product_Id","Product_Delete",id);
            return RedirectToAction("List", "Product");


        }

        public ActionResult Update(int id)
        {
            DataSet dataSet = productDal.GetById("Product_Id", "Product_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return View();
        }



        [HttpPost]
        public ActionResult Update(FormCollection form, int id)
        {

            product.category_id = Convert.ToInt32(form["c_id"]);
            product.name = form["name"];
            product.barcode = form["barcode"];
            product.prod_date = Convert.ToDateTime(form["prod_date"].ToString());

            product.cons_date = Convert.ToDateTime(form["cons_date"].ToString());
            product.price = Convert.ToUInt16(form["price"]);
            product.weight = Convert.ToUInt16(form["weight"]);
            product.stock_id = Convert.ToInt32(form["stock_id"]);
            product.brand_id = Convert.ToInt32(form["brand_id"]);
            product.color = form["color"];
            product.id = id;

            productDal.Update(id, product);

            DataSet dataSet = productDal.GetById("Product_Id", "Product_Id", id);
            ViewBag.emprecord = dataSet.Tables[0];

            return RedirectToAction("List", "Product");

        }
    }
}