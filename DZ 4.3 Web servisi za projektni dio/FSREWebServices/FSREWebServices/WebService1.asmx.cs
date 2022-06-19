using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace FSREWebServices
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        public static DataTable SendQuerry(string querry)
        {
            string connString = "SERVER=localhost" + ";" +
                "DATABASE=fsre;" +
                "UID=root;" +
                "PASSWORD=;";

            MySqlConnection cnMySQL = new MySqlConnection(connString);
            MySqlCommand cmdMySQL = cnMySQL.CreateCommand();
            MySqlDataReader reader;

            cmdMySQL.CommandText = querry;
            cnMySQL.Open();
            reader = cmdMySQL.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(reader);
            cnMySQL.Close();

            return dt;

        }


        [System.Web.Services.WebMethod]
        public DataTable getZgradaById(string zgrada_id)
        {
            string querry = "select from zgrada where zgrada_is =" + zgrada_id;
            return SendQuerry(querry);
        }

    }
}

