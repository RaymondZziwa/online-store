using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BABY_COLLECTION
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=babycollection;Integrated Security=True");
        protected void AddCategory_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into Categories(CategoryName) values('" + categoryname.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully inserted');", true);

        }

        protected void DeleteCategory_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete Categories where CategoryName = '" + categoryname.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Deleted');", true);
        }

        protected void SearchCategory_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Categories where CategoryName = '" + categoryname.Text+ "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void AddProduct_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into Products(CategoryId,ProductName,ProductDescription,ProductImage,Quantity,price,DateAdded) values('" + int.Parse(categoryid.Text) + "','"+productname.Text+"','"+desc.Text+"','"+productimage.Text+"','"+int.Parse(quantity.Text)+"','"+float.Parse(price.Text)+"','"+DateTime.Now+"')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully inserted');", true);

        }

        protected void DeleteProduct_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete Products where ProductName = '" + productname.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Deleted');", true);

        }

        protected void UpdateProductInfo_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Update Products set ProductDescription = '" + desc.Text + "',ProductImage = '"+productimage.Text+"',Quantity = '"+int.Parse(quantity.Text)+"', Price = '" + float.Parse(price.Text) + "' where ProductName = '" + productname.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully updated');", true);
        }

        protected void SearchProduct_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Products where ProductName = '" + productname.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            System.Data.DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
}