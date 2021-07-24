using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace BABY_COLLECTION
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection con = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=babycollection;Integrated Security=True");
        protected void login_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select username,upassword from UsersInfo where username='" + username.Text + "'and upassword='" + pwd.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count >= 1)
            {
                con.Open();
                SqlCommand comm = new SqlCommand("Insert into shopping_sessions(username,Createdat) values('" + Session["username"] + "','" + DateTime.Now + "')", con);
                comm.ExecuteNonQuery();
                con.Close();
                Session["username"] = username.Text;
                Response.Redirect("index.aspx");
            }
            else if (username.Text == "Admin" && pwd.Text == "admin101")
            {
                Session["Admin"] = username.Text;
                Response.Redirect("Control Panel.aspx");
            }
            else
            {
                MessageBox.Show("Invalid Login please check username and password");
            }
        }
    }
}