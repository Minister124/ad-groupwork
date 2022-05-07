using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RopeyDVD
{
    public partial class User1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }
        protected void ListView()
        {
            try
            {
                User_code p = new User_code();
                GV.DataSource = p.SelectRecords();
                GV.DataBind();
                p = null;
            }
            catch (Exception ex)
            {
                msg_label.Text = ex.Message;
            }
        }
        protected void UaddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                User_code p = new User_code();
                p.AddUser(UName_txt.Text, UType_txt.Text, UPassword_txt.Text);
                msg_label.Text = "Your data is successfully stored";
            }
            catch (Exception ex)
            {
                msg_label.Text = ex.Message;
            }

        }

        protected void UresetBtn_Click(object sender, EventArgs e)
        {
            UNumber_txt.Text =
            UName_txt.Text =
            UType_txt.Text =
            UPassword_txt.Text = "";
        }

        protected void UdeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                User_code p = new User_code();
                p.DeleteUser(Convert.ToInt32(UNumber_txt.Text));
                // txtImage.SaveAs(Server.MapPath("~/admin/images/" + txtImage.FileName));

                msg_label.Text = "Your data is deleteted successfully :)";
                UNumber_txt.Text = UName_txt.Text = UType_txt.Text = UPassword_txt.Text = "";
                ListView();

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }

        }
        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            GlobalConnection gc = new GlobalConnection();
            SqlCommand cmd = new SqlCommand();
            //cmd.Connection = gc.cn;
            string index = Convert.ToString(e.CommandArgument);
            string strData = "Select * From Users Where UserNumber='" + index + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "Users");
            DataTable dt = ds.Tables[0];

            UNumber_txt.Text = dt.Rows[0]["UserNumber"].ToString();
            UName_txt.Text = dt.Rows[0]["Username"].ToString();
            UType_txt.Text = dt.Rows[0]["UserType"].ToString();
            UPassword_txt.Text = dt.Rows[0]["UserPassword"].ToString();
        }

        protected void uUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                User_code p = new User_code();
                p.UpdateUser(Convert.ToInt32(UNumber_txt.Text), UName_txt.Text, UType_txt.Text, UPassword_txt.Text);
                msg_label.Text = "Updated";
                UNumber_txt.Text = UName_txt.Text = UType_txt.Text = UPassword_txt.Text = "";
                ListView();
                msg_label.Text = "Your data is Updates successfully :>";

            }
            catch (Exception ex)
            {

                msg_label.Text = ex.Message;
            }
        }
    }
}