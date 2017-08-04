using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace DataAccessLayer
{
    public class DataAccess
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["ALDB"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        

        public bool IsAuthenticate(string userName, string password)
        {
            string sqlQuery = "Select * from Account where UserName =@un and Password = @pw";
            SqlCommand command = new SqlCommand(sqlQuery, con);
            con.Open();

            command.Parameters.AddWithValue("@un", userName);
            command.Parameters.AddWithValue("@pw", password);

            SqlDataReader dataReader = command.ExecuteReader();

            if (dataReader.Read())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DataSet DataAccessLayerLBind()
        {
            SqlDataAdapter da = new SqlDataAdapter("sp_Select", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public void InsertData(SqlCommand command)
        {
            con.Open();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "sp_Insert_Student";
            command.Connection = con;
            command.ExecuteNonQuery();

        }
        public void UpdateData(SqlCommand command)
        {
            con.Open();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "sp_Update_Student";
            command.Connection = con;
            command.ExecuteNonQuery();
        }

        public void DeleteData(SqlCommand command)
        {
            con.Open();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "sp_Delete_Student";
            command.Connection = con;
            command.ExecuteNonQuery();
        }

        public void RegisterUser(string userName, string password)
        {
            con.Open();
            string query = "Insert into Account values(@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@userName", userName);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.ExecuteNonQuery();
        }
    }
}
