<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_16.Log_In_Form_with_Database.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            height: 25px;
            }
        .auto-style6 {
        }
        .auto-style7 {
            height: 25px;
            width: 133px;
        }
        .auto-style8 {
            width: 133px;
        }
        .auto-style1 {
            text-align: center;
            font-size:30px;
        }
        table
        {
            margin:auto;
            width:300px;
            border:5px black ridge;
        }
        .link
        {
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="4" cellspacing="4" >
                <tr>
                    <td class="auto-style1" colspan="2">LOGIN</td>
                </tr>
                <tr>
                    <td class="auto-style4">USERNAME</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="USERTextBox1" runat="server" Width="264px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="USERTextBox1" Display="Dynamic" ErrorMessage="Please enter username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">PASSWORD</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="PASSTextBox2" runat="server" Width="266px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PASSTextBox2" Display="Dynamic" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="loginButton1" runat="server" Text="LOGIN" OnClick="loginButton1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="link" colspan="2">
                        <a href="Register.aspx">Not Registered yet ? click Here</a>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
