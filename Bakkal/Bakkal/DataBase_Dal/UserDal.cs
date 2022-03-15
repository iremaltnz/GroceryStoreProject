using Bakkal.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bakkal.DataBase_Dal
{
    public class UserDal:DbBaseDal
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["BakkalDb"].ConnectionString);
        SqlCommand sqlCommand;

        public void Add(User user)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("User_Add", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("User_Name", user.user_name);
            sqlCommand.Parameters.AddWithValue("Password", user.password);
            sqlCommand.Parameters.AddWithValue("Name", user.name);
            sqlCommand.Parameters.AddWithValue("Surname", user.surname);
            sqlCommand.Parameters.AddWithValue("E_mail", user.e_mail);
            sqlCommand.Parameters.AddWithValue("Phone", user.phone);
            sqlCommand.Parameters.AddWithValue("State", user.state);
            sqlCommand.Parameters.AddWithValue("Role_Id", user.state);

            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

        public int UserCheck(string User_Name , string Password)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("User_Check", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("User_Name", User_Name);
            sqlCommand.Parameters.AddWithValue("Password", Password);

            SqlParameter temp = new SqlParameter();
            temp.ParameterName = "@isVaid";
            temp.SqlDbType = System.Data.SqlDbType.Bit;
            temp.Direction = System.Data.ParameterDirection.Output;

            sqlCommand.Parameters.Add(temp);

            sqlCommand.ExecuteNonQuery();

          
            sqlConnection.Close();

            return Convert.ToInt32(temp.Value);
        }
    }
}