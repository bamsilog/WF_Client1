using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Testing
{
    public partial class _Default : Page
    {
        public static String connectionString = @"Data Source=194.233.80.98;Initial Catalog=AccountingSystem;User ID=huarwebdevs2420;Password=D9pQ4e9wpNy52w5;Trusted_Connection=false;";
        SqlConnection con;
        SqlCommand cmd;


        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            Page.Validate();

            byte[] bytes = Encoding.UTF8.GetBytes(passfield.Text);

            //byte[] bytes1 = Encoding.Unicode.GetBytes("d5v");

            SHA256Managed hashstring = new SHA256Managed();
            byte[] hash = hashstring.ComputeHash(bytes);
            string hashString = string.Empty;

            foreach (byte x in hash)
            {
                hashString += String.Format("{0:x2}", x);
            }

            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * From fnValidateAccount(@user,@pass)", conn);
            cmd.Parameters.AddWithValue("@user", emailfield.Text);
            cmd.Parameters.AddWithValue("@pass", hashString);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                Response.Redirect("Catalogue.aspx");
            }
            else
            {
                emailVaildator.ErrorMessage = "Please enter email";
            }
            
        }
    }
}