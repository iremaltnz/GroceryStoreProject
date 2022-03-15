using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bakkal.Models
{
    public class User
    {
        public int user_id { get; set; }
        public string user_name { get; set; }
        public string password { get; set; }
        public string name { get; set; }
        public string surname { get; set; }
        public string e_mail { get; set; }
        public string phone { get; set; }

        public bool state { get; set; }
        public int role_id { get; set; }

    }
}