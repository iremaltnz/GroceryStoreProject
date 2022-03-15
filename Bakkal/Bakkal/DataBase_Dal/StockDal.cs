using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bakkal.DataBase_Dal
{
    public class StockDal:DbBaseDal
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["BakkalDb"].ConnectionString);
        SqlCommand sqlCommand;

 

        public void Add(Stock stock)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Stock_Add", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.AddWithValue("Stock_Quantity", stock.s_quantity);
            sqlCommand.Parameters.AddWithValue("Stock_Entry_Date", stock.entry_date);
            sqlCommand.Parameters.AddWithValue("Stock_End_Date", stock.end_date);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }



        public void Update(int id, Stock stock)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Stock_Update", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue("Stock_Id", id);
            sqlCommand.Parameters.AddWithValue("Stock_Quantity", stock.s_quantity);
            sqlCommand.Parameters.AddWithValue("Stock_Entry_Date", stock.entry_date);
            sqlCommand.Parameters.AddWithValue("Stock_End_Date", stock.end_date);
            sqlCommand.ExecuteNonQuery();

            sqlConnection.Close();


        }



    }
}