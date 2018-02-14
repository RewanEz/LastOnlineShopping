using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineShopping.Models
{
    public class Order
    {
        public DateTime Date { get; set; }
        public decimal TotalPrice { get; set; }
        public string Status { get; set; }
        public string DeliveryAddress { get; set; }
        public string UserEmail { get; set; }
        public OrderItem[] Items { get; set; }


    }
}