using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Card : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                ShopingCart cart = (ShopingCart)Session["cart"];
                GridView1.DataSource = cart.Items;
                GridView1.DataBind();
                if (cart.Items.Count > 0)
                {

                    Label1.Text = string.Format("Total={0.0.00}", cart.Total);
                    Label1.Visible = true;
                }
                Label1.Visible = false;

                }


                
            }

        protected void Order_Click(object sender, EventArgs e)
        {

        }
    }
}