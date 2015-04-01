using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;

namespace Shopping_Cart_Personal.Models
{
    public class Product
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public double Price { get; set; }

        public string ImageUrl { get; set; }

       // public virtual Shopping_Cart Cart { get; set; }

        public int Quantity { get; set; }

        public Product(string name, double price,string url)
        {
            Name = name;

            Price = price;

            ImageUrl = url;
        }

        public Product()
        {
            
        }

    }
}