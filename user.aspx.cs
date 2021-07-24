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
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=babycollection;Integrated Security=True");
        protected void AddUser_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into UsersInfo values('" + uname.Text + "','" + fname.Text + "','" + lname.Text + "','" + email.Text + "' ,'" + contact.Text + "','" + city.Text + "','" + address.Text + "','" + pwd.Text + "','" + DateTime.Now + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully inserted');", true);
            
        }

        protected void DeleteUser_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete UsersInfo where username = '" + uname.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully Deleted');", true);
            
        }

        protected void UpdateUserInfo_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Update UsersInfo set email =  '" + email.Text + "',contact = '" + contact.Text + "',city = '" + city.Text + "',uaddress= '"+address.Text+"',upassword= '"+pwd.Text+ "' where username = '" + uname.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('successfully updated');", true);
            
        }

        protected void SearchUser_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from UsersInfo where username = '" + uname.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            System.Data.DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}