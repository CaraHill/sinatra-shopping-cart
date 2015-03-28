using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Personal_Shopping_Cart.Models
{
    public class Product
    {
        private string p1;
        private string p2;

        public int Id { get; set; }
        public string NAME { get; set; }
        public double Price { get; set; }


        public Product( string name, double price)
        {
            
            NAME = name;
            Price = price;

        }

    
    }
}