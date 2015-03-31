using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shopping_Cart_Personal.Models
{
    public class Shopping_Cart
    {
        public int Id { get; set; }
        public int Number { get; set; }
        public Product Pruduct { get; set; }
    }
}