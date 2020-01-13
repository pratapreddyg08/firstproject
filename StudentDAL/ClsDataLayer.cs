using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace StudentDAL
{
    public class ClsDataLayer
    {
        //private SqlConnection _sqlcon;
        //public ClsDataLayer()
        //{
        //    _sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ConnectionString);
        //}
        SqlConnection _sqlcon = new SqlConnection("Data Source=DESKTOP-UFB73PS\\SQLEXPRESS;Initial Catalog=Sample;Integrated Security=True");
        public void insertstudent(int Id, string Name, string School)
        {
            _sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter("Insert into Student values('" + Id + "','" + Name + "','" + School + "')", _sqlcon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            _sqlcon.Close();
        }
        public object selectstudent()
        {
            _sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from Student", _sqlcon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            _sqlcon.Close();
            return dt;
        }
        public void updatestudent( string Name, string School,int Id)
        {
            _sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter("Update Student set name='"+Name+"',school='"+School+"' where id='"+Id+"'", _sqlcon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            _sqlcon.Close();
        }
        public void deletestudent(int Id)
        {
            _sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from Student where id='"+Id+"'", _sqlcon);
            DataTable dt = new DataTable();
            da.Fill(dt);
            _sqlcon.Close();
        }
    }
}
