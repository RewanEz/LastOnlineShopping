using System;
using System.Collections.Generic;
using System.Data;
using System.Web;

namespace OnlineShopping
{
    public class ProductBL
    {
        public static DataTable GetAll()
        {
            string query = "select * from Product where deleted=0";
#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }
        public static DataTable GetRecent(string _name)
        {
            string query = string.Format($"select top 3 * from Product, Category where Product.deleted=0 and Category.categoryID=Product.categoryID and Name='{_name}' order by productID desc");
            return DBManager.ExecuteQuery(query);
        }
        public static DataTable GetByName(string _prodName)
        {
            string query = $"select * from Product " +
                $" where productName like '{_prodName}' and deleted=0";
               
#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }

        public static int Insert(string _prodName, int _price, string _desc, int _catID, int _quantity, int _promotion, byte[] img)
        {
            string query = $"insert into product (productName,price," +
                $"Description,categoryID,Image,Quantity,Promotion,deleted) " +
                $"values({_prodName},{_price},{_desc},{_catID},{img},{_quantity}," +
                $"{_promotion},{0})";
#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteNonQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }

        public static int Update(int _id, string _prodName, int _price, string _desc, int _catID, int _quantity, int _promotion, byte[] img)
        {
            string query = $"update product set" +
                $" productName={_prodName},price={_price}," +
                $"Description={_desc},categoryID={_catID},Image={img}," +
                $"Quantity={_quantity},Promotion ={_quantity} " +
                $"where productID={_id}";
#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteNonQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }

        public static void insert(string name,int price,string desc,int catID,string img,int quant,int prom)
        {
            string quary = $"insert into Product(productName,Price,Description,categoryID,Image,Quantity,Promotion)values('{name}','{price}','{desc}','{catID}','{img}','{quant}','{prom}')";
            DBManager.ExecuteNonQuery(quary);
        }

        public static int Deleted(int _id)
        {
            string query = $"update product set deleted = 1 " +
                $"where productID = { _id }";
#pragma warning disable CS0436 // Type conflicts with imported type
            return DBManager.ExecuteNonQuery(query);
#pragma warning restore CS0436 // Type conflicts with imported type
        }
    }
}