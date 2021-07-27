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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 FillIn();
            }
            

        }
        SqlConnection con = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=babycollection;Integrated Security=True");
        private void FillIn()
        {
          con.Open();
          SqlCommand com = new SqlCommand("select * from cartitems",con);
          SqlDataAdapter d = new SqlDataAdapter(com);
          DataSet dt = new DataSet();
          d.Fill(dt);
          DataList1.DataSource = dt;
          DataList1.DataBind();
          con.Close();
          /*  shopcart.DataSource = dt;
          shopcart.DataBind();
            /* shopcart.DataSource = mycart.Items;
             shopcart.DataBind();
             if(mycart.Items.Count == 0)
               {
                   totalprice.Visible = false;
               }
               else
               {
                 // totalprice.Text = string.Format("Total: = {0,19:C}",cart.Totalp);
               }*/
        }
        protected void delete(object sender, EventArgs e)
        {
           
        }
        protected void buy_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand();
        }

        
    }
}