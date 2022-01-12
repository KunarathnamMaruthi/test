using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        private List<ItemStatus> orderItems = new List<ItemStatus>();

        public string ItemId { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            SupServiceReference1.WebServiceSoapClient sup = new SupServiceReference1.WebServiceSoapClient();

            if (Session["card"] != null)
            {
                ShopingCart cart = (ShopingCart)Session["card"];
                foreach(CardItem i in cart.Items)
                {
                    double pri = sup.getPrice(i.ItemId, i.Quantity);
                    orderItems.Add(new ItemStatus
                    {
                        ItemID=i.ItemId,
                        Quantity=i.Quantity,
                        Price= (float)pri


                    });
                }
                GridView1.DataSource = orderItems;
                GridView1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SupServiceReference1.WebServiceSoapClient sup = new SupServiceReference1.WebServiceSoapClient();

            string des = "";
            foreach(ItemStatus i in orderItems)
            {
             if(i.Price != 0)
                {
                    sup.updateQuantity(i.ItemID, i.Quantity);
                    des += ItemId + "," + i.Quantity + "," + i.Price + "////";
                }
            }
            sup.placeOrder(des, "Jake", "Colombo");
            Response.Write("Order Place..");
            Session.Abandon();

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Server.Transfer("~\\Home.aspx");
        }
    }
}