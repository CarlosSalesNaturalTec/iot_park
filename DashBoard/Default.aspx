<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>IoT Natural Tecnologia - Painel de Controle</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>

    <!-- Menu -->
    <div>
        <div class="w3-bar w3-black">

            <a href="Dispositivos_Listagem.aspx" target="iframe" class="w3-bar-item w3-btn w3-hover-blue w3-right"><i class="fa fa-home"></i>&nbsp;Dispositivos</a>

            <a href="Home.aspx" target="iframe" class="w3-bar-item w3-btn w3-hover-blue w3-right"><i class="fa fa-home"></i>&nbsp;Home</a>

            <div class="w3-left">
                <h6 class="w3-small" style="margin-left: 14px">
                    <img src="Images/logo.jpg" />
                </h6>
            </div>

        </div>
    </div>

    <!-- page content -->
    <div>
        <iframe src="Home.aspx" width="100%" height="683px" frameborder="0" name="iframe">Atualize seu Navegador!</iframe>
    </div>
    <!-- page content -->

</body>

</html>
