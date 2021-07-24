using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace BABY_COLLECTION
{
    public partial class Index : System.Web.UI.Page
    {
        carts mycart;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblname.Text = "Welcome to Baby Collection " + (string)Session["username"] + ".";
            showpdts();
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
           /* con.Open();
            SqlCommand comm = new SqlCommand("Insert into shopping_sessions(LogOut) values('" + DateTime.Now + "')", con);
            comm.ExecuteNonQuery();
            con.Close();*/
            Session.Clear();
            Response.Redirect("Log In.aspx");
        }

        SqlConnection con = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=babycollection;Integrated Security=True");
        protected void showpdts()
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Products", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataSet dt = new DataSet();
            d.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }
        public void Addtocart(object sender, EventArgs e)
        {
            
            if (Session["username"] == null)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cant add items to cart.Please Log in or sign up if you dont have an account.');", true);
            }
            else
            {
                if (mycart == null)
                {
                   carts mycart = new carts();
                   Session["username"]= mycart;

                }
                con.Open();
                mycart = (carts) Session["username"];
                SqlCommand comm = new SqlCommand("Select(ProductName,ProductImage,price) From Products", con);
                SqlDataAdapter da = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataRow row = dt.Rows[1];
                mycart.InsertProd(new CartItem (row["ProductName"].ToString(), row["ProductImage"].ToString(), float.Parse(row["price"].ToString())));
                con.Close();
            }
            /*
              float[] totalprice = new float[25000000];
              float total = 0;
              con.Open();
              SqlCommand comm = new SqlCommand("select (ProductName,price,ProductImage) from Products", con);
              SqlDataAdapter da = new SqlDataAdapter(comm);
              DataTable dt = new DataTable();
              da.Fill(dt);
             
              for (int k = 0; k <= totalprice.Length; k++)
              {
                  total += totalprice[k];
              }
              Console.WriteLine(total);
              con.Close();   */
        }


    }
}