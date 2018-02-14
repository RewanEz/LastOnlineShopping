using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineShopping.Models
{
    public class Category
    {
        public string Name { get; set; }
        public int IsDeleted { get; set; }
        public Product[] Products { get; set; }
    }
}