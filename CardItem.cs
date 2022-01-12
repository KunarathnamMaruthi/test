using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class CardItem
    {
        private int itemId;
        private string name;
        private float price;
        private int quantity;
        private string image;

        public int ItemId { get => itemId; set => itemId = value; }
        public string Name { get => name; set => name = value; }
        public float Price { get => price; set => price = value; }
        public int Quantity { get => quantity; set => quantity = value; }
        public string Image { get => image; set => image = value; }
   
        public float subTotal
        { get { return price * quantity; } }

        
    }


}