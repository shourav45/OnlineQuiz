using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   


    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string admin = Login1.UserName;
        string password = Login1.Password;
        if (admin.Equals("admin") && password.Equals("admin"))
        {
            Session["Admin"] = admin;
            Response.Redirect("~/admin/addquestions.aspx");
        }
        else
        {
            Login1.FailureText = "Username and Password are not matching";
        }

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }
    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }
}
