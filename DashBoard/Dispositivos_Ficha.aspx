<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dispositivos_Ficha.aspx.cs" Inherits="Dispositivos_Ficha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Ficha de Dispositivo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url("Images/fundo-azul.jpg");
            background-repeat: repeat;
            height: 100%;
        }
    </style>

</head>
<body>

    <div id="grupo1" class="w3-container grupo w3-animate-left" style="display: block">

        <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Ficha de Dispositivo</h3>
        <hr />

        <div class="w3-rest">
            <form class="form-horizontal">
                <fieldset>

                    <div class="form-group">
                        <label for="input_nome" class="col-md-2 control-label">Descrição</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="input_nome" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input_modem" class="col-md-2 control-label">ID Principal</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="input_modem" />
                        </div>

                        <label for="input_chd" class="col-md-2 control-label">ID Secundario</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="input_chd" />
                        </div>
                    </div>

                </fieldset>
            </form>

            <!-- Botões Controle -->
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-8 w3-border w3-padding w3-round">
                    <p>
                        <button class="w3-btn w3-round w3-border w3-light-blue w3-hover-blue btcontroles" onclick="cancelar()">
                            <i class="fa fa-undo" aria-hidden="true"></i>&nbsp;Sair</button>

                        <button class="w3-btn w3-round w3-border w3-light-blue w3-hover-blue btcontroles" onclick="AlterarRegistro()">
                            <i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Salvar&nbsp;&nbsp;
                        </button>

                        <i style="display: none" class="aguarde fa-2x fa fa-cog fa-spin fa-fw w3-text-blue w3-right"></i>
                    </p>
                </div>
            </div>

        </div>
    </div>

    <!-- auxiliares -->
    <input id="IDAuxHidden" type="hidden" />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <!-- Scripts Diversos  -->
    <script type="text/javascript" src="Scripts/codeDispositivos_Novo.js"></script>

</body>
</html>
