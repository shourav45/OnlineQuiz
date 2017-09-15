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
        string uname = Login1.UserName;
        string pword = Login1.Password;
        string str = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\eexam.mdf;Integrated Security=True;";
        SqlConnection con = new SqlConnection(str);
        try
        {
            con.Open();
            string funame = uname.Trim();
            string fpword = pword.Trim();
            string query = " select * from userreg";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader reader = com.ExecuteReader();
            // reader.Read();
            while (reader.Read())
            {
                string username = reader["username"].ToString();
                string password = reader["password"].ToString();
                string uid = reader["uid"].ToString();

                string s = username.Trim();
                string p = password.Trim();
                if (uname.Equals(s) && pword.Equals(p))
                {
                    Session["username"] = username;
                    Session["uid"] = uid;
                    Response.Redirect("~/user/userhome.aspx");
                }

                else
                {

                    Login1.FailureText = "Username and Password are not matching";
                }
            }
        }
        catch (Exception err)
        {
            Response.Write(err.Message);
        }
        con.Close();
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }
}
