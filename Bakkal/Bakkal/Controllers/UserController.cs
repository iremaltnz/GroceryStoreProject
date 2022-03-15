using Bakkal.DataBase_Dal;
using Bakkal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Bakkal.Controllers
{
    public class UserController :Controller
    {
        UserDal userDal;

        public UserController()
        {
            userDal =new UserDal();
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
       
        public ActionResult Login(FormCollection form)
        {

            int result = userDal.UserCheck(form["u_name"], form["password"]);
          

            if (result != 0)
            {
                return RedirectToAction("List", "Product");


            }
            return RedirectToAction("Index", "Home");

        }


        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(FormCollection form)
        {
            User user = new User();
            user.user_name = form["user_name"].Trim();
            user.password = form["password"].Trim();
            user.name = form["name"].Trim();
            user.surname = form["surname"].Trim();
            user.e_mail = form["e_mail"].Trim();
            user.phone = form["phone"].Trim();

            user.state = true;
            user.role_id = Convert.ToInt32(form["role_id"].Trim());

            userDal.Add(user);

            return RedirectToAction("Login", "User");
        }
    }
}