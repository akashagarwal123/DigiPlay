using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Configuration;

namespace DigiPlay
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int ide = Convert.ToInt32(Session["ia"]);
            int nepas = Convert.ToInt32(TextBox2.Text);
            int oldpas = Convert.ToInt32(TextBox1.Text);
            int conpas = Convert.ToInt32(TextBox3.Text);
            int p = Int32.Parse(TextBox4.Text);
            if (oldpas != nepas)
            {
                if (nepas == conpas)
                {
                    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True");
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update user_registration set password=" + nepas + " where phone_number=" + p + "", con);
                    int s = cmd.ExecuteNonQuery();
                    if (s >= 1)
                    {
                        lblMessage.Text = "Details have successfully been modified!!!";
                        lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                    }
                    else
                    {
                        lblMessage.Text = "Sorry Something went wrong!";
                        lblMessage.ForeColor = System.Drawing.Color.IndianRed;
                    }
                }

                else
                {
                    lblMessage.Text = "Confirmation password and new password mismatched!!!";
                    lblMessage.ForeColor = System.Drawing.Color.IndianRed;
                }
            }
            else
            {
                lblMessage.Text = "Please enter new password";
                lblMessage.ForeColor = System.Drawing.Color.IndianRed;
            }
        }
    }
}