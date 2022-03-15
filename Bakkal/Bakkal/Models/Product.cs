using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakkal.DataBase_Dal
{
    public class Product
    {
        public int id { get; set; }
        public string name { get; set; }
        public string barcode { get; set; }
        public DateTime prod_date { get; set; }
        public DateTime cons_date { get; set; }
        public float price { get; set; }
        public float weight { get; set; }
        public string color { get; set; }
        public int brand_id { get; set; }
        public int stock_id { get; set; }
        public int category_id { get; set; }
    }
}