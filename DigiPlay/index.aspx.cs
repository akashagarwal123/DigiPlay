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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int p = Int32.Parse(Session["phone_number"].ToString());
            using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-T7J349M\SQLEXPRESS01;Initial Catalog=digiplay;Integrated Security=True"))
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select Amount from user_wallet where phone_number='" + p + "'";
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