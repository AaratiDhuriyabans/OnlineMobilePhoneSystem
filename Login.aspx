<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1223px;
            height: 177px;
        }
        .style2
        {
            width: 611px;
            font-weight: bold;
            text-align: right;
        }
        .style3
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><h1 class="style3" style="background-color: #000099">Login Here!</h1></center>
    <table cellpadding="2" cellspacing="2" class="style1">
        <tr>
            <td class="style2">
                <strong>
                <br />
                Enter UserName*:</strong></td>
            <td>
                &nbsp;<asp:TextBox ID="txtusername" 
                    runat="server" Width="300px" Height="40px" ValidationGroup="a"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" Display="Dynamic" 
                    ErrorMessage="* Enter Username" ForeColor="Red" SetFocusOnError="True" 
                    style="font-weight: 700" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <strong>
                <br />
                Enter Password*:</strong></td>
            <td>
                &nbsp;<asp:TextBox ID="txtpassword" runat="server" 
                    Width="300px" Height="40px" 
                    TextMode="Password" ValidationGroup="a"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" Display="Dynamic" 
                    ErrorMessage="*Invalid Password" ForeColor="Red" SetFocusOnError="True" 
                    style="font-weight: 700" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;
                <asp:Button ID="Button1" runat="server" 
                    style="font-weight: 700; color: #FFFFFF; background-color: #000099;" Text="Login" 
                    onclick="Button1_Click" Height="27px" Width="68px" ValidationGroup="a" />
                &nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="text-align: center">
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    PostBackUrl="~/User/Registration.aspx" style="font-weight: 700">Not Registered Yet? Click Here</asp:LinkButton>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" 
                    PostBackUrl="~/User/ChangePassword.aspx" style="font-weight: 700">Forget Password</asp:LinkButton>
            </td>
        </tr>
    </table>

    </div>
    </form>
</body>
</html>
