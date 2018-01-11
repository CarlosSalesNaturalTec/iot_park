﻿document.getElementById("input_nome").focus();

function SalvarRegistro() {

    //validações
    if (document.getElementById('input_nome').value == "") {
        alert("Informe DEscrição do Dispositivo");
        openLink(event, 'grupo1')
        $('#bt1').addClass(' w3-blue');
        document.getElementById("input_nome").focus();
        return;
    }

    //pega o valor de cada campo e constroi string com todos
    var i, x, strLine = "";
    x = document.getElementsByClassName("form-control");
    for (i = 0; i < x.length; i++) {
        strLine = strLine + "param" + i + ":'" + x[i].value + "',";
    }

    //Combo Curso
    var combo1 = document.getElementById("input_curso")
    var combo2 = combo1.options[combo1.selectedIndex].value;    //ID
    strLine = strLine + "param" + i + ":'" + combo2 + "',";
    i++;
    var combo3 = combo1.options[combo1.selectedIndex].text;     //Nome
    strLine = strLine + "param" + i + ":'" + combo3 + "',";

    //Combo Salas
    i++;
    var combo1 = document.getElementById("input_sala")
    var combo2 = combo1.options[combo1.selectedIndex].value;    //ID
    strLine = strLine + "param" + i + ":'" + combo2 + "',";
    i++;
    var combo3 = combo1.options[combo1.selectedIndex].text;     //Nome
    strLine = strLine + "param" + i + ":'" + combo3 + "',";

    //id isntituição
    i++;
    var idInst = document.getElementById('IDInstHidden').value;
    strLine = strLine + "param" + i + ":'" + idInst + "'";

    //exibir animações - aguarde...
    UIAguardar();

    $.ajax({
        type: "POST",
        url: "WebService.asmx/TurmasSalvar",
        data: '{' + strLine + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            window.location.href = response.d;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}

function AlterarRegistro() {

    //validações
    if (document.getElementById('input_nome').value == "") {
        alert("Informe Nome da Turma");
        openLink(event, 'grupo1')
        $('#bt1').addClass(' w3-blue');
        document.getElementById("input_nome").focus();
        return;
    }

    //pega o valor de cada campo e constroi string com todos
    var i, x, strLine = "";
    x = document.getElementsByClassName("form-control");
    for (i = 0; i < x.length; i++) {
        strLine = strLine + "param" + i + ":'" + x[i].value + "',";
    }

    //Combo Curso
    var combo1 = document.getElementById("input_curso")
    var combo2 = combo1.options[combo1.selectedIndex].value;    //ID
    strLine = strLine + "param" + i + ":'" + combo2 + "',";
    i++;
    var combo3 = combo1.options[combo1.selectedIndex].text;     //Nome
    strLine = strLine + "param" + i + ":'" + combo3 + "',";

    //Combo 
    i++;
    var combo1 = document.getElementById("input_sala")
    var combo2 = combo1.options[combo1.selectedIndex].value;    //ID
    strLine = strLine + "param" + i + ":'" + combo2 + "',";
    i++;
    var combo3 = combo1.options[combo1.selectedIndex].text;     //Nome
    strLine = strLine + "param" + i + ":'" + combo3 + "',";

    //id instituição
    i++;
    var vID = document.getElementById("IDHidden").value;
    strLine = strLine + "param" + i + ":'" + vID + "'";

    //exibir animações - aguarde...
    UIAguardar();

    $.ajax({
        type: "POST",
        url: "WebService.asmx/TurmasAlterar",
        data: '{' + strLine + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var linkurl = response.d;
            window.location.href = linkurl;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}


function cancelar() {
    var linkurl = "Turmas_Listagem.aspx";
    window.location.href = linkurl;
}

function UIAguardar() {
    var i, x;

    x = document.getElementsByClassName("btcontroles");
    for (i = 0; i < x.length; i++) {
        x[i].disabled = true;
    }

    x = document.getElementsByClassName("aguarde");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "block";
    }
}
//Menu
function openLink(evt, animName) {
    var i, x, tablinks;
    x = document.getElementsByClassName("grupo");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < x.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" w3-blue", "");
    }
    document.getElementById(animName).style.display = "block";
    evt.currentTarget.className += " w3-blue";
}
//Menu