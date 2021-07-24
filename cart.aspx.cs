using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace BABY_COLLECTION
{
    public partial class cart : System.Web.UI.Page
    {
        carts mycart;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mycart = (cart)Session["username"];
                 FillIn();
            }
            

        }

        private void FillIn()
        {
          shopcart.DataSource = carts.Items;
          shopcart.DataBind();
          if(mycart.Items.Count == 0)
            {
                totalprice.Visible = false;
            }
            else
            {
               // totalprice.Text = cart.Total();
            }
        }
    }
}