using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shopping_Cart_Personal.Models
{
    public class Shopping_Cart
    {
        public int Id { get; set; }
        public int Quantity { get; set; }
        public Product product { get; set; }

        public Shopping_Cart(int quantity, Product product)
        {
           Quantity = quantity;
            this.product = product;
        }

        public Shopping_Cart()
        {
            
        }

    }

   
}