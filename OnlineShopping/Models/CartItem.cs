using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineShopping.Models
{
    public class CartItem
    {

        public int Quantity { get; set; }

        public int ProductId { get; set; }
        public int Price { get; set; }
        public string Name { get; set; }



    }
}