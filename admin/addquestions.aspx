<%@ Page Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="addquestions.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
   .style1
        {
            width: 69%;
        }
  .style11
        {
            width: 173px;
        }
        .style14
        {
         width: 57px;
     }
        .style12
        {
            height: 23px;
            width: 173px;
        }
        .style15
        {
            height: 23px;
            width: 57px;
        }
        .style13
        {
            width: 173px;
            height: 31px;
        }
        .style16
        {
            width: 57px;
            height: 31px;
        }
        </style>
   
    <div id="templatemo_content_wrapper">
        <!-- end of sidebar -->
    <table bgcolor="#99ccff" class="style1" 
                
                style="font-family: Andalus; font-style: italic; color: darkgreen; height: 297px; margin-left: 85px;">
                <tr>
                    <td class="style11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Question" 
                            style="font-weight: 700; color: #0000FF"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="TextBox3" runat="server" Width="426px" 
                            ontextchanged="TextBox3_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Answer1" 
                            style="font-weight: 700; color: #0000FF"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="TextBox4" runat="server" Width="432px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Answer2" 
                            style="font-weight: 700; color: #0000FF"></asp:Label>
                        &nbsp;</td>
                    <td class="style15">
                        <asp:TextBox ID="TextBox5" runat="server" Width="430px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Answer3" 
                            style="font-weight: 700; color: #0000FF"></asp:Label>
                        &nbsp;</td>
                    <td class="style14">
                        <asp:TextBox ID="TextBox6" runat="server" Width="432px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="Answer4" 
                            style="font-weight: 700; color: #0000FF"></asp:Label>
                        &nbsp;</td>
                    <td class="style14">
                        <asp:TextBox ID="TextBox7" runat="server" Width="432px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="Correct Answer" 
                            style="font-weight: 700; color: #0000FF"></asp:Label>
                        &nbsp;</td>
                    <td class="style16">
                        <asp:TextBox ID="TextBox8" runat="server" Width="432px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Question Number" 
                            style="font-weight: 700; color: #0000FF"></asp:Label>
                        
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="TextBox9" runat="server" Width="432px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="TextBox9" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Exam ID" 
                            style="font-weight: 700; color: #0000FF"></asp:Label>
                    </td>
                    <td class="style14">
                        <asp:TextBox ID="TextBox10" runat="server" Width="432px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="TextBox10" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><td colspan=2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="addbutton" runat="server" BackColor="Maroon" Font-Bold="True" 
            ForeColor="White" onclick="addbutton_Click" Text="Add Question" Height="35px" 
                            Width="115px" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" ForeColor="DarkGreen"></asp:Label>
                </td></tr>
            </table>
        <!-- end of content -->
  
    
  
</div>
 
        
<br />
<br />
    <br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
</asp:Content>
