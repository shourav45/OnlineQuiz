<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_content_wrapper">

	<div id="templatemo_sidebar" style="width: 294px">
    
    	<div class="sidebar_box" style="width: 240px; height: 361px">
        	
            <h2 style="text-align: justify"><strong><em>&nbsp;&nbsp;&nbsp; Admin Login</em></strong></h2><asp:Login ID="Login1" runat="server" 
                    onauthenticate="Login1_Authenticate" BackColor="#EFF3FB" 
                BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
                Font-Names="Verdana" Font-Size="1em" ForeColor="#333333" Height="276px" 
                Width="226px">
            <TextBoxStyle Font-Size="1em" />
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <LayoutTemplate>
                <table border="0" cellpadding="4" cellspacing="0" 
                    style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" style="height:276px;width:226px;">
                                <tr>
                                    <td align="center" colspan="2" 
                                        style="color:White;background-color:#507CD1;font-size:0.9em;font-weight:bold;">
                                        Log In</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User 
                                        Name:</asp:Label>
                                    </td>
                                    <td style="width: 146px">
                                        <asp:TextBox ID="UserName" runat="server" Font-Size="1em" OnTextChanged="UserName_TextChanged"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                            ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td style="width: 146px">
                                        <asp:TextBox ID="Password" runat="server" Font-Size="1em" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                            ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 32px">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" OnClick="LoginButton_Click" Text="Log In" ValidationGroup="Login1" Height="29px" Width="76px" />
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red; height: 13px;" width="1">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
                </asp:Login>
                   
            
        </div>
        
       
    
    </div> <!-- end of sidebar -->
    
    <div id="templatemo_content" style="height: 570px; width: 565px">
    
    	<div class="content_box" style="height: 484px; width: 487px">
        
        	<h2 style="text-align: left; text-decoration: underline;"><strong>Welcome to Online Quiz System</strong></h2>
            <p style="text-align: justify">
                <span style="font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA;mso-bidi-font-weight:bold">The main objective of the online 
                examination system is that it helps companies/institutions to conduct exams to 
                any number of candidates at a time, in an automated manner.Student Registration
                 is the first process . As the part of the registration, the student has to
                  enter his name, address etc into the registration form.The administrator of 
                  the system prepares the tests and questions for each exam. The candidates 
                  can login through the client computers with their register number given to 
                  them and can take the exam. </span>
            </p>
            <p>
                &nbsp;</p>
            
        	
                       
        </div>
            
    </div>
        <!-- end of content -->
  
</div>
</asp:Content>

