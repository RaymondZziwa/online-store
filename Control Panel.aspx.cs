using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BABY_COLLECTION
{
    public partial class Control_Panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("Log In.aspx");
                // redirect to login page or somewhere else
            }
            NumofUsers();
            fdback();
            
        }
        SqlConnection con = new SqlConnection("Data Source=ADMIN\\SQLEXPRESS;Initial Catalog=babycollection;Integrated Security=True");
        public void NumofUsers() {
            con.Open();
            string num = "select Count(*) from UsersInfo";
            int count = 0;
            SqlCommand comm = new SqlCommand(num,con);
            count = (int)comm.ExecuteScalar();
            numusers.Text = count.ToString();
            con.Close();
        }
        public void fdback()
        {
            con.Open();
            string fd = "select Count(*) from fdback";
            int count = 0;
            SqlCommand comm = new SqlCommand(fd, con);
            count = (int)comm.ExecuteScalar();
            msgs.Text = count.ToString();
            con.Close();
        }

        protected void quit_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Log In.aspx");
        }
    }
}