<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_33.CRUD_App_with_Images.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            /*text-align:center;*/
            border:5px black ridge;
            margin:auto;
        }
        .auto-style2 {
        }
        .auto-style3 {
        }
        .auto-style4 {
            height: 59px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="4" cellspacing="4" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><h1 style="text-align: center;">EMPLOYEE CRUD APPLICATION</h1></td>
                </tr>
                <tr>
                    <td class="auto-style3">ID</td>
                    <td>
                        <asp:TextBox ID="IDTextBox1" runat="server" Width="282px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="IDTextBox1" Display="Dynamic" ErrorMessage="ID is a Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">NAME</td>
                    <td>
                        <asp:TextBox ID="NAMETextBox2" runat="server" Width="282px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NAMETextBox2" Display="Dynamic" ErrorMessage="Name is a Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">AGE</td>
                    <td>
                        <asp:TextBox ID="AGETextBox3" runat="server" Width="282px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AGETextBox3" Display="Dynamic" ErrorMessage="Age is a Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">GENDER</td>
                    <td>
                        <asp:DropDownList ID="GENDERDropDownList1" runat="server" Width="285px">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="GENDERDropDownList1" Display="Dynamic" ErrorMessage="Gender is a Required Field" ForeColor="Red" InitialValue="Select Gender" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">DESIGNATION</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DESIGDropDownList2" runat="server" Width="285px">
                            <asp:ListItem>Select Designation</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Assistant Manager</asp:ListItem>
                            <asp:ListItem>Incharge</asp:ListItem>
                            <asp:ListItem>Operator</asp:ListItem>
                            <asp:ListItem>Director</asp:ListItem>
                            <asp:ListItem>PA</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DESIGDropDownList2" Display="Dynamic" ErrorMessage="Designation is a Required Field" ForeColor="Red" InitialValue="Select Designation" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">SALARY</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="SALARYTextBox4" runat="server" Width="282px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="SALARYTextBox4" Display="Dynamic" ErrorMessage="Salary is a Required Field" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">IMAGE</td>
                    <td>
                        <asp:Image ID="GetImage" Height="70" Width="70" Visible="False" runat="server" />
                        <br />
                        <asp:FileUpload ID="IMAGEFileUpload1" runat="server" Width="289px" />
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="INSERTButton1" runat="server" OnClick="INSERTButton1_Click" Text="INSERT" />
                        <asp:Button ID="UPDATEButton2" runat="server" Text="UPDATE" OnClick="UPDATEButton2_Click" />
                        <asp:Button ID="DELETEButton3" runat="server" Text="DELETE" OnClick="DELETEButton3_Click" />
                        <asp:Button ID="RESETButton4" runat="server" OnClick="RESETButton4_Click" Text="RESET" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Larger" ForeColor="Red" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:CommandField HeaderText="SELECT" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="LabelId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
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
                    <asp:TemplateField HeaderText="GENDER">
                        <ItemTemplate>
                            <asp:Label ID="LabelGender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DESIGNATION">
                        <ItemTemplate>
                            <asp:Label ID="LabelDesignation" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SALARY">
                        <ItemTemplate>
                            <asp:Label ID="LabelSalary" runat="server" Text='<%# Eval("salary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="IMAGE">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image_path") %>' Width="100px" Height="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
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
        </div>
    </form>
</body>
</html>
