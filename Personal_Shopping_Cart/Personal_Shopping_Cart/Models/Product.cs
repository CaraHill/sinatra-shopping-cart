using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Personal_Shopping_Cart.Models
{
    public class Product
    {
        public int Id{ get; set; }
        public string NAME { get; set; }
        public int Quantity { get; set; }
        public double Price { get; set; }
    }
}