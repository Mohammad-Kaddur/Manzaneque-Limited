using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace $safeprojectname$
{
    public partial class Problems : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

            // Show Data
            con.Open();
            SqlCommand comm2 = new SqlCommand("Select max(prob_id)+1 from Problems", con);
            SqlDataReader dr1 = comm2.ExecuteReader();
            dr1.Read();
            String id = dr1[0].ToString();
            TextBox1.Text = id;
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Insert Into Problems Values (@prob_type, @prob_time, @prob_date, @prob_solution, @emp_id, @spe_id, @help_disck_id, @equi_id)", con);
            cmd.Parameters.AddWithValue("@prob_type", TextBox2.Text);
            cmd.Parameters.AddWithValue("@prob_time", TextBox3.Text);
            cmd.Parameters.AddWithValue("@prob_date", TextBox4.Text);
            cmd.Parameters.AddWithValue("@prob_solution", TextBox5.Text);
            cmd.Parameters.AddWithValue("@emp_id", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@spe_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@help_disck_id", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@equi_id", DropDownList4.SelectedValue);

            cmd.ExecuteNonQuery();
            con.Close();

            //show();
            Response.Write("Record Inserted successfully");
            int id = int.Parse(TextBox1.Text);
            TextBox1.Text = (id + 1).ToString();
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
    }
}