using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class forget : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        
        cn = new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; initial catalog=minor; integrated security=true;");
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where [username]='" + TextBox2.Text + "'", cn);
        dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Panel2.Visible = true;

            Label1.Text = (string)dtr["question"];
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Invalid Username";
        }
        dtr.Close();
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from login where[answer]='" + TextBox1.Text + "'", cn);
        dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Panel1.Visible = true;
            Label3.Text = (string)dtr["password"];
        }
        else
        {
            Panel1.Visible = false;
            Label2.Text = "Incorrect Anwser";
           
        }
        dtr.Close();
        cn.Close();
    }
}
