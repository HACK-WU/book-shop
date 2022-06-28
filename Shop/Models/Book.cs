using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shop.Models
{
    public class Book
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Price { get; set; }
        public string Photo { get; set; }
        public string Kind { get; set; }
    }
}