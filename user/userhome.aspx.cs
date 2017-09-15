using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["examid"] = "";
        string pass = t1.Text.Trim();
        string np = t2.Text.Trim();
        string cnp = t3.Text.Trim();
        string name = Session["username"].ToString();
        string str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eexam.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(str);
        con.Open();
        string query = " select * from userreg where username=@name";
        SqlCommand com = new SqlCommand(query, con);
        com.Parameters.AddWithValue("@name", name);
        
        SqlDataReader reader = com.ExecuteReader();
        reader.Read();
        string pass1 = reader["password"].ToString().Trim();
        con.Close();

        if (pass.Equals(pass1))
        {
            if (np.Equals(cnp))
            {
                con.Open();
                string a = " update userreg set password=@cnp where username=@username";
                SqlCommand come = new SqlCommand(a, con);
                come.Parameters.AddWithValue("@cnp", cnp);
                come.Parameters.AddWithValue("@username", name);
                come.ExecuteNonQuery();
                Label3.Text = "Password Changed";

            }
            else
            {
                Label3.Text = "Passwords not matching";
            }
        }
        else
        {
            Label3.Text = "Error";
        }
        con.Close();
    }

    public string pw { get; set; }
    protected void Button2_Click(object sender, EventArgs e)
    {
        t1.Text = "";
        t2.Text = "";
        t3.Text = "";
        Label3.Text = "";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["examid"] = "1";
        Session["res"] = "00";
        Session.Add("dt", DateTime.Now.ToString());
        Response.Redirect("~/user/test.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["examid"] = "2";
        Session["res"] = "00";
        Session.Add("dt", DateTime.Now.ToString());
        Response.Redirect("~/user/test.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["examid"] = "3";
        Session["res"] = "00";
        Session.Add("dt", DateTime.Now.ToString());
        Response.Redirect("~/user/test.aspx");
    }
}