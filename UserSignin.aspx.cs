using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RopeyDVD
{
    public partial class UserSignin : System.Web.UI.Page
    {
       //string strConnString = ConfigurationManager.ConnectionStrings["Data Source=LAPTOP-45VLT9I7\\SQLEXPRESS;Initial Catalog=RopeyDVDS;Integrated Security=True" providername = "System.Data.SqlClient"].ConnectionString;
       // SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(strConnString);
            //com = new SqlCommand();
            //com.Connection = con;
            //com.CommandType = CommandType.Text;
            //com.CommandText = "Insert into Users values(@Username,@UserType,@UserPassword)";
            //com.Parameters.Clear();
            //com.Parameters.AddWithValue("@Username", Username.Text);
            //com.Parameters.AddWithValue("@UserType", DropDownList1.SelectedValue);
            //com.Parameters.AddWithValue("@UserPassword", UserPassword.Text);
            //if (con.State == ConnectionState.Closed)
            //    con.Open();
            //com.ExecuteNonQuery();
            //con.Close();
            //message.Text = "Successfully logged in";

            try
            {
                User u = new User();
                DataTable dt = u.CheckUser(Username.Text, DropDownList1.SelectedItem.Value, UserPassword.Text);

                if (dt.Rows.Count > 0)
                {
                    string username = dt.Rows[0]["Username"].ToString();
                    string usertype = dt.Rows[0]["UserType"].ToString();
                    string userpassword = dt.Rows[0]["UserPassword"].ToString();
                    if (username.Equals(Username.Text) && usertype.Equals(DropDownList1.SelectedItem.Value) && userpassword.Equals(UserPassword.Text))
                    {
                        Session["username"] = Username.Text;
                        Response.Redirect("AdminDashboard.aspx");
                    }
                    else
                    {
                        message.Text = "Wrong username and password";
                    }
                }
                else
                {
                    message.Text = "Wrong username and password1";
                }
            }
            catch(Exception ex)
            {
                message.Text = ex.Message;
            }

         }


        protected void UserPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}