using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace $safeprojectname$
{
    public partial class Help_dick_operator : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Show Data
            con.Open();
            SqlCommand comm2 = new SqlCommand("Select max(help_id)+1 from Help_disck_operator", con);
            SqlDataReader dr1 = comm2.ExecuteReader();
            dr1.Read();
            String id = dr1[0].ToString();
            TextBox1.Text = id;
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Insert Into Help_disck_operator Values (@help_name,@help_birthdate,@help_phone)", con);
            cmd.Parameters.AddWithValue("@help_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@help_birthdate", TextBox3.Text);
            cmd.Parameters.AddWithValue("@help_phone", TextBox4.Text);

            cmd.ExecuteNonQuery();
            con.Close();

            //show();
            Response.Write("Record Inserted successfully");
            int id = int.Parse(TextBox1.Text);
            TextBox1.Text = (id + 1).ToString();
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

            SqlDataSource1.DataBind();
            GridView1.DataBind();

        }
    }
}