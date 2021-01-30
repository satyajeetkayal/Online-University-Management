using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class payslip : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        cn = new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; Initial catalog=minor; integrated security=true;");
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from student where [application]='" + TextBox1.Text + "'", cn);
        dtr = cmd.ExecuteReader();

        if (dtr.Read())
        {
            Label1.Visible = false;
            Panel1.Visible = true;

            TextBox2.Text = (string)dtr["studentname"];

            TextBox7.Text = (string)dtr["session"];

            TextBox3.Text = (string)dtr["fathername"];

            TextBox5.Text = (string)dtr["mothername"];

            TextBox4.Text = (string)dtr["department"];

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Application no";

        }
        
        dtr.Close();
        cn.Close();
    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into pay values (" + TextBox1.Text + ",'" + TextBox2.Text + "'," + TextBox7.Text + ",'" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "'," + TextBox6.Text + ")", cn);
        cmd.ExecuteNonQuery();

        cn.Close();
        btnPrint.Visible = true;
        Button1.Visible = false;
    }
}
