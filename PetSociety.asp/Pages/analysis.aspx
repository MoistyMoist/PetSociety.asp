<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="analysis.aspx.cs" Inherits="PetSociety.asp.Pages.analysis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function WelcomeUser(username) {
            console.log(httpGet(username));
            alert(httpGet(username));
        }
        function httpGet(theUrl) {
            var xmlHttp = null;

            xmlHttp = new XMLHttpRequest();
            xmlHttp.open("GET", theUrl, true);
            xmlHttp.send(null);
            return xmlHttp.responseText;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
