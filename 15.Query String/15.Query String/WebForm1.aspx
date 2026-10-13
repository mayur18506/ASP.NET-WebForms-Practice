<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_15.Query_String.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 59%;
        }
        .auto-style2 {
            width: 175px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">STUDENT ID</td>
                    <td>
                        <asp:TextBox ID="IDTextBox1" runat="server" Width="306px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">STUDENT NAME</td>
                    <td>
                        <asp:TextBox ID="NAMETextBox2" runat="server" Width="306px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">STUDENT AGE</td>
                    <td>
                        <asp:TextBox ID="AGETextBox3" runat="server" Width="306px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="SENDButton1" runat="server" OnClick="SENDButton1_Click" Text="SEND" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
