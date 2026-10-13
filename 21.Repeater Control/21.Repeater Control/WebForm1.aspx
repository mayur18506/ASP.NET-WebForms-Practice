<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_21.Repeater_Control.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 177px;
        }
        .auto-style3 {
            height: 177px;
            width: 392px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" style="margin-top: 0px">
                        </asp:GridView>
                    </td>
                    <td class="auto-style2">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <table border="1" width="250" height="250">
                                    <tr>
                                        <td>
                                            <h3>ID</h3>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>

                                        </td>
                                    </tr>

                                     <tr>
     <td>
         <h3>NAME</h3>
     </td>
     <td>
         <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>

     </td>
 </tr>
                                     <tr>
     <td>
         <h3>GENDER</h3>
     </td>
     <td>
         <asp:Label ID="Label3" runat="server" Text='<%# Eval("gender") %>'></asp:Label>

     </td>
 </tr>
                                     <tr>
     <td>
         <h3>CITY</h3>
     </td>
     <td>
         <asp:Label ID="Label4" runat="server" Text='<%# Eval("city") %>'></asp:Label>

     </td>
 </tr>
                                </table>
                            </ItemTemplate>
                            <SeparatorTemplate>
                                <br />  
                            </SeparatorTemplate>
                        </asp:Repeater>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
