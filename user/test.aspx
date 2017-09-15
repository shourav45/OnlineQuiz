<%@ Page Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="templatemo_content_wrapper">

    <!-- end of sidebar -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eexamConnectionString1 %>" 
        
        SelectCommand="SELECT [question], [ans1], [ans2], [ans3], [ans4], [qustorder], [correctans], [examid], [questionid] FROM [question] WHERE ([examid] = @examid)">
        <SelectParameters>
            <asp:SessionParameter Name="examid" SessionField="examid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="questionDetails" runat="server" AutoGenerateRows="False" 
            DataSourceID="SqlDataSource1" Height="50px" Width="643px" 
            BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" 
            CellPadding="3" GridLines="Horizontal"  
            style="margin-left: 25px" BorderStyle="None" DataKeyNames="questionid">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" 
                HorizontalAlign="Right" />
            <Fields>
                <asp:BoundField DataField="question" HeaderText="question" 
                    SortExpression="question" />
                <asp:BoundField DataField="ans1" HeaderText="ans1" 
                    SortExpression="ans1" />
                <asp:BoundField DataField="ans2" HeaderText="ans2" 
                    SortExpression="ans2" />
                <asp:BoundField DataField="ans3" HeaderText="ans3" 
                    SortExpression="ans3" />
                <asp:BoundField DataField="ans4" HeaderText="ans4" 
                    SortExpression="ans4" />
                <asp:BoundField DataField="qustorder" HeaderText="qustorder" 
                    SortExpression="qustorder" />
            </Fields>
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
    
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Your answer"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="answerdropdownlist" runat="server" OnSelectedIndexChanged="answerdropdownlist_SelectedIndexChanged"> 
            
            <asp:ListItem Value="0">Select one..</asp:ListItem>
            <asp:ListItem Value="1">Answer1</asp:ListItem>
            <asp:ListItem Value="2">Answer2</asp:ListItem>
            <asp:ListItem Value="3">Answer3</asp:ListItem>
            <asp:ListItem Value="4">Answer4</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="nextbutton" runat="server" onclick="nextbutton_Click" 
            Text="Next" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="*Pls select the options " 
            Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        </p>
    <!-- end of content -->
  
</div>
</asp:Content>

