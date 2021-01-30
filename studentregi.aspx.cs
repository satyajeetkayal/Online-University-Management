using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class studentregi : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn=new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; Initial Catalog=minor; Integrated security=true;");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd=new SqlCommand("insert into login values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"',"+TextBox5.Text+","+TextBox6.Text+",'"+DropDownList1.Text+"','"+TextBox7.Text+"')",cn);

        cmd.ExecuteNonQuery();
       
        
        Response.Redirect("studentlogin.aspx");
        cn.Close();
    }
protected void  Button2_Click(object sender, EventArgs e)
{
        TextBox1.Text="";
        TextBox2.Text="";
        TextBox3.Text="";
        TextBox4.Text="";
        TextBox5.Text="";
        TextBox6.Text="";
        TextBox7.Text = "";
        DropDownList1.SelectedIndex = 0;


}
protected void TextBox5_TextChanged(object sender, EventArgs e)
{
   
}
}
