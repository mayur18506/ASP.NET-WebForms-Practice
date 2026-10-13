<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_16.Log_In_Form_with_Database.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            margin:auto;
            border:ridge 5px black;
        }
        .auto-style2 {
            text-align:center;
            font-size:30px;
        }
        .auto-style3 {
            width: 210px;
        }
        .auto-style4 {
            width: 210px;
            height: 31px;
        }
        .auto-style5 {
            height: 31px;
            width: 180px;
        }
        .auto-style6 {
            width: 180px;
        }
        .auto-style7 {
            width: 210px;
            height: 34px;
        }
        .auto-style8 {
            width: 180px;
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">SIGNUP FORM</td>
                </tr>
                <tr>
                    <td class="auto-style3">FIRST NAME</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="fnameTextBox1" runat="server" Width="228px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnameTextBox1" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">LAST NAME</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="lnameTextBox2" runat="server" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lnameTextBox2" Display="Dynamic" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">GENDER</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="genderDropDownList1" runat="server" Width="230px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please Select a Gender" ForeColor="Red" SetFocusOnError="True" ControlToValidate="genderDropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">EMAIL</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="emailTextBox3" runat="server" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True" ControlToValidate="emailTextBox3">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox3" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">ADDRESS</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="addressTextBox7" runat="server" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True" ControlToValidate="addressTextBox7">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">USERNAME</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="userTextBox4" runat="server" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" ControlToValidate="userTextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">PASSWORD</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="passwordTextBox5" runat="server" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="passwordTextBox5">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="passwordTextBox5" Display="Dynamic" ErrorMessage="Please Enter a Strong Password" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">CONFIRM PASSWORD</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="conpassTextBox6" runat="server" Width="229px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="conpassTextBox6">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passwordTextBox5" ControlToValidate="conpassTextBox6" Display="Dynamic" ErrorMessage="Password is not Identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="signupButton1" runat="server" Text="SIGNUP" OnClick="signupButton1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <a href="Login.aspx">GO TO LOGIN FORM</a>
                    </td>
                </tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Larger" ForeColor="Red" />

        </div>
    </form>
</body>
</html>
