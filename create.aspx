<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="create" %>

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
        .style23
        {
            height: 26px;
            width: 71px;
        }
        .style24
        {
            width: 71px;
        }
        .style25
        {
            width: 71px;
            height: 28px;
        }
        .style29
        {
            height: 26px;
            width: 106px;
        }
        .style30
        {
            width: 106px;
        }
        .style31
        {
            width: 106px;
            height: 28px;
        }
        .style36
        {
            height: 26px;
            width: 133px;
        }
        .style37
        {
            width: 133px;
        }
        .style38
        {
            width: 133px;
            height: 28px;
        }
        .style39
        {
            height: 26px;
            width: 242px;
        }
        .style40
        {
            width: 242px;
        }
        .style41
        {
            width: 242px;
            height: 28px;
        }
    </style>
</head>
<body style="height: 483px">
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
                        &nbsp;</td>
                    <td class="style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style29" 
                        
                        
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        USER NAME</td>
                    <td class="style39">
                        <asp:TextBox ID="name" runat="server" Width="280px"></asp:TextBox>
                    </td>
                    <td class="style36" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="name" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style23">
                    </td>
                </tr>
                <tr>
                    <td class="style30" 
                        
                        
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        FATHER&#39;S NAME</td>
                    <td class="style40">
                        <asp:TextBox ID="fname" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style37" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="fname" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        <asp:Button ID="Button1" runat="server" BackColor="#339933" BorderColor="Black" 
                            Font-Bold="True" Font-Names="Algerian" Height="25px" onclick="Button1_Click" 
                            Text="SUBMIT" Width="87px" />
                    </td>
                </tr>
                <tr>
                    <td class="style30" 
                        
                        
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        MOTHER&#39;S NAME</td>
                    <td class="style40">
                        <asp:TextBox ID="mname" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style37" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="mname" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        <asp:Button ID="Button2" runat="server" BackColor="#CC0000" BorderColor="Black" 
                            Font-Bold="True" Font-Names="Algerian" Height="25px" onclick="Button2_Click" 
                            Text="CANCEL" Width="87px" />
                    </td>
                </tr>
                <tr>
                    <td class="style30" 
                        
                        
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        EMAIL</td>
                    <td class="style40">
                        <asp:TextBox ID="email" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style37" style="color: #800000">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="email" ErrorMessage="Enter a valid Email" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="email" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style31" 
                        
                        
                        
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        PHONE NUMBER</td>
                    <td class="style41">
                        <asp:TextBox ID="phone" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style38" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="phone" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style25">
                        </td>
                </tr>
                </table>
    
    </div>
    </form>
</body>
</html>
