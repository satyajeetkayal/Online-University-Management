using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; initial catalog=minor; integrated security=true;");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from admin where [adminid]=" + TextBox2.Text + " and [password]='" + TextBox1.Text + "'", cn);

        dtr = cmd.ExecuteReader();

        if (dtr.Read())
        {
            Response.Redirect("adminmenu.aspx");
        }
        else
        {
            TextBox1.Text = "";
            Label1.Visible = true;
            Label1.Text = "Invalid ID Or Password";
        }
        dtr.Close();
        cn.Close();
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("select * from uid where[id]=" + TextBox3.Text + "", cn);
        dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Panel1.Visible = true;
            TextBox3.Visible = false;
            Label1.Visible = false;
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Unique Id";
            TextBox3.Text = "";
        }
    }
}
