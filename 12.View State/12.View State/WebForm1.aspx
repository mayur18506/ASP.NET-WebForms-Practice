<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_12.View_State.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 203px;
            height: 41px;
        }
        .auto-style3 {
            width: 203px;
            height: 43px;
        }
        .auto-style4 {
            height: 43px;
        }
        .auto-style5 {
            height: 41px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style3">USERNAME</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="USERTextBox1" runat="server" Width="273px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">PASSWORD</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="PASSTextBox2" runat="server" Width="274px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="SUBMITButton1" runat="server" OnClick="SUBMITButton1_Click" Text="SUBMIT" />
                        <asp:Button ID="RESTOREButton2" runat="server" OnClick="RESTOREButton2_Click" Text="RESTORE" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
