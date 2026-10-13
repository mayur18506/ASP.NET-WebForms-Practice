<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_31.OR_Filter_Grid_View.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 530px;
        }
        .auto-style2 {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2">SEARCH</td>
                    <td>
                        <asp:RadioButton ID="MALERadioButton1" runat="server" AutoPostBack="True" GroupName="gender" OnCheckedChanged="MALERadioButton1_CheckedChanged" Text="MALE" />
&nbsp;&nbsp;
                        <asp:RadioButton ID="FEMALERadioButton2" runat="server" AutoPostBack="True" GroupName="gender" OnCheckedChanged="FEMALERadioButton2_CheckedChanged" Text="FEMALE" />
&nbsp;&nbsp;
                        <asp:RadioButton ID="BOTHRadioButton3" runat="server" AutoPostBack="True" GroupName="gender" OnCheckedChanged="BOTHRadioButton3_CheckedChanged" Text="BOTH" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="SEARCHButton1" runat="server" OnClick="SEARCHButton1_Click" Text="SEARCH" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
