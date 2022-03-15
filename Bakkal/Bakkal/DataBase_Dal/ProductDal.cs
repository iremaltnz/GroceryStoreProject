using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bakkal.DataBase_Dal
{
    public class ProductDal:DbBaseDal
    {
        SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["BakkalDb"].ConnectionString);
        SqlCommand sqlCommand;

     
        public void Add(Product product)
        {
            sqlConnection.Open();
            sqlCommand = new SqlCommand("Product_Add", sqlConnection);

            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
        
            sqlCommand.Parameters.AddWithValue("Product_Name", product.name);
            sqlCommand.Parameters.AddWithValue("Product_Barcode", product.barcode);
            sqlCommand.Parameters.AddWithValue("Product_Prod_Date", product.prod_date);
            sqlCommand.Parameters.AddWithValue("Product_Cons_Date", product.cons_date);
            sqlCommand.Parameters.AddWithValue("Product_Price", product.price);
            sqlCommand.Parameters.AddWithValue("Product_Weight", product.weight);
            sqlCommand.Parameters.AddWithValue("Product_Color", product.color);
            sqlCommand.Parameters.AddWithValue("Product_Stock_Id", product.stock_id);
            sqlCommand.Parameters.AddWithValue("Product_Category_Id", product.category_id);
            sqlCommand.Parameters.AddWithValue("Product_Brand_Id", product.brand_id);

            sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();
        }


     

      
            public void Update(int id, Product product)
            {
                sqlConnection.Open();

                
            
            sqlCommand = new SqlCommand("Product_Update", sqlConnection);
            sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

            sqlCommand.Parameters.AddWithValue("Product_Id", id);
            sqlCommand.Parameters.AddWithValue("Product_Name", product.name);
            sqlCommand.Parameters.AddWithValue("Product_Barcode", product.barcode);
            sqlCommand.Parameters.AddWithValue("Product_Prod_Date", product.prod_date);
            sqlCommand.Parameters.AddWithValue("Product_Cons_Date", product.cons_date);
            sqlCommand.Parameters.AddWithValue("Product_Price", product.price);
            sqlCommand.Parameters.AddWithValue("Product_Weight", product.weight);
            sqlCommand.Parameters.AddWithValue("Product_Color", product.color);
            sqlCommand.Parameters.AddWithValue("Product_Stock_Id", product.stock_id);
            sqlCommand.Parameters.AddWithValue("Product_Category_Id", product.category_id);
            sqlCommand.Parameters.AddWithValue("Product_Brand_Id", product.brand_id);

            sqlCommand.ExecuteNonQuery();

                sqlConnection.Close();


            }
        }
    
}