<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_15.Query_String.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
        }
        .auto-style2 {
            width: 1013px;
        }
        .auto-style3 {
            width: 175px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style3">STUDENT ID</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="291px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">STUDENT NAME</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" Width="291px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">STUDENT AGE</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" Width="291px"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
