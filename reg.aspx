<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

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
        .style13
        {
            width: 162px;
            height: 26px;
        }
        .style14
        {
            width: 162px;
        }
        .style17
        {
            width: 162px;
            height: 28px;
        }
        .style19
        {
            width: 205px;
            height: 28px;
        }
        .style21
        {
            width: 205px;
            height: 26px;
        }
        .style22
        {
            width: 205px;
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
        .style31
        {
            width: 193px;
            height: 26px;
        }
        .style32
        {
            width: 193px;
        }
        .style33
        {
            width: 193px;
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 483px">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#669900" Font-Bold="True" 
            Font-Names="Algerian" Font-Size="Large" Height="23px">
            REGISTRATION<br />
            <asp:Panel ID="Panel2" runat="server" Font-Names="Franklin Gothic Book" 
                Font-Size="Small" Height="36px" Width="965px">
                Register as-
                <br /><asp:RadioButton ID="RadioButton"  runat="server" Font-Bold="True" 
                    Font-Names="Franklin Gothic Book" Font-Size="small" GroupName="reg" 
                   Text="small"/>
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True"
                    Font-Names="Franklin Gothic Book" Font-Size="small" GroupName="reg" 
                    Text="USER "  />
                &nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" 
                    Font-Names="Franklin Gothic Book" Font-Size="small" GroupName="reg" 
                    Text="STAFF"  />
                &nbsp;&nbsp;&nbsp; &nbsp;
            </asp:Panel>
            <table cellpadding="2" class="style1" 
                style="border: thin dotted #000000; font-family: 'Franklin Gothic Book'; font-size: xx-small; width: 100%;">
                <tr>
                    <td class="style13" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        USER NAME</td>
                    <td class="style31">
                        <asp:TextBox ID="name" runat="server" Width="280px"></asp:TextBox>
                    </td>
                    <td class="style21" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="name" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style23">
                    </td>
                </tr>
                <tr>
                    <td class="style14" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        FATHER&#39;S NAME</td>
                    <td class="style32">
                        <asp:TextBox ID="fname" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style22" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="fname" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style14" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        MOTHER&#39;S NAME</td>
                    <td class="style32">
                        <asp:TextBox ID="mname" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style22" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="mname" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style14" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        EMAIL</td>
                    <td class="style32">
                        <asp:TextBox ID="email" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style22" style="color: #800000">
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
                    <td class="style17" 
                        
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        PHONE NUMBER</td>
                    <td class="style33">
                        <asp:TextBox ID="phone" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style19" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="phone" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style25">
                        </td>
                </tr>
                <tr>
                    <td class="style14" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        PASSWORD</td>
                    <td class="style32">
                        <asp:TextBox ID="pass" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style22" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="pass" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        <asp:Button ID="Button1" runat="server" BackColor="#339933" BorderColor="Black" 
                            Font-Bold="True" Font-Names="Algerian" Height="25px" onclick="Button1_Click" 
                            Text="SUBMIT" Width="87px" />
                    </td>
                </tr>
                <tr>
                    <td class="style14" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        CONFIRM PASSWORD</td>
                    <td class="style32">
                        <asp:TextBox ID="cpass" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style22" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="cpass" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="pass" ControlToValidate="cpass" 
                            ErrorMessage="Password didn't match"></asp:CompareValidator>
                    </td>
                    <td class="style24">
                        <asp:Button ID="Button2" runat="server" BackColor="#CC0000" BorderColor="Black" 
                            Font-Bold="True" Font-Names="Algerian" Height="25px" onclick="Button2_Click" 
                            Text="CANCEL" Width="87px" />
                    </td>
                </tr>
                <tr>
                    <td class="style17" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        BIRTH DATE</td>
                    <td class="style33">
                        <asp:TextBox ID="bdate" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style19" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="bdate" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style25">
                    </td>
                </tr>
                <tr>
                    <td class="style14" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        NATIONALITY</td>
                    <td class="style32">
                        <asp:TextBox ID="nation" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style22" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="nation" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        CITY</td>
                    <td class="style31">
                        <asp:DropDownList ID="city" runat="server" Height="20px" Width="280px">
                            <asp:ListItem>DHAKA</asp:ListItem>
                            <asp:ListItem>RAJSHAHI</asp:ListItem>
                            <asp:ListItem>KHULNA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style21" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="city" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style23">
                    </td>
                </tr>
                <tr>
                    <td class="style14" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        PRESENT ADDRESS</td>
                    <td class="style32">
                        <asp:TextBox ID="preadd" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style22" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="preadd" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style14" 
                        style="font-family: 'Franklin Gothic Book'; font-size: small; font-weight: bold; font-style: normal;">
                        PARMANANT ADDRESS</td>
                    <td class="style32">
                        <asp:TextBox ID="paradd" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td class="style22" style="color: #800000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="paradd" ErrorMessage="This field can not be empty"></asp:RequiredFieldValidator>
                    </td>
                    <td class="style24">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
