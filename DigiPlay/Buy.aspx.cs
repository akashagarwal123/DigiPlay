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
    public partial class Buy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
            {
                String str = "Available";
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from stock";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                conn.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int coach_price = price();
            int wallet_value = wallet_price();
            int net_value = wallet_value - coach_price;
            wallet_update(net_value);
        }

        public int price()
        {
            String i = TextBox1.Text;
            int prev_amt = 0;
            using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
            {
                String query = "(Select product_price from stock where stock_id="+i+")";
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
                    Label3.Text = "No data";
                }
            }
            return prev_amt;
        }
        public int wallet_price()
        {
            int prev_amt = 0;
            int p = Int32.Parse(TextBox2.Text);
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
                    Label3.Text = "No data";
                }
            }
            return prev_amt;
        }
        public void wallet_update(int net_value)
        {
            int phone = Int32.Parse(TextBox2.Text);
            try
            {
                using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
                {

                    using (SqlCommand cmd = new SqlCommand("update user_wallet set Amount=" + net_value + " where phone_number = " + phone + "", conn))
                    {
                        conn.Open();
                        int a = cmd.ExecuteNonQuery();
                        if (a >= 1)
                        {
                            Label3.Text = " Money Sucessfully added!!!";
                            Label3.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    conn.Close();
                }
            }
            catch (Exception)
            {
                Label3.Text = " Money not Sucessfully added !!!";
                Label3.ForeColor = System.Drawing.Color.DarkRed;
            }
        }
    }
}