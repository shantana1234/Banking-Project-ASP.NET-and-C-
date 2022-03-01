<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create2.aspx.cs" Inherits="create2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 75%;
            height: 50px;
            border: 5px solid #000000;
        }
        .style29
        {
            height: 26px;
            width: 127px;
        }
        .style36
        {
            height: 26px;
            width: 133px;
        }
        .style23
        {
            height: 26px;
            width: 71px;
        }
        .style30
        {
            width: 127px;
        }
        .style37
        {
            width: 133px;
        }
        .style24
        {
            width: 71px;
        }
        .style31
        {
            width: 127px;
            height: 28px;
        }
        .style38
        {
            width: 133px;
            height: 28px;
        }
        .style25
        {
            width: 71px;
            height: 28px;
        }
        .style39
        {
            height: 26px;
            width: 138px;
        }
        .style40
        {
            width: 138px;
        }
        .style41
        {
            width: 138px;
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div style="height: 480px; font-family: Algerian; font-size: xx-large; color: #000080;">
    
        CREATE ACCOUNT<table cellpadding="2" class="style1" 
                
                
            style="border: thin dotted #000000; font-family: 'Franklin Gothic Book'; font-size: xx-small; width: 893px;">
                <tr>
                    <td class="style29" 
                        
                        
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        ACCOUNT TYPE</td>
                    <td class="style39">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="285px">
                            <asp:ListItem>SAVINGS ACCOUNT</asp:ListItem>
                            <asp:ListItem>FIXED ACCOUNT</asp:ListItem>
                            <asp:ListItem>FIXED DEPOSIT</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style36" style="color: #800000">
                        <asp:Button ID="Button3" runat="server" BackColor="#339933" BorderColor="Black" 
                            Font-Bold="True" Font-Names="Algerian" Height="25px" onclick="Button1_Click" 
                            Text="SUBMIT" Width="87px" />
                    </td>
                    <td class="style23">
                        <asp:Button ID="Button4" runat="server" BackColor="#CC0000" BorderColor="Black" 
                            Font-Bold="True" Font-Names="Algerian" Height="25px" onclick="Button2_Click" 
                            Text="CANCEL" Width="87px" />
                    </td>
                </tr>
                </table>
    
    </div>
    </form>
</body>
</html>
