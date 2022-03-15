using Bakkal.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bakkal.DataBase_Dal
{
    public class RoleDal:DbBaseDal
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["BakkalDb"].ConnectionString);
        SqlCommand sqlCommand;

        public void Add(Role rol)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Role_Add", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Role_Name", rol.r_name);

            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

        public void Update(int id, Role role)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Role_Update", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Role_Id", id);
            sqlCommand.Parameters.AddWithValue("Role_Name", role.r_name);
            sqlCommand.ExecuteNonQuery();

            sqlConnection.Close();


        }

    }
}