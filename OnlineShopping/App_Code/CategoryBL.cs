using System;
using System.Collections.Generic;
using System.Data;
using System.Web;

namespace OnlineShopping
{
    public class CategoryBL
    {
        public static DataTable GetAll()
        {
            string statement = "select Name from Category where deleted=0";
            var dt = DBManager.ExecuteQuery(statement);
            return dt;
        }
       
        public static int GetIDUsingName(string name)
        {
            string quary=string.Format($"select * from Category where categoryName like'%{name}%'");
            DataTable dt = new DataTable();
            dt = DBManager.ExecuteQuery(quary);
            return int.Parse(dt.Rows[0][0].ToString());
        }
        public static int Insert(string _name)
        {
            var statment = string.Format("insert into Category(categoryID) values('{0}')", _name);
            return DBManager.ExecuteNonQuery(statment);
        }
        public static int Modify(string _name, int _oldName)
        {
            string statment = string.Format("update Category set Name ='{0}' where Name ='{1}'", _name, _oldName);
            return DBManager.ExecuteNonQuery(statment);
        }
        public static int Delete(string _name)
        {
            string statment = string.Format($"update Category set deleted ='{0}' where Name ='{_name}'");
            return DBManager.ExecuteNonQuery(statment);
        }

    }
}