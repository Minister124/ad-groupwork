using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RopeyDVD
{
    public class User
    {
        //SqlCommand cmd = new SqlCommand();
        GlobalConnection gc = new GlobalConnection();
        public DataTable CheckUser(string username, string usertype, string userpassword)
        {

            string sql = "SELECT * FROM Users where Username='" + username + "' and UserType='" +
                usertype + "' and UserPassword = '" + userpassword + "'";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "Users");
            return ds.Tables[0];

        }
    }
}