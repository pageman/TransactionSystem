using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using IS_Attendance.SQLLibrary;
using System.Data;

namespace ISPROG3_Final
{
    public class User
    {
        int uid;
        public int UID
        {
            get { return uid; }
            set { uid = value; }
        }

        int auditid;
        public int AuditID
        {
            get { return auditid; }
            set { auditid = value; }
        }

        string username;
        public string Username
        {
            get { return username; }
            set { username = value; }
        }

        string password;
        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        string usertype;
        public string UserType
        {
            get { return usertype; }
            set { usertype = value; }
        }

        string name;
        public string Name

        {
            get { return name; }
            set { name = value; }
        }

        string birthday;
        public string Birthday
        {
            get { return birthday; }
            set { birthday = value; }
        }

        string email;
        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public bool Login()
        {
            SQLLibrary tmpLogin = new SQLLibrary();
            tmpLogin.con.Open();
            SqlDataReader sdrResult = tmpLogin.UserLogin(username, password);
            bool boolsuccess = sdrResult.HasRows;
            if (sdrResult.HasRows)
            {
                sdrResult.Read();
                usertype = sdrResult["UserType"].ToString();
                uid = int.Parse(sdrResult["UserID"].ToString());
                sdrResult.Close();

                tmpLogin.AuditTrail(uid, "Login");
            }

            tmpLogin.con.Close();
            return boolsuccess;
        }

        public void EditAccount()
        {
            SQLLibrary tmpEditAccount = new SQLLibrary();
            tmpEditAccount.con.Open();
            tmpEditAccount.EditCustomer(username, name, password, birthday, email);
            tmpEditAccount.AuditTrail(uid, "Edit Account");
            tmpEditAccount.con.Close();
        }

        public void DeleteAccount()
        {
            SQLLibrary tmpDeleteAccount = new SQLLibrary();
            tmpDeleteAccount.con.Open();
            tmpDeleteAccount.DeleteCustomer(username);
            tmpDeleteAccount.AuditTrail(uid, "Delete Account");
            tmpDeleteAccount.con.Close();
        }

        public void Register()
        {
            SQLLibrary tmpRegister = new SQLLibrary();
            tmpRegister.con.Open();
            tmpRegister.Register(name, username, password, usertype);
            tmpRegister.AuditTrail(uid, "Register");
            tmpRegister.con.Close();
        }

        public DataTable GetUser()
        {
            string sql = "SELECT TblUser.Name AS [Name], UserType FROM TblUser";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public DataTable GetAccount()
        {
            string sql = "SELECT Username, Name, Birthday, Email FROM TblUser WHERE Username = '" + Username + "'";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public DataTable GetAccount2()
        {
            string sql = "SELECT UserID AS ID, Username, Name, UserType AS Type, Birthday, Email FROM TblUser";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public DataTable GetAudit()
        {
            string sql = "SELECT AuditID AS ID, UserID AS [User ID], Action, DateAction AS Date FROM tblAuditTrail";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public void DeleteAudit()
        {
            SQLLibrary tmpDeleteAudit = new SQLLibrary();
            tmpDeleteAudit.con.Open();
            tmpDeleteAudit.DeleteAudit(auditid);
            tmpDeleteAudit.con.Close();
        }
    }

    public class Order
    {
        int uid;
        public int UID
        {
            get { return uid; }
            set { uid = value; }
        }

        int orderid;
        public int OrderID
        {
            get { return orderid; }
            set { orderid = value; }
        }

        string productname;
        public string ProductName
        {
            get { return productname; }
            set { productname = value; }
        }

        int quantity;
        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }

        string username;
        public string Username
        {
            get { return username; }
            set { username = value; }
        }

        string orderstatus;
        public string OrderStatus
        {
            get { return orderstatus; }
            set { orderstatus = value; }
        }

        string contact;
        public string Contact
        {
            get { return contact; }
            set { contact = value; }
        }

        string address;
        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        public void AddOrder()
        {
            SQLLibrary tmpAddOrder = new SQLLibrary();
            tmpAddOrder.con.Open();
            tmpAddOrder.AddOrder(quantity, username, productname, orderstatus, contact, address);
            tmpAddOrder.AuditTrail(UID, "Ordered");
            tmpAddOrder.con.Close();
        }

        public void EditOrder()
        {
            SQLLibrary tmpEditOrder = new SQLLibrary();
            tmpEditOrder.con.Open();
            tmpEditOrder.EditOrder(orderid, productname, quantity, contact, address);
            tmpEditOrder.AuditTrail(uid, "Change Order");
            tmpEditOrder.con.Close();
        }

        public void ChangeOrderStatus()
        {
            SQLLibrary tmpOrderStatus = new SQLLibrary();
            tmpOrderStatus.con.Open();
            tmpOrderStatus.OrderStatus(orderid, orderstatus);
            tmpOrderStatus.AuditTrail(uid, "Change Order Status");
            tmpOrderStatus.con.Close();
        }

        public void DeleteOrder()
        {
            SQLLibrary tmpDeleteOrder = new SQLLibrary();
            tmpDeleteOrder.con.Open();
            tmpDeleteOrder.DeleteOrder(orderid);
            tmpDeleteOrder.AuditTrail(uid, "Cancel Order");
            tmpDeleteOrder.con.Close();
        }

        public DataTable GetOrders()
        {
            string sql = "SELECT tblOrders.OrderID AS [Order No.], tblOrders.Username, tblOrders.ProductName AS [Product], tblOrders.Quantity AS [Quantity], Date, Contact, Address, tblOrders.OrderStatus AS Status FROM tblOrders";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public DataTable GetOrders2()
        {
            string sql = "SELECT tblOrders.OrderID AS [Order No.], tblOrders.ProductName AS [Product], tblOrders.Quantity AS [Quantity], Date, Contact, Address, tblOrders.OrderStatus AS Status FROM tblOrders WHERE Username = '" + Username + "'";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }
    }

    public class Product
    {
        int productid;
        public int ProductID
        {
            get { return productid; }
            set { productid = value; }
        }
        string productname;
        public string ProductName
        {
            get { return productname; }
            set { productname = value; }
        }

        int soh;
        public int SoH
        {
            get { return soh; }
            set { soh = value; }
        }

        int sr;
        public int SR
        {
            get { return sr; }
            set { sr = value; }
        }

        int uid;
        public int UID
        {
            get { return uid; }
            set { uid = value; }
        }

        string description;
        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        int price;
        public int Price
        {
            get { return price; }
            set { price = value; }
        }

        int numbersold;
        public int NumberSold
        {
            get { return numbersold; }
            set { numbersold = value; }
        }

        string expirydate;
        public string ExpiryDate
        {
            get { return expirydate; }
            set { expirydate = value; }
        }

        public void AddProduct()
        {
            SQLLibrary tmpAddProduct = new SQLLibrary();
            tmpAddProduct.con.Open();
            tmpAddProduct.AddProduct(productname, soh, sr, description, price, numbersold, expirydate);
            tmpAddProduct.AuditTrail(uid, "Added Product");
            tmpAddProduct.con.Close();
        }

        public void EditProduct()
        {
            SQLLibrary tmpEditProduct = new SQLLibrary();
            tmpEditProduct.con.Open();
            tmpEditProduct.EditProduct(productid, productname, soh, sr, description, price, numbersold, expirydate);
            tmpEditProduct.AuditTrail(uid, "Edited Product");
            tmpEditProduct.con.Close();
        }

        public void DeleteProduct()
        {
            SQLLibrary tmpDeleteProduct = new SQLLibrary();
            tmpDeleteProduct.con.Open();
            tmpDeleteProduct.DeleteProduct(productid);
            tmpDeleteProduct.AuditTrail(uid, "Deleted Product");
            tmpDeleteProduct.con.Close();
        }

        public DataTable SelectSales()
        {
            string sql = "SELECT tblProducts.NumberSold AS [Sales Count] FROM tblProducts WHERE ProductName = '" + ProductName + "'";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public DataTable SelectProduct()
        {
            string sql = "SELECT tblProducts.ProductID AS ID, tblProducts.ProductName AS [Product Name], tblProducts.SoH AS [Stock on Hand], tblProducts.SR AS [Stock Received], tblProducts.Description, tblProducts.Price, tblProducts.NumberSold AS [Number Sold] FROM tblProducts WHERE ProductName = '" + ProductName + "'";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public DataTable SelectProduct2()
        {
            string sql = "SELECT tblProducts.ProductName AS [Product Name], tblProducts.Description, tblProducts.Price FROM tblProducts WHERE ProductName = '" + ProductName + "'";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public DataTable GetProduct()
        {
            string sql = "SELECT tblProducts.ProductID AS ID, tblProducts.ProductName AS [Product Name], tblProducts.SoH AS [Stock on Hand], tblProducts.SR AS [Stock Received], tblProducts.Description, tblProducts.Price, tblProducts.NumberSold AS [Number Sold], tblProducts.ExpiryDate AS [Expiry Date] FROM tblProducts";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

        public DataTable GetProduct2()
        {
            string sql = "SELECT tblProducts.ProductName AS [Product Name], tblProducts.Description, tblProducts.Price FROM tblProducts";
            DataTable dt = new DataTable();
            dt = SQLLibrary.GetRecords(sql);
            return dt;
        }

    }
}