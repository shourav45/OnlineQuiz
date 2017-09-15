<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_content_wrapper">

    <!-- end of sidebar -->
    
    <div id="templatemo_content">
    <table >
    <tr>
        <td  >
            &nbsp;</td>
        <td >
           &nbsp;<span >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            USER REGISTRATION</span>
                    <table align="center" >
                        
                        
                        <tr>
                            <td class="style12">
                                </td>
                            <td class="style13" >
                                User Name</td>
                            <td class="style13" align="left">
                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtUserName" ErrorMessage="*" Font-Size="Large"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" >
                                </td>
                            <td >
                                Password</td>
                            <td align="left" >
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                    ControlToValidate="txtPassword" ErrorMessage="*" Font-Size="Large"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" >
                                </td>
                            <td >
                                Conform Password</td>
                            <td align="left">
                                <asp:TextBox ID="txtCPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassWord"
                    ControlToValidate="txtCPassword" ErrorMessage="Not Matched" Font-Bold="True" ValidationGroup="g1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" >
                                &nbsp;</td>
                            <td >
                                Email</td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="*" Font-Size="Large"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="format not correct" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style10">
                                </td>
                            <td >
                                Security Question</td>
                            <td align="left" >
                                <asp:TextBox ID="txtSecurityQues" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtUserName" ErrorMessage="*" Font-Size="Large"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" >
                                </td>
                            <td >
                                Security Answer</td>
                            <td align="left" >
                                <asp:TextBox ID="txtSecurityAns" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="txtUserName" ErrorMessage="*" Font-Size="Large"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        
                        <tr>
                            <td class="style14" >
                                </td>
                            <td class="style15" >
                                </td>
                            <td class="style15">
                                <asp:Button ID="btnAdd" runat="server" Height="26px" onclick="btnAdd_Click" 
                                    Text="Add" Width="81px" Font-Bold="True" BackColor="#00FFCC" 
                                    ForeColor="White" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" Text="Clear" 
                                     Font-Bold="True" BackColor="#00FFCC" ForeColor="White" 
                                    Height="26px" Width="75px" />
                            </td>
                        </tr>
                        
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large" 
                                    ForeColor="White" style="color: #000000"></asp:Label>
                                </td>
                        </tr>
                                           
                        
                        
                    </table>
  </table>
    </div> <!-- end of content -->
  
</div>
    
  
    
</asp:Content>

