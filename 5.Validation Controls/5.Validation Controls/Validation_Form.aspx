<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation_Form.aspx.cs" Inherits="_5.Validation_Controls.Validation_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
            height: 225px;
            margin-top: 0px;
        }
        .auto-style2 {
            width: 203px;
        }
        .auto-style3 {
            height: 34px;
        }
        .auto-style8 {
            width: 203px;
            height: 34px;
        }
        .auto-style9 {
            width: 203px;
            height: 41px;
        }
        .auto-style10 {
            height: 41px;
        }
        .auto-style11 {
            width: 203px;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
        }
        .auto-style13 {
            width: 203px;
            height: 38px;
        }
        .auto-style14 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Students Registration Form</h2>

            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Silver" Font-Size="Large" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">STUDENT NAME</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="nameTextBox1" runat="server" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox1" ErrorMessage="Enter Student Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">STUDENT EMAIL</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="emailTextBox2" runat="server" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="emailTextBox2" ErrorMessage="Please Enter Email Address" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox2" Display="Dynamic" ErrorMessage="Email is Invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">RE-ENTER EMAIL</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="reenteremailTextBox3" runat="server" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="reenteremailTextBox3" ErrorMessage="Please Re-Enter Email" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="emailTextBox2" ControlToValidate="reenteremailTextBox3" Display="Dynamic" ErrorMessage="Email is not Identical" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">CLASS</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="classTextBox1" runat="server" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="classTextBox1" Display="Dynamic" ErrorMessage="Please Enter Class" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="classTextBox1" Display="Dynamic" ErrorMessage="Class Should Be From 1 To 12" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">FEES</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="feesTextBox1" runat="server" Width="286px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="feesTextBox1" Display="Dynamic" ErrorMessage="Please Enter Fees" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="feesTextBox1" Display="Dynamic" ErrorMessage="Fees Should Be From 2000.00 To 50000.00" ForeColor="Red" MaximumValue="50000.00" MinimumValue="2000.00" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">GENDER</td>
                    <td class="auto-style14">
                        <asp:RadioButton ID="maleRadioButton1" runat="server" GroupName="GenderGroup" Text="MALE" />
                        <asp:RadioButton ID="femaleRadioButton2" runat="server" GroupName="GenderGroup" Text="FEMALE" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Select a gender" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="104px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
