using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApplication1
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {

    

        [WebMethod]
        public double getPrice(int itemId,int qty)
        {
            SupDataSetTableAdapters.ItemPriceTableAdapter adp =
                new SupDataSetTableAdapters.ItemPriceTableAdapter();
            int avai_qty =(int) adp.getQuantity(itemId);
            if (avai_qty >= qty)
            {
                double price = (int)adp.getPrice(itemId);
                return price;

            }
            return 0;
        }

        [WebMethod]
        public void updateQuantity(int itemId, int qty)
        {
            SupDataSetTableAdapters.ItemPriceTableAdapter adp =
                new SupDataSetTableAdapters.ItemPriceTableAdapter();
            int avai_qty = (int)adp.getQuantity(itemId);
            int new_qty = avai_qty - qty;
            adp.UpdateQuantity((short?)new_qty, itemId);
            
        }
        [WebMethod]
        public void placeOrder(string des, string cus, string add)
        {
            SupDataSetTableAdapters.OrderTableAdapter adp =
                new SupDataSetTableAdapters.OrderTableAdapter();
            adp.Insert(des, cus, DateTime.Now, add);

        }
    }
}
