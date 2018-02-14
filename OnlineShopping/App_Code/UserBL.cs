using System;
using System.Collections.Generic;
using System.Data;


namespace OnlineShopping
{
    public class UserBL
    {
        public static DataTable GetAllCurrent()
        {
            string query = "select userID,userFname+' '+userLname FullName,Email,Gender,Age,Status from Users where status='unblocked'";
            return DBManager.ExecuteQuery(query);
        }

        public static DataTable GetAllNew()
        {
            string query = "select userID,userFname+' '+userLname FullName,Email,Gender,Age,Status from Users where Status='blocked'";
            return DBManager.ExecuteQuery(query);
        }

        public static DataTable GetUserByEmail(string _email)
        {
            string query = $"select * from users where Email = '{_email}'";
            return DBManager.ExecuteQuery(query);
        }
        public static DataTable getPasswordById(int _id)
        {
            String query = $"select Password from users where userID={_id}";
            return DBManager.ExecuteQuery(query);
        }
        public static int Insert(string _fname, string _lname, string _email, string _Password, int _age, string _geneder)
        {
            string query = $"insert into users " +
                $"(userFname,userLname,Email,Password,Gender,Age,Status)" +
                $" values('{_fname}','{_lname}','{_email}','{_Password}','{_geneder}'," +
                $"{_age},'blocked')";

            return DBManager.ExecuteNonQuery(query);
        }
        public static int UpdatePass(String _Password, int _id)
        {
            //string query = $"update Users set Password={_Password}" +
            //    $" where userID = {_id}";
            string query = string.Format("update Users Set Password = '{0}' where userID = '{1}'", _Password, _id);
            return DBManager.ExecuteNonQuery(query);
        }

        public static int Update(int _id, string _fname, string _lname, string _email, string _Password, int _age, string _geneder)
        {
            string query = $"update Users set userFname='{_fname}'," +
                $"userLname='{_lname}',Email='{_email}',Password='{_Password}'," +
                $"Gender='{_geneder}',Age={_age} where userID = {_id}";

            return DBManager.ExecuteNonQuery(query);
        }

        public static int UpdateStatus(int _id,string s)
        {
            string query = $"update Users set Status='{s}'" +
                $" where userID = {_id}";

            return DBManager.ExecuteNonQuery(query);
        }

        public static int Delete(int _id)
        {
            string query = $"update Users set Status='blocked'" +
               $" where userID = {_id}";

            return DBManager.ExecuteNonQuery(query);
        }
        public static string checkOne(string _email, string _password)
        {
            string status;
            string query = string.Format("select Status from Users where Email='{0}' and Password='{1}'", _email, _password);
            

            var dt = DBManager.ExecuteQuery(query);

            if (dt.Rows.Count > 0)
            {
                status = dt.Rows[0]["Status"].ToString();
            }
            else
            {
                status = "Wrong";
            }



            return status;
        }
        
        public static int InsertFeedBacks(string _feedbackMsg, string _name, string _email)
        {
            string query = $"insert into FeedBack " +
                $"(feedbackMsg,name,Email,StatusOfMsg)" +
                $" values('{_feedbackMsg}','{_name}','{_email}','0')";
            
            return DBManager.ExecuteNonQuery(query);
        }
    }
}