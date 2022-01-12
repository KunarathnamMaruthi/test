using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class ItemStatus
    {
        private int itemID;
        private int quantity;
        private float price;

        public int ItemID { get => itemID; set => itemID = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        public float Price { get => price; set => price = value; }
    }
}