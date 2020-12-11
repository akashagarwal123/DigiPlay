using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace DigiPlay
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            { 
            String Name = TextBox1.Text;
            int Age = Int32.Parse(TextBox2.Text);
            String Address = TextBox3.Text;
            String Landmark = TextBox4.Text;
            String City = TextBox5.Text;
            String State = TextBox6.Text;
            String Country = TextBox7.Text;
            int PinCode = Int32.Parse(TextBox8.Text);
            String PostOffice = TextBox9.Text;
            String Id_Proof = TextBox10.Text;
            int Phone = Int32.Parse(TextBox11.Text);
            String Password = TextBox12.Text;
     
            using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("insert into user_registration(Name,age,address,landmark,City,State,Country,Pin_Code,PostOffice,Valid_ID_proof,phone_number,password) values('" + Name + "','" + Age + "','" + Address + "','" + Landmark + "','" + City + "','" + State + "','" + Country + "','" + PinCode + "','" + PostOffice + "','" + Id_Proof + "','" + Phone + "','" + Password + "')", conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label14.Text = "Sucessfully uploaded!!!";
                    Label14.ForeColor = System.Drawing.Color.FloralWhite;
                }
        
                }
                wallet(Phone);
            }
            catch(Exception)
            {
                Label14.Text = "Please retry!!!";
                Label14.ForeColor = System.Drawing.Color.DarkRed;
            }
        }
        protected void wallet(int p)
        {
            int amt = 0;
            String Pay_method = "Online";
            Random rand = new Random();
            int num = rand.Next(1000);
            string e_date = DateTime.UtcNow.ToString("MM-dd-yyyy");
            int phone = p;
            using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("insert into user_wallet(User_Wallet,Amount,Payment_Mode,Entry_Date,phone_number) values('" + num + "','" + amt + "','" + Pay_method + "','" + e_date + "','" + p+ "')", conn))
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
                
        }


    }
}