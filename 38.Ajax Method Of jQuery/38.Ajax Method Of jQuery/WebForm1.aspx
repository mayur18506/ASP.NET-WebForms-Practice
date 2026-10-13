
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs"
    Inherits="_38.Ajax_Method_Of_jQuery.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>jQuery AJAX Method</title>
    <style>
        #loader{
            display:none;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <input type="text"
                   placeholder="Enter Your Name..."
                   id="uname" />

            <br /><br />

            <input type="text"
                   placeholder="Enter Your Surname..."
                   id="surname" />

            <br /><br />

            <input type="button"
                   value="Submit"
                   id="btn" />

            <br /><br />

            <h2 id="result"></h2>
            <div id="loader">
                <img src="Images/download (1).png" height="100" width="100" />
            </div>
        </div>

    </form>

    <script src="scripts/jQuery.js"></script>

    <script>

        $(document).ready(function () {

            $("#btn").click(function () {

                var uname = $("#uname").val();
                var surname = $("#surname").val();

                if (uname == "" || surname == "") {

                    alert("All fields are required..");

                }
                else {

                    $.ajax({

                        url: 'WebForm1.aspx/Getdata',

                        type: 'POST',

                        contentType: 'application/json; charset=utf-8',

                        data: JSON.stringify({
                            uname: uname,
                            surname: surname
                        }),

                        dataType: 'json',

                        beforeSend: function () {
                            $("#loader").show();
                        },

                        success: function (result) {

                            $("#result").text(result.d);
                            $("#loader").hide();

                        },

                        error: function (xhr, status, error) {

                            console.log(xhr.responseText);
                            alert("Error: " + error);

                        },
                        complete: function(xhr, status) {
                            alert(status);
                        }

                    });

                }

            });

        });

    </script>

</body>
</html>

