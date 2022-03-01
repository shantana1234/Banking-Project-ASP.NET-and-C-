<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div style="height: 605px">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="481px" 
            style="font-weight: 700; margin-left: 50px" Width="911px">
            <asp:GridView ID="GridView1" runat="server" Height="95px" Width="222px" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" Font-Bold="True" Font-Names="Algerian" 
                Font-Size="Large" Text="VIEW ACCOUNT DETAILS" />
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Names="Algerian" 
                Font-Size="Large" Text="CREATE AN ACCOUNT" onclick="Button6_Click" />
            <br />
            <br />
            <asp:Button ID="Button7" runat="server" Font-Bold="True" Font-Names="Algerian" 
                Font-Size="Large" Text="LOG OUT" onclick="Button7_Click" />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
