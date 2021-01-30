using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Adminregi : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; initial catalog=minor; integrated security=true;");

        cn.Open();
        cmd = new SqlCommand("select adminid from admin order by adminid desc", cn);
        dtr = cmd.ExecuteReader();

        if (dtr.Read())
        {
            int a = (int)dtr["adminid"];
            a++;
            TextBox1.Text = a.ToString();
        }
        else
        {
            TextBox1.Text = "014200";
        }
        dtr.Close();
        cn.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into admin values ('" + TextBox1.Text + "','" + TextBox2.Text + "')", cn);
        cmd.ExecuteNonQuery();


        Response.Redirect("adminlogin.aspx");
        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        TextBox2.Text = "";

    }
}
