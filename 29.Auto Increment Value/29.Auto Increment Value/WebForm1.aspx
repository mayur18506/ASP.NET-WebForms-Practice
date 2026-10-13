<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_29.Auto_Increment_Value.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400%;
        }
        .auto-style2 {
            width: 121px;
        }
        .auto-style3 {
            height: 41px;
        }
        .auto-style4 {
            height: 41px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2">ID</td>
                    <td>
                        <asp:TextBox ID="IDTextBox1" runat="server" ReadOnly="True" Width="248px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">NAME</td>
                    <td>
                        <asp:TextBox ID="NAMETextBox2" runat="server" Width="248px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">AGE</td>
                    <td>
                        <asp:TextBox ID="AGETextBox3" runat="server" Width="248px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Button ID="INSERTButton1" runat="server" OnClick="INSERTButton1_Click" Text="INSERT" />
                        <asp:Button ID="UPDATEButton2" runat="server" Text="UPDATE" OnClick="UPDATEButton2_Click" />
                        <asp:Button ID="DELETEButton3" runat="server" Text="DELETE" OnClick="DELETEButton3_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField HeaderText="SELECT" ShowSelectButton="True" />
                                <asp:TemplateField HeaderText="ID">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelId" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NAME">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelName" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="AGE">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelAge" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
