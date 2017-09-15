<%@ Page Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="DORE.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_content_wrapper">

	
            
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" DataKeyNames="questionid" 
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" 
                ShowEditButton="True" />
            <asp:BoundField DataField="questionid" HeaderText="questionid" ReadOnly="True" 
                SortExpression="questionid" />
            <asp:BoundField DataField="question" HeaderText="question" 
                SortExpression="question" />
            <asp:BoundField DataField="ans1" HeaderText="ans1" SortExpression="ans1" />
            <asp:BoundField DataField="ans2" HeaderText="ans2" SortExpression="ans2" />
            <asp:BoundField DataField="ans3" HeaderText="ans3" SortExpression="ans3" />
            <asp:BoundField DataField="ans4" HeaderText="ans4" SortExpression="ans4" />
            <asp:BoundField DataField="correctans" HeaderText="correctans" 
                SortExpression="correctans" />
            <asp:BoundField DataField="qustorder" HeaderText="qustorder" 
                SortExpression="qustorder" />
            <asp:BoundField DataField="examid" HeaderText="examid" 
                SortExpression="examid" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eexamConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:eexamConnectionString1.ProviderName %>" 
        
        SelectCommand="SELECT [questionid], [question], [ans1], [ans2], [ans3], [ans4], [correctans], [qustorder], [examid] FROM [question]" 
        DeleteCommand="DELETE FROM [question] WHERE [questionid] = @questionid" 
        InsertCommand="INSERT INTO [question] ([question], [ans1], [ans2], [ans3], [ans4], [correctans], [qustorder], [examid]) VALUES (@question, @ans1, @ans2, @ans3, @ans4, @correctans, @qustorder, @examid)" 
        UpdateCommand="UPDATE [question] SET [question] = @question, [ans1] = @ans1, [ans2] = @ans2, [ans3] = @ans3, [ans4] = @ans4, [correctans] = @correctans, [qustorder] = @qustorder, [examid] = @examid WHERE [questionid] = @questionid">
        <DeleteParameters>
            <asp:Parameter Name="questionid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="ans1" Type="String" />
            <asp:Parameter Name="ans2" Type="String" />
            <asp:Parameter Name="ans3" Type="String" />
            <asp:Parameter Name="ans4" Type="String" />
            <asp:Parameter Name="correctans" Type="Int32" />
            <asp:Parameter Name="qustorder" Type="Int32" />
            <asp:Parameter Name="examid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="question" Type="String" />
            <asp:Parameter Name="ans1" Type="String" />
            <asp:Parameter Name="ans2" Type="String" />
            <asp:Parameter Name="ans3" Type="String" />
            <asp:Parameter Name="ans4" Type="String" />
            <asp:Parameter Name="correctans" Type="Int32" />
            <asp:Parameter Name="qustorder" Type="Int32" />
            <asp:Parameter Name="examid" Type="Int32" />
            <asp:Parameter Name="questionid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

	
            
    </div> <!-- end of content -->
  
</asp:Content>

