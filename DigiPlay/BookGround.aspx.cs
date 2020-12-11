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
    public partial class BookGround : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String status = "Booked";
                int ID = Int32.Parse(TextBox1.Text);
                using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
                {

                    using (SqlCommand cmd = new SqlCommand("update user_ground_booking set Availability_Status='" + status + "' where ground_booking_Id = " + ID + "", conn))
                    {
                        conn.Open();
                        int a = cmd.ExecuteNonQuery();
                        if (a >= 1)
                        {
                            Label1.Text = " Booked Sucessfully!!!";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    conn.Close();
                }
            }
            catch (Exception)
            {
                Label1.Text = " Not booked Sucessfully!!!";
                Label1.ForeColor = System.Drawing.Color.DarkRed;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
            {
                String str = "Available";
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from user_ground_booking where Availability_Status='"+str+"'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                conn.Close();
            }
        }
    }
}
