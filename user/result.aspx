<%@ Page Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_content_wrapper">

    <!-- end of sidebar -->
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." ForeColor="#333333" 
        GridLines="None" Width="724px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="223px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="examid" HeaderText="examid" 
                SortExpression="examid" />
            <asp:BoundField DataField="datetime" HeaderText="datetime" 
                SortExpression="datetime" />
            <asp:BoundField DataField="score" HeaderText="score" SortExpression="score" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eexamConnectionString1 %>" 
        
            
            SelectCommand="SELECT TOP 5  examid, datetime, score, username FROM result WHERE (username = @username) AND (examid = @examid) ORDER BY datetime DESC">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
            <asp:SessionParameter Name="examid" SessionField="examid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  
        <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
        <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
  
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" 
            onselectedindexchanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="qust" HeaderText="qust" SortExpression="qust" />
                <asp:BoundField DataField="cans" HeaderText="cans" SortExpression="cans" />
                <asp:BoundField DataField="uans" HeaderText="uans" SortExpression="uans" />
                <asp:BoundField DataField="res" HeaderText="res" SortExpression="res" />
            </Columns>
        </asp:GridView>
  
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eexamConnectionString1 %>" 
            SelectCommand="SELECT [qust], [cans], [uans], [res] FROM [fullresult] WHERE (([uid] = @uid) AND ([dt] = @dt))">
            <SelectParameters>
                <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
                <asp:SessionParameter Name="dt" SessionField="dt" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
  
</div>
</asp:Content>

