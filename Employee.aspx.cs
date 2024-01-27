using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace $safeprojectname$
{
    public partial class Employee : System.Web.UI.Page
    {
        //Variable Declarations

        //the code decler several varibles 
        // Connect To Server
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-B8Q06VT\SQLEXPRESS01;Initial Catalog=$safeprojectname$;Integrated Security=True");
        //retrive and update data from the database
        SqlDataAdapter data;
        //execute queries or stored procedures
        SqlCommand cmd;
        //object that store in-memory data retrieved from the database
        DataSet dset = new DataSet();
        DataSet dset2 = new DataSet();
        DataSet dset3 = new DataSet();
        //object to store tabular data
        DataTable dtable = new DataTable();

        
        //this event occurs when the page is loaded
        protected void Page_Load(object sender, EventArgs e)
        {
            // Show Data
            
            con.Open();

            SqlCommand comm2 = new SqlCommand("Select max(emp_id)+1 from Employee", con);
            SqlDataReader dr1 = comm2.ExecuteReader();
            dr1.Read();
            String id = dr1[0].ToString();
            TextBoxID.Text = id;

            con.Close();

        }

        // Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();

            cmd = new SqlCommand("Insert Into Employee Values (@emp_name,@emp_birthdate,@emp_phone,@emp_addrees,@emp_position,@dept_id,@computer_id)", con);
            cmd.Parameters.AddWithValue("@emp_name", TextBoxName.Text);
            cmd.Parameters.AddWithValue("@emp_birthdate", TextBoxBirth.Text);
            cmd.Parameters.AddWithValue("@emp_phone", TextBoxPhone.Text);
            cmd.Parameters.AddWithValue("@emp_addrees", TextBoxAddress.Text);
            cmd.Parameters.AddWithValue("@emp_position", TextBoxPosition.Text);
            cmd.Parameters.AddWithValue("@dept_id", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@computer_id", DropDownList2.SelectedValue);
            // SQL Command
            cmd.ExecuteNonQuery();

            con.Close();

            //show();
            Response.Write("Record Inserted successfully");
            int id = int.Parse(TextBoxID.Text);
            TextBoxID.Text = (id + 1).ToString();
            TextBoxName.Text = "";
            TextBoxBirth.Text = "";
            TextBoxPhone.Text = "";
            TextBoxAddress.Text = "";
            TextBoxPosition.Text = "";
         
            SqlDataSource1.DataBind();
            GridView1.DataBind();
        }
        }
}