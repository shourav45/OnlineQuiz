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
using System.IO;

using System.Text;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnAdd_Click(object sender, EventArgs e)
    {

        string str = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\eexam.mdf;Integrated Security=True;";
        SqlConnection con = new SqlConnection(str);
        
        int x;
        x = 0;
        try
        {

            con.Open();
            string username = txtUserName.Text;
            username.Trim();
            string query = " select * from userreg";
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            while (reader.Read())
            {
                string uname = reader["username"].ToString();
                string s = uname.Trim();
                if (username.Equals(s))
                {
                    x = 1;
                    reader.Close();
                    break;

                }
                else
                {
                    x = 0;
                }
            }
        }
        catch (Exception err)
        {

            Response.Write(err.Message);
        }
        con.Close();

        if (x == 0)
        {
            try
            {

                con.Open();

                string a = "insert into userreg(username,password,email,squestion,sanswer)values(@username,@password,@email,@squestion,@sanswer)";

                SqlCommand cmd = new SqlCommand(a, con);


                cmd.Parameters.AddWithValue("@username", txtUserName.Text.ToString());

                cmd.Parameters.AddWithValue("@password", txtPassword.Text.ToString());

                cmd.Parameters.AddWithValue("@squestion", txtSecurityQues.Text);
                cmd.Parameters.AddWithValue("@sanswer", txtSecurityAns.Text.ToString());
                
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.ToString());
               
                cmd.ExecuteNonQuery();
                 Response.Redirect("home.aspx");


            }
            catch (Exception err)
            {
                

            }
            finally
            {
                con.Close();

            }
        }
       

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {

    }
}
