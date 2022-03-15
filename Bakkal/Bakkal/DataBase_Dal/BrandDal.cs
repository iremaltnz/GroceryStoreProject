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
    public class BrandDal : DbBaseDal
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["BakkalDb"].ConnectionString);
        SqlCommand sqlCommand;


        public void Add(Brand marka)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Brand_Add", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Brand_Name", marka.m_name);

            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }


 
        public void Update(int id , Brand brand)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Brand_Update", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Brand_Id", id);
            sqlCommand.Parameters.AddWithValue("Brand_Name",brand.m_name);
            sqlCommand.ExecuteNonQuery();

            sqlConnection.Close();
            
           
        }

     
    }
}