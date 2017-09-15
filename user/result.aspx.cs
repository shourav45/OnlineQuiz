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



        string str = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\eexam.mdf;Integrated Security=True;";
        SqlConnection con = new SqlConnection(str);
       
        con.Open();

        string a = "insert into result(examid,datetime,score,username)values(@examid,@datetime,@score,@username)";

        SqlCommand cmd = new SqlCommand(a, con);


        cmd.Parameters.AddWithValue("@examid", Session["examid"].ToString());
        cmd.Parameters.AddWithValue("@datetime", DateTime.Now.ToString());
        cmd.Parameters.AddWithValue("@score", Session["res"].ToString());
        cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
      

        cmd.ExecuteNonQuery();
       
       
            con.Close();

      
  
    }




    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
   

