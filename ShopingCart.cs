using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class ShopingCart
    {
        private List<CardItem> items;
        public List<CardItem> Items { get => items; set => items = value; }
    
        public ShopingCart()
        {
            items = new List<CardItem>();

        }

        public void insertItem (int id,string name,int qun,float pri,string img)
        {
            var item = (from i in items
                       where i.ItemId == id
                       select i).SingleOrDefault();
            if (item != null)
            {
                items.Add(new CardItem()
                {
                    ItemId = id,
                    Name = name,
                    Quantity = qun,
                    Price = pri,
                    Image = img
                });
            }
            else
                item.Quantity += qun;
        }

        public void delete(int index)
        {
            items.RemoveAt(index);
        }
        public float Total
        {
            get
            {
                var tot = (from i in items
                           select i.subTotal).Sum();
                return tot;
                    
            }
        }
    }
}