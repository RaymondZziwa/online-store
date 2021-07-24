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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=babycollection;Integrated Security=True");
        protected void signup_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select username  from UsersInfo where username = '" + username.Text + "' ", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('UserName already in use.');", true);
            }
            else
            {
                SqlCommand comm = new SqlCommand("Insert into UsersInfo values('" + username.Text + "','" + fname.Text + "','" + lname.Text + "','" + email.Text + "' ,'" + contact.Text + "','" + city.Text + "','"+address.Text+"','"+pwd.Text+"','"+DateTime.Now+"')", con);
                comm.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('You have been successfully registered.');", true);
                Session["username"] = username.Text;
                Response.Redirect("Index.aspx");
            }
            con.Close();

        }
    }
}