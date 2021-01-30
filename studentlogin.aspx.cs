using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;

        cn=new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; initial catalog=minor; integrated security=true;");
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd=new SqlCommand("select * from login where [username]='"+TextBox2.Text+"' and [password]='"+TextBox1.Text+"'",cn);
        dtr=cmd.ExecuteReader();

        if (dtr.Read())
        {
        Response.Redirect("studentmenu.aspx");
        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label1.Visible = true;
            Label1.Text = "Invalid UserName Or Password";
        }
        dtr.Close();
        cn.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
}
