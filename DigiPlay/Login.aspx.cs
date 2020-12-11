using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
namespace DigiPlay
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            { 
            int phone_number = Int32.Parse(TextBox15.Text);
            String pass = TextBox16.Text;
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("(Select phone_number,password from user_registration where phone_number='" + phone_number + "' and password=" + pass + ")", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                Session["phone_number"] = phone_number;
                Session["password"] = pass;

                if (Session["phone_number"].ToString()!=null)
                {
                        Response.Redirect("index.aspx");
                        Label15.Text = "No Access Denied.Please wait till you get verified";
                    Label15.ForeColor = System.Drawing.Color.IndianRed;
                }
                else
                {
                    Label15.Text = "Access Denied.Please wait till you get verified";
                    Label15.ForeColor = System.Drawing.Color.IndianRed;
                }
            }
            
          }
            catch(Exception)
            {
                Label15.Text = "Access Denied.Please retry!!!";
                Label15.ForeColor = System.Drawing.Color.IndianRed;
            }
        }
    }
}