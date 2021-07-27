using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace BABY_COLLECTION
{
    public static class DataAccess
    {
        private static string constr;
         static DataAccess()
        {
            constr = WebConfigurationManager.ConnectionStrings["babycollectionConnectionString"].ConnectionString;
        }
        public static DataTable selectq(string query)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            dt.Load(cmd.ExecuteReader());
            con.Close();
            return dt; 
        }


    }
}