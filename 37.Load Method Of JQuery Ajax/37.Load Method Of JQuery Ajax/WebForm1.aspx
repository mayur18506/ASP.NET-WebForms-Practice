<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_37.Load_Method_Of_JQuery_Ajax.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <br />
            <br />
            <input type="button" id="btn" value="Click to Get Data" />
            <br />
            <br />
            <div id="result"></div>
        </div>
    </form>
    <script src="script/jQuery.js"></script>
    <script>
        $(document).ready(function () {
            $("#btn").click(function () {
                $("#result").load("pages/HtmlPage1.html", function(responsetxt, statustxt, xhrt) {
                    // alert("Data loaded successfully!");
                    alert(responsetxt);
                    alert(statustxt);
                    alert(xhr);

                });
            });
        });
    </script>
</body>
</html>
 