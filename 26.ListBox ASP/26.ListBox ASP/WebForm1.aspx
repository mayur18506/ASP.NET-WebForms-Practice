<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_26.ListBox_ASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 164px">


            <asp:ListBox ID="ListBox1" runat="server" BackColor="Lime" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#0033CC" SelectionMode="Multiple">
             <%--   <asp:ListItem Value="1">India</asp:ListItem>
                <asp:ListItem Value="2">Pakistan</asp:ListItem>
                <asp:ListItem Value="3">Srilanka</asp:ListItem>
                <asp:ListItem Value="4">Bangladesh</asp:ListItem>
                <asp:ListItem Value="5">America</asp:ListItem>
                <asp:ListItem Value="6">Canada</asp:ListItem>--%>
            </asp:ListBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" />


        </div>
    </form>
</body>
</html>
