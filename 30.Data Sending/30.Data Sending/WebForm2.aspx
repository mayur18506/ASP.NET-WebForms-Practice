<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_30.Data_Sending.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 438px;
        }
        .auto-style2 {
            width: 114px;
        }
        .auto-style3 {
            width: 287px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">ID</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="258px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">NAME</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="258px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">AGE</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" Width="258px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">IMAGE</td>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" Height="100px" Width="100px" runat="server" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
