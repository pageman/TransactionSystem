using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace IS_Attendance
{
    namespace SQLLibrary
    {
        public class SQLLibrary
        {
            string ConnectionString;
            public SqlConnection con;

            public SQLLibrary()
            {
                ConnectionString = "SERVER = kristian-pc\\kristian; DATABASE = klinton; UID = sa; PWD = benilde";
                con = new SqlConnection(ConnectionString);
            }

            public SqlDataReader UserLogin(string UserName, string Password)
            {
                string SQL = "SELECT * FROM TblUser" + " WHERE Username = '" + UserName + "' "
                + "AND Password = '" + Password + "' ";
                SqlCommand Command = new SqlCommand(SQL, con);
                SqlDataReader DataReader = Command.ExecuteReader();
                return DataReader;
            }

            public void AuditTrail(int UID, string Action)
            {
                string SQL = "INSERT INTO tblAuditTrail (UserID, Action, DateAction) VALUES " +
                "(" + UID + ",'" +
                Action + "', GETDATE())";
                SqlCommand scmAdd = new SqlCommand(SQL, con);
                scmAdd.ExecuteNonQuery();
                scmAdd.Dispose();
            }


            public void DeleteAudit(int AuditID)
            {
                string SQL = "DELETE FROM tblAuditTrail WHERE AuditID = '" + AuditID + "'";
                SqlCommand scmDelete = new SqlCommand(SQL, con);
                scmDelete.ExecuteNonQuery();
                scmDelete.Dispose();
            }

            public void Register(string Name, string UserName, string Password, string UserType)
            {
                string SQL = "INSERT INTO TblUser (Name, UserName, Password, UserType) VALUES " +
                    "(" + "'" + Name + "'" + ", " + "'" + UserName + "'" + ", " + "'" + Password + "'" + ", " + "'" + UserType + "'" + ")";
                SqlCommand scmAdd = new SqlCommand(SQL, con);
                scmAdd.ExecuteNonQuery();
                scmAdd.Dispose();
            }

            public void AddOrder(int Quantity, string Username, string ProductName, string OrderStatus, string Contact, string Address)
            {
                string SQL = "INSERT INTO tblOrders (Quantity, Username, ProductName, Date, OrderStatus, Contact, Address) VALUES " +
                    "(" + "'" + Quantity + "'" + ", " + "'" + Username + "'" + ", " + "'" + ProductName + "'" + ", " + "GETDATE()" + ", " + "'" + OrderStatus + "'" + ", " + "'" + Contact + "'" + ", " + "'" + Address + "'" + ")";
                SqlCommand scmAdd = new SqlCommand(SQL, con);
                scmAdd.ExecuteNonQuery();
                scmAdd.Dispose();
            }

            public void EditOrder(int OrderID, string ProductName, int Quantity, string Contact, string Address)
            {
                string SQL = "UPDATE tblOrders SET" +
                " ProductName = '" + ProductName + "', " +
                "Quantity = '" + Quantity + "', " +
                "Contact = '" + Contact + "', " +
                "Address = '" + Address + "'" +
                "WHERE OrderID = '" + OrderID + "'";
                SqlCommand scmEdit = new SqlCommand(SQL, con);
                scmEdit.ExecuteNonQuery();
                scmEdit.Dispose();
            }

            public void OrderStatus(int OrderID, string OrderStatus)
            {
                string SQL = "UPDATE tblOrders SET" +
                " OrderStatus = '" + OrderStatus + "'" +
                "WHERE OrderID = '" + OrderID + "'";
                SqlCommand scmEdit = new SqlCommand(SQL, con);
                scmEdit.ExecuteNonQuery();
                scmEdit.Dispose();
            }

            public void DeleteOrder(int OrderID)
            {
                string SQL = "DELETE FROM tblOrders WHERE OrderID = '" + OrderID + "'";
                SqlCommand scmDelete = new SqlCommand(SQL, con);
                scmDelete.ExecuteNonQuery();
                scmDelete.Dispose();
            }

            public void AddProduct(string ProductName, int SoH, int SR, string Description, int Price, int NumberSold, string ExpiryDate)
            {
                string SQL = "INSERT INTO tblProducts (ProductName, SoH, SR, Description, Price, NumberSold, ExpiryDate) VALUES " +
                    "(" + "'" + ProductName + "'" + ", " + "'" + SoH + "'" + ", " + "'" + SR + "'" + ", " + "'" + Description + "'" + ", " + "'" + Price + "'" + ", " + "'" + NumberSold + "'" + ", " + "'" + ExpiryDate + "'" + ")";
                SqlCommand scmAdd = new SqlCommand(SQL, con);
                scmAdd.ExecuteNonQuery();
                scmAdd.Dispose();
            }

            public void EditProduct(int ProductID, string ProductName, int SoH, int SR, string Description, int Price, int NumberSold, string ExpiryDate)
            {
                string SQL = "UPDATE tblProducts SET " +
                "ProductName = '" + ProductName + "', " +
                "SoH = '" + SoH + "', " +
                "SR = '" + SR + "', " +
                "Description = '" + Description + "', " +
                "Price = '" + Price + "', " +
                "NumberSold = '" + NumberSold + "', " +
                "ExpiryDate = '" + ExpiryDate + "'" +
                "WHERE ProductID = '" + ProductID + "'";
                SqlCommand scmEdit = new SqlCommand(SQL, con);
                scmEdit.ExecuteNonQuery();
                scmEdit.Dispose();
            }

            public void DeleteProduct(int ProductID)
            {
                string SQL = "DELETE FROM tblProducts WHERE ProductID = '" + ProductID + "'";
                SqlCommand scmDelete = new SqlCommand(SQL, con);
                scmDelete.ExecuteNonQuery();
                scmDelete.Dispose();
            }

            public void EditCustomer(string Username, string Name, string Password, string Birthday, string Email)
            {
                string SQL = "UPDATE tblUser SET" +
                " Name = '" + Name + "', " +
                "Password = '" + Password + "', " +
                "Birthday = '" + Birthday + "', " +
                "Email = '" + Email + "'" +
                "WHERE Username = '" + Username + "'";
                SqlCommand scmEdit = new SqlCommand(SQL, con);
                scmEdit.ExecuteNonQuery();
                scmEdit.Dispose();
            }

            public void DeleteCustomer(string Username)
            {
                string SQL = "DELETE FROM tblUser WHERE Username = '" + Username + "'";
                SqlCommand scmDelete = new SqlCommand(SQL, con);
                scmDelete.ExecuteNonQuery();
                scmDelete.Dispose();
            }

            public static DataTable GetRecords(string Sql)
            {
                string ConnectionString = "SERVER = kristian-pc\\kristian; DATABASE = klinton; UID = sa; PWD = benilde";
                SqlConnection Con = new SqlConnection(ConnectionString);
                SqlCommand com = new SqlCommand(Sql, Con);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
    }
}
