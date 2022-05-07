using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RopeyDVD
{
    public class User_code
    {
        GlobalConnection gc = new GlobalConnection();
        public void AddUser(string Username, string UserType, string UserPassword)
        {
            SqlCommand cmd = new SqlCommand("Insert into users(Username,UserType,UserPassword)values (@Username,@UserType,@UserPassword)", gc.cn);
            cmd.Parameters.AddWithValue("@Username", Username);
            cmd.Parameters.AddWithValue("@UserType", UserType);
            cmd.Parameters.AddWithValue("@UserPassword", UserPassword);
            cmd.ExecuteNonQuery();
            gc.cn.Close();

        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM users";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "users");
            return ds.Tables[0];
        }
        public void DeleteUser(int Id)
        {
            SqlCommand cmd = new SqlCommand("Delete from users where UserNumber=@UserNumber", gc.cn);
            cmd.Parameters.AddWithValue("@usernUMBER", Id);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public void UpdateUser(int UserNumber, string Username, string UserType, string UserPassword)
        {
            SqlCommand cmd = new SqlCommand("Update users set " +
                "Username=@Username,UserType=@UserType,UserPassword=@UserPassword where UserNumber=@UserNumber", gc.cn);
            cmd.Parameters.AddWithValue("@Username", Username);
            cmd.Parameters.AddWithValue("@UserType", UserType);
            cmd.Parameters.AddWithValue("@UserPassword", UserPassword);
            cmd.Parameters.AddWithValue("@UserNumber", UserNumber);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }


    }
}