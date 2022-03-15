using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakkal.DataBase_Dal
{
    public class Stock
    {

        public int stock_id { get; set; }
        public int s_quantity { get; set; }

        public DateTime entry_date { get; set; }
        public DateTime end_date { get; set; }
    }
}