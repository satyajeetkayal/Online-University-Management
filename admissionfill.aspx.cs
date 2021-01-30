using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admissionfill : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dtr;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection("data source=IMMORTAL\\SQLEXPRESS; Initial Catalog=minor; Integrated security=true;");
        cn.Open();
        cmd = new SqlCommand("select application from student order by application desc", cn);
        dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            int i = (int)dtr["application"];
            i++;
            TextBox12.Text = i.ToString();
        }
        else
        {
            TextBox12.Text = "10000";
        }
        dtr.Close();
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["app"] = TextBox12.Text;
        Session["st"] = TextBox2.Text;
        Session["se"] = TextBox13.Text;
        Session["f"] = TextBox3.Text;
        Session["m"] = TextBox4.Text;
        Session["d"] = TextBox5.Text;
        Session["g"] = DropDownList1.Text;
        Session["n"] = TextBox6.Text;
        Session["dp"] = DropDownList2.Text;
        Session["sc"] = TextBox14.Text;
        Session["y"] = TextBox15.Text;
        Session["c"] = TextBox7.Text;
        Session["sa"] = TextBox8.Text;
        Session["ad"] = TextBox9.Text;
        Session["e"] = TextBox1.Text;
        Session["mo"] = TextBox10.Text;
        Session["po"] = TextBox11.Text;
        Response.Redirect("printpage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
       
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
    }
    protected void TextBox12_TextChanged(object sender, EventArgs e)
    {

    }
}
