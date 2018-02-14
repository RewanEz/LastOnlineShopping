using System;
using System.Collections.Generic;
using System.Data;

namespace OnlineShopping
{
    public class OrderBL
    {
        public static DataTable GetALLByUser(string _email)
        {
            //get user id By email
            string query = "select *,userFname+userLname as User Name from " +
                "order o,users us where us.userID=o.userID ";

#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }

        public static DataTable GettApprovedOrder()
        {
            string str = "select orderID,userFname+' '+userLname FullName,Date,delivaryAddress,totalPrice from Users u ,Ordr o where u.userID=o.userID and o.orderStatus='approved'";
            return DBManager.ExecuteQuery(str);
        }

        public static DataTable GettPendedOrder()
        {
            string str = "select orderID,userFname+' '+userLname FullName,Date,delivaryAddress,totalPrice from Users u ,Ordr o where u.userID=o.userID and o.orderStatus='pended'";
            return DBManager.ExecuteQuery(str);
        }
        public static void updateOrderStatus(int id,string str )
        {
            string quary = string.Format($"update Ordr set orderStatus='{str}' where orderID='{id}'");
            DBManager.ExecuteNonQuery(quary);
        }
        

        public static DataTable GetALL(string _email)
        {
            //get user id By email
            string query = "select *,userFname+userLname as User Name from " +
                "order o,users us " +
                "where us.userID=o.userID where status not 'delivered'";

#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }

        public static int Inset(string _email, DateTime _date, decimal _total, string _status, string _address)
        {
#pragma warning disable CS0436 // Type conflicts with imported type
            int userID = int.Parse((UserBL.GetUserByEmail(_email)).Rows[0]["userID"].ToString());
#pragma warning restore CS0436 // Type conflicts with imported type

            string query = $"insert into order (Date,totalPrice,Status,delivaryAddress,userID)" +
                $" values ({_date},{_total},{_status},{_address},{userID}) ";

#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteNonQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }

       

        public static int Delete()
        {
            string query = $"update order set orderStatus='delivered' ";
#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteNonQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }
        public static DataTable GetOrders(string _email)
        {
            string query = $"select p.productName,p.Price,p.Quantity,o.orderID,o.Date,o.totalPrice from" +
                "Orders o inner join orderItem oi" +
                "on o.orderID=oi.orderID" +
                "inner join Product p" +
                "on p.productID=oi.productID";
            return DBManager.ExecuteQuery(query);
        }
        public static string GetStatus(string _email)
        {
            string query = $"select Status from Orders";
            return DBManager.ExecuteQuery(query).Rows[0]["Status"].ToString();

        }

    }
}