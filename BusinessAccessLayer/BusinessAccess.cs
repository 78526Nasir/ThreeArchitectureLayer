using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;

namespace BusinessAccessLayer
{
    public class BusinessAccess
    {
        DataAccess dataAccess = new DataAccess();
        public int ID { get; set; }
        public string Name { get; set; }
        public string Gender { get; set; }
        public int Age { get; set; }

        SqlCommand command = new SqlCommand();

        public bool IsAuthenticate(string userName, string password)
        {
            return dataAccess.IsAuthenticate(userName,password);
        }
        public DataSet BusinesAccessLayerBind()
        {
            return dataAccess.DataAccessLayerLBind();
        }

        public void InsertStudentRecord()
        {
            command.Parameters.AddWithValue("@id", ID);
            command.Parameters.AddWithValue("@name", Name);
            command.Parameters.AddWithValue("@gender", Gender);
            command.Parameters.AddWithValue("@age", Age);

            dataAccess.InsertData(command);
        }
        public void UpdateStudentRecord()
        {
            command.Parameters.AddWithValue("@id", ID);
            command.Parameters.AddWithValue("@name", Name);
            command.Parameters.AddWithValue("@gender", Gender);
            command.Parameters.AddWithValue("@age", Age);

            dataAccess.UpdateData(command);
        }

        public void DeleteStudentRecord()
        {
            command.Parameters.AddWithValue("@id", ID);
            dataAccess.DeleteData(command);
        }

        public void RegisterUser(string userName,string passsword)
        {
            dataAccess.RegisterUser(userName, passsword);
        }

    }
}
