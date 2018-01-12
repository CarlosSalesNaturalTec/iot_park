using System;
using System.Text;

public partial class Dashboard : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
       
        string stringDadosGraf;

        // Bloco 1
        stringDadosGraf = "";
        Literal_Bloco1.Text = Monta_Graf_Morris_Donut_test(stringDadosGraf, "Bloco1_Chart");

        //mostra dispositivos
        Literal_Lista.Text = Lista_Dispositivos();

    }

    private string Monta_Graf_Morris_Bar(string stringselect, string ID_Chart)
    {
        string txtAux = "";
        str.Clear();

        txtAux = "<script type=\"text/javascript\">";
        str.Append(txtAux);

        txtAux = "Morris.Bar({element: '" + ID_Chart + "', data: [";
        str.Append(txtAux);

        //dados
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);
        while (dados.Read())
        {
            txtAux = "{coluna: \"" + Convert.ToString(dados[0]) + "\", valor: " + Convert.ToString(dados[1]) + "},";
            str.Append(txtAux);
        }
        ConexaoBancoSQL.fecharConexao();

        txtAux = "],";
        str.Append(txtAux);

        txtAux = "xkey: 'coluna',";
        str.Append(txtAux);

        txtAux = "ykeys: ['valor'],";
        str.Append(txtAux);

        txtAux = "labels: ['Quant. Total']";
        str.Append(txtAux);

        txtAux = "});";
        str.Append(txtAux);

        txtAux = "</script>";
        str.Append(txtAux);

        return str.ToString();

    }

    private string Monta_Graf_Morris_Donut(string stringselect, string ID_Chart)
    {
        string txtAux = "";
        str.Clear();

        txtAux = "<script type=\"text/javascript\">";
        str.Append(txtAux);

        txtAux = "Morris.Donut({element: '" + ID_Chart + "', data: [";
        str.Append(txtAux);

        //dados
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);
        while (dados.Read())
        {
            txtAux = "{label: \"" + Convert.ToString(dados[0]) + "\", value: " + Convert.ToString(dados[1]) + "},";
            str.Append(txtAux);
        }
        ConexaoBancoSQL.fecharConexao();

        txtAux = "]});";
        str.Append(txtAux);

        txtAux = "</script>";
        str.Append(txtAux);

        return str.ToString();

    }

    private string Monta_Graf_Morris_Donut_test(string stringselect, string ID_Chart)
    {
        string txtAux = "";
        str.Clear();

        txtAux = "<script type=\"text/javascript\">";
        str.Append(txtAux);

        txtAux = "Morris.Donut({element: '" + ID_Chart + "', data: [";
        str.Append(txtAux);

        //dados fixos
        txtAux = "{label: \"Vagas Ocupadas (%)\", value: 80},";
        str.Append(txtAux);

        //dados fixos
        txtAux = "{label: \"Vagas Livres (%)\", value: 20},";
        str.Append(txtAux);

        txtAux = "]});";
        str.Append(txtAux);

        txtAux = "</script>";
        str.Append(txtAux);

        return str.ToString();

    }

    private string Lista_Dispositivos()
    {

        str.Clear();
        string txtAux = "";
        string aux_cor = "";

        //dados
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select("select Descricao, Status_Device from Tbl_Devices order by ID_Secundario");
        while (dados.Read())
        {
            switch (Convert.ToString(dados[1]))
            {
                case "1":
                    aux_cor = "success";
                    break;
                case "2":
                    aux_cor = "danger";
                    break;
                default:
                    aux_cor = "secondary";
                    break;
            }

            txtAux = "<button type=\"button\" class=\"btn btn-" + aux_cor + "\">" + Convert.ToString(dados[0]) + "</button>&nbsp;&nbsp;&nbsp;&nbsp;";
            str.Append(txtAux);
        }
        ConexaoBancoSQL.fecharConexao();

        return str.ToString();

    }


}