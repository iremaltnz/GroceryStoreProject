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
    public class CategoryDal : DbBaseDal
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["BakkalDb"].ConnectionString);
        SqlCommand sqlCommand;



        public void Add(Category category)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Category_Add", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Category_Name",category.c_name);

            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }


       

        public void Update(int id,Category category)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Category_Update", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Id", id);
            sqlCommand.Parameters.AddWithValue("Category_Name", category.c_name);
            sqlCommand.ExecuteNonQuery();

            sqlConnection.Close();
        }
    }
}