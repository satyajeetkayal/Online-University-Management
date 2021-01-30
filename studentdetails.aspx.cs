using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class studentdetails : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        cn = new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; initial catalog=minor; integrated security=true;");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from student where [application]=" + TextBox1.Text + "", cn);
        dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Label1.Visible = false;

            Panel1.Visible = true;

            TextBox2.Text = (string)dtr["studentname"];

           
            TextBox15.Text =(string)dtr ["session"];

            TextBox3.Text = (string)dtr["fathername"];

            TextBox4.Text = (string)dtr["mothername"];

           
            TextBox5.Text = (string)dtr["dob"];


           TextBox16.Text = (string)dtr["gender"];

            TextBox6.Text = (string)dtr["nationality"];

           TextBox17.Text=(string)dtr["department"];

            TextBox7.Text = (string)dtr["city"];

            TextBox8.Text = (string)dtr["state"];

            TextBox13.Text = (string)dtr["school"];

            
            TextBox14.Text = (string)dtr["yearofpassing"];

            TextBox9.Text = (string)dtr["emailid"];

            TextBox10.Text = (string)dtr["address"];


            TextBox11.Text = (string)dtr["mobile"];


            TextBox12.Text = (string)dtr["parentsmobile"];
        }
        else
        {
            Panel1.Visible = false;
            TextBox1.Text = "";
            Label1.Visible = true;
            Label1.Text = "Invalid Application No.";
            
        }
        dtr.Close();
        cn.Close();
    }
}
