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


    string result = "";
    string coans = "";
    string usans = "";
      
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        questionDetails.DataBind();
    }




   
    protected void nextbutton_Click(object sender, EventArgs e)
    {
       if (answerdropdownlist.SelectedValue == "0")
            Label4.Visible = true;
        else
        {
            Label4.Visible = false;

            System.Data.DataRowView dr = (System.Data.DataRowView)questionDetails.DataItem;
            //string result;
            int a = 0;
           
           string QuestionID = dr["qustorder"].ToString();
           string qust=dr["question"].ToString();
           string CorrectAnswer = dr["correctans"].ToString();
           string UserAnswer = answerdropdownlist.SelectedValue.ToString();
           string id = dr["questionid"].ToString();
          
          
           if (CorrectAnswer == "1")
           {
               coans = dr["ans1"].ToString();
           }
           if (CorrectAnswer == "2")
           {
               coans = dr["ans2"].ToString();
           }
           if (CorrectAnswer == "3")
           {
               coans = dr["ans3"].ToString();
           }
           if (CorrectAnswer == "4")
           {
               coans = dr["ans4"].ToString();
           }
           if (UserAnswer == "1")
           {
               usans = dr["ans1"].ToString();
           }
           if (UserAnswer == "2")
           {
               usans = dr["ans2"].ToString();
           }
           if (UserAnswer == "3")
           {
               usans = dr["ans3"].ToString();
           }
           if (UserAnswer == "4")
           {
               usans = dr["ans4"].ToString();
           }

          
            if (UserAnswer == CorrectAnswer)
                result = "Correct";
            else
                result = "Incorrect";

            string str = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\eexam.mdf;Integrated Security=True;";
            SqlConnection con = new SqlConnection(str);


            con.Open();

            string b = "insert into fullresult(uid,dt,qust,cans,uans,res)values(@uid,@dt,@qust,@cans,@uans,@res)";

            SqlCommand cmd = new SqlCommand(b, con);


            cmd.Parameters.AddWithValue("@uid", Session["uid"].ToString());
            cmd.Parameters.AddWithValue("@dt", Session["dt"].ToString());
            cmd.Parameters.AddWithValue("@qust", qust);
            cmd.Parameters.AddWithValue("@cans", coans.ToString() );
            cmd.Parameters.AddWithValue("@uans", usans.ToString());
            cmd.Parameters.AddWithValue("@res", result);


            cmd.ExecuteNonQuery();


            con.Close();

            //{
            //return ResultValue.Correct;
            answerdropdownlist.SelectedIndex = 0;


           
            if (questionDetails.PageIndex == questionDetails.PageCount-1 )
            {
                if (result == "Correct")
                {
                    a = Convert.ToInt32(Session["res"]);
                    a = a + 1;
                    Session["res"] = a.ToString();
                }
                
                Response.Redirect("result.aspx");
            }
            else
            {
                questionDetails.PageIndex++;
            }
            

            if (questionDetails.PageIndex == questionDetails.PageCount - 1)
            {
                nextbutton.Text = "Finished";
            }
            if (result == "Correct")
            {
               a= Convert.ToInt32( Session["res"]);
               a = a + 1;
               Session["res"] = a.ToString();
            }
            
       }

        
    }

    
    protected void answerdropdownlist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
}
