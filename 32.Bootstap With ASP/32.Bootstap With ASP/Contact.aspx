<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="_32.Bootstap_With_ASP.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6 offset-md-3">  
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
        <table cellpadding="4" cellspacing="4" class="w-100  table table-bordered table-hover table-responsive table-striped" >
            <tr>
                <td class="auto-style1" colspan="2">
                    <h2 class="text-center">CONTACT FORM</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">NAME</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="nameTextBox1" runat="server" Width="262px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox1" Display="Dynamic" ErrorMessage="Name is Mandatory" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">GENDER</td>
                <td>
                    <asp:DropDownList CssClass="form-control" ID="genderDropDownList1" runat="server" Width="262px" Height="38px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="genderDropDownList1" Display="Dynamic" ErrorMessage="Gendar is Mandatory" ForeColor="Red" InitialValue="Select Gender" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">EMAIL</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="emailTextBox2" runat="server" Width="262px" Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailTextBox2" Display="Dynamic" ErrorMessage="Email is Mandatory" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox2" Display="Dynamic" ErrorMessage="Invalid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">SUBJECT</td>
                <td>
                    <asp:DropDownList CssClass="form-control" ID="subjectDropDownList2" runat="server" Width="262px" Height="38px">
                        <asp:ListItem>Select Subject</asp:ListItem>
                        <asp:ListItem>Suggesstion</asp:ListItem>
                        <asp:ListItem>Complaint</asp:ListItem>
                        <asp:ListItem>Feedback</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="subjectDropDownList2" Display="Dynamic" ErrorMessage="Subject is Mandatory" ForeColor="Red" InitialValue="Select Subject" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">COMMENT</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="commentTextBox3" runat="server" Height="206px" TextMode="MultiLine" Width="425px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="commentTextBox3" Display="Dynamic" ErrorMessage="Comment is Mandatory" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="text-center">
                    <asp:Button CssClass="btn btn-info w-100" ID="submitButton1" runat="server" Text="SUBMIT" OnClick="submitButton1_Click" />
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
    </div>
         </div>
</asp:Content>
