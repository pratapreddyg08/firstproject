using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using StudentDAL;

namespace StudentBLL
{
    public class Class1
    {
    }
    public class ClsBusLayer
    {
        public void insertstudent(int Id,string Name,string School)
        {
            ClsDataLayer objDAL = new ClsDataLayer();
            objDAL.insertstudent(Id,Name,School);

        }
        public object selectstudent()
        {
            ClsDataLayer objDAL = new ClsDataLayer();
            return objDAL.selectstudent();
        }
        public void updatestudent( string Name, string School,int Id)
        {
            ClsDataLayer objDAL = new ClsDataLayer();
            objDAL.updatestudent(Name, School,Id);
        }
        public void deletestudent(int Id)
        {
            ClsDataLayer objDAL = new ClsDataLayer();
             objDAL.deletestudent(Id);
        }
        public void ABCCD()
        {

        }
    }
}
