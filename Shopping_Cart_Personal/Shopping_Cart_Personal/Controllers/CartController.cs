using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shopping_Cart_Personal.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        public ActionResult Index()
        {
            return View();
        }

       // public ActionResult Order()
       // {
          //  if(customer selects something to buy add to the list of items)
          // else(return nothing)
           
       // }
    }
}