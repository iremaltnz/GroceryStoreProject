using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bakkal.DataBase_Dal
{
   
    public class DbBaseDal
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["BakkalDb"].ConnectionString);
        SqlCommand sqlCommand;

        public void Delete(string parameterName , string procedureName, int id)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand(procedureName, sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue(parameterName, id);
            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }

        public DataSet List(string procedureName)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand(procedureName, sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);

            sqlConnection.Close();

            return dataSet;
        }


        public DataSet GetById(string procedureName , string parameterName, int id)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand(procedureName, sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCommand.Parameters.AddWithValue(parameterName, id);
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            sqlConnection.Close();

            return dataSet;
        }

    }
}