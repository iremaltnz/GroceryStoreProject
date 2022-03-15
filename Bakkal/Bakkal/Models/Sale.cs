using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakkal.Models
{
    public class Sale
    {
       

        public int id { get; set; }
        public DateTime date { get; set; }
        public string state { get; set; }
        public int user_id { get; set; }
        public float quantity { get; set; }
        public float price { get; set; }
        public float discount { get; set; }
        public int product_id { get; set; }

    }
}