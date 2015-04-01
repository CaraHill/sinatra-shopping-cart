using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shopping_Cart_Personal.Models;

namespace Shopping_Cart_Personal.Controllers
{
   
  
    public class CartController : Controller
    {
         ApplicationDbContext db = new ApplicationDbContext();
        // GET: Cart
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Order(int id)
        {
            if (Session != null)
            {
                Product product = db.Products.Single(s => s.Id == id);
                Shopping_Cart cart =new Shopping_Cart();
                cart.products.Add(product);
                cart.Name="dhara";
                db.Carts.AddOrUpdate(cart);
                //db.Carts.Add(cart);
                db.SaveChanges();
            }

            return RedirectToAction("Index");
            // if(customer selects something to buy add to the list of items)
            //else(return nothing)
        }
    }
}