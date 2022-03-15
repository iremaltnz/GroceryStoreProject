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
    public class SaleDal:DbBaseDal
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["BakkalDb"].ConnectionString);
        SqlCommand sqlCommand;

   
        public void Add(Sale sale)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Sale_Add", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Date", sale.date);
            sqlCommand.Parameters.AddWithValue("State", sale.state);
            sqlCommand.Parameters.AddWithValue("User_Id", sale.user_id);

            sqlCommand.Parameters.AddWithValue("Quantity", sale.quantity);
            sqlCommand.Parameters.AddWithValue("Price", sale.price);
            sqlCommand.Parameters.AddWithValue("Discount", sale.discount);
            sqlCommand.Parameters.AddWithValue("Product_Id", sale.product_id);

            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }


     
        public void Update(int id ,Sale sale)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Sale_Update", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Sale_Id", id);
            sqlCommand.Parameters.AddWithValue("Date", sale.date);
            sqlCommand.Parameters.AddWithValue("State", sale.state);
            sqlCommand.Parameters.AddWithValue("User_Id", sale.user_id);

            sqlCommand.Parameters.AddWithValue("Quantity", sale.quantity);
            sqlCommand.Parameters.AddWithValue("Price", sale.price);
            sqlCommand.Parameters.AddWithValue("Discount", sale.discount);
            sqlCommand.Parameters.AddWithValue("Product_Id", sale.product_id);

            sqlCommand.ExecuteNonQuery();

            sqlConnection.Close();
        }

        
    }
}