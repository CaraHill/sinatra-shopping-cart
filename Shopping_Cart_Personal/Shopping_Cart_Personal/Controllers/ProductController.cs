using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shopping_Cart_Personal.Models;

namespace Shopping_Cart_Personal.Controllers
{
    public class ProductController : Controller
    {
        ApplicationDbContext db = new ApplicationDbContext();
        // GET: Product
        public ActionResult Index()
        {
            return View(db.Products.ToList());
        }

        public ActionResult Detail(int? id)
        {
            return View(db.Products.Single(s=>s.Id == id));
        }
    }
}