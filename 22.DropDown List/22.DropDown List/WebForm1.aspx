<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_22.DropDown_List.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 70px">



           

            <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="120px">
                <asp:ListItem Value="-1">Select City</asp:ListItem>
                <asp:ListItem Value="1">Hydrabad</asp:ListItem>
                <asp:ListItem Value="2">Mumbai</asp:ListItem>
                <asp:ListItem Value="3">Chennai</asp:ListItem>
                <asp:ListItem Value="4">Kolkata</asp:ListItem>

            </asp:DropDownList>



           

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" style="height: 29px" />



        </div>
    </form>
</body>
</html>
