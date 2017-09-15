<%@ Page Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_content_wrapper">

	
    
   
  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eexamConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:eexamConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [username], [password], [email], [squestion], [sanswer] FROM [userreg]" OnSelecting="SqlDataSource1_Selecting">
        </asp:SqlDataSource>

	
    
   
  
</div>
</asp:Content>

