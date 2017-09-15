<%@ Page Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_content_wrapper">

        <!-- end of sidebar -->
    
        <!-- end of content -->
  
        <table style="width: 100%;">
            <tr>
                <td style="height: 24px">
                    CHANGE YOUR PASSWORD</td>
                <td style="height: 24px">
                    SUBJECTS FOR TEST</td>
            </tr>
            <tr>
                <td style="height: 201px">
                    <table style="width: 100%; height: 186px;">
                        <tr>
                            <td>
                                Enter Password</td>
                            <td>
                                <asp:TextBox ID="t1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                new password</td>
                            <td>
                                <asp:TextBox ID="t2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                confime password</td>
                            <td>
                                <asp:TextBox ID="t3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                    Text="Change Password" Width="143px" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
                                    Width="117px" />
                            </td>
                        </tr>
                    </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td style="height: 201px">
                    <table style="width: 100%; height: 184px;">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">C#</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">C++</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">JAVA</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
  
</div>
<br />
<br />
    <br />
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Button1_onclick() {

        }

        function Reset1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
