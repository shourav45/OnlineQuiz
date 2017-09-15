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
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void addbutton_Click(object sender, EventArgs e)
    {
        string str = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\eexam.mdf;Integrated Security=True;";
        SqlConnection con = new SqlConnection(str);
        try
        {
        con.Open();

        string a = "insert into question(question,ans1,ans2,ans3,ans4,correctans,qustorder,examid)values(@question,@ans1,@ans2,@ans3,@ans4,@correctans,@qustorder,@examid)";

        SqlCommand cmd = new SqlCommand(a, con);


        cmd.Parameters.AddWithValue("@question", TextBox3.Text);

        cmd.Parameters.AddWithValue("@ans1", TextBox4.Text);
        cmd.Parameters.AddWithValue("@ans2", TextBox5.Text);
        cmd.Parameters.AddWithValue("@ans3", TextBox6.Text);
        cmd.Parameters.AddWithValue("@ans4", TextBox7.Text);

        cmd.Parameters.AddWithValue("@correctans", TextBox8.Text);
        cmd.Parameters.AddWithValue("@qustorder", TextBox9.Text);

        cmd.Parameters.AddWithValue("@examid", TextBox10.Text);

        cmd.ExecuteNonQuery();
        Response.Redirect("addquestions.aspx");
        }
        catch (Exception err)
        {
            Label11.Text = err.Message;

        }
        finally
        {
            con.Close();

        }

    }
}
