using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class printpage : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; Initial Catalog=minor; Integrated security=true;");

        TextBox17.Text = (string)Session["app"];
        TextBox1.Text = (string)Session["st"];
        TextBox2.Text = (string)Session["se"];
        TextBox3.Text = (string)Session["f"];
        TextBox4.Text = (string)Session["m"];
        TextBox5.Text = (string)Session["d"];
        TextBox6.Text = (string)Session["g"];
        TextBox7.Text = (string)Session["n"];
        TextBox8.Text = (string)Session["dp"];
        TextBox11.Text = (string)Session["sc"];
        TextBox12.Text = (string)Session["y"];
        TextBox9.Text = (string)Session["c"];
        TextBox10.Text = (string)Session["sa"];
        TextBox13.Text = (string)Session["ad"];
        TextBox14.Text = (string)Session["e"];
        TextBox15.Text = (string)Session["mo"];
        TextBox16.Text = (string)Session["po"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into student values ('" + TextBox17.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "'," + TextBox15.Text + "," + TextBox16.Text + ")", cn);
        cmd.ExecuteNonQuery();
       
        cn.Close();
        Button1.Visible = true;
        Button2.Visible = false;
     
    }
    protected void TextBox17_TextChanged(object sender, EventArgs e)
    {

    }
}
