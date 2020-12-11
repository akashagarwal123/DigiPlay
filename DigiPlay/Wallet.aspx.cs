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
    public partial class Wallet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int new_amt = Int32.Parse(TextBox1.Text);
            String Pay_method = DropDownList1.Text;
            Random rand = new Random();
            int num = rand.Next(1000);
            string e_date = DateTime.UtcNow.ToString("MM-dd-yyyy");
            int phone = Int32.Parse(Session["phone_number"].ToString());
            int prev_amt = prev_value(phone);
            int amt = new_amt + prev_amt;
            try
            {
                using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
                {

                    using (SqlCommand cmd = new SqlCommand("update user_wallet set Amount=" + amt + " where phone_number = " + phone + "", conn))
                    {
                        conn.Open();
                        int a = cmd.ExecuteNonQuery();
                        if (a >= 1)
                        {
                            Label1.Text = " Money Sucessfully added!!!";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    conn.Close();
                }
            }
            catch (Exception)
            {
                Label1.Text = " Money not Sucessfully added !!!";
                Label1.ForeColor = System.Drawing.Color.DarkRed;
            }
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected int prev_value(int p)
        {
            int prev_amt=0;
            using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
            {
                String query = "(Select Amount from user_wallet where phone_number=" + p + ")";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        prev_amt = dr.GetInt32(0);
                    }
      
                }
                else
                {
                    Label1.Text = "No data";
                }
            }
            return prev_amt;
        }
    }
}
