
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Security.Cryptography;
using System.Text;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // controle de erro try
        try
        { //verificar se preencheu os textbox
            if (TextBox1.Value != "" && TextBox2.Value != "")
            {
                //criar o comando select
                string cmd = "SELECT * FROM Tb_CadastroUsuario WHERE email = '" + TextBox1.Value.ToLower() + "' AND Senha = '" + GerarHashMd5(TextBox2.Value) + "'";
                //execuar o camando
                SqlDataSourcecliente.SelectCommand = cmd;
                //pegando os valores do banco em variaveis
                string nome = "";
                string cod = ""; string senha = "";
                string tipo_do_cabra = "";
                //converte o resultado do Select em um DATAVIEW
                DataView dv = (DataView)SqlDataSourcecliente.Select(DataSourceSelectArguments.Empty);
                foreach (DataRow row in dv.Table.Rows)
                {
                    nome = row["email"].ToString();
                    cod = row["id"].ToString();
                    senha = row["Senha"].ToString();
                    //tipo_do_cabra = row["tipo"].ToString();
                }
                //verificar se o nome e a senha estão corretos 
                if (TextBox1.Value == nome && GerarHashMd5(TextBox2.Value) == senha)
                { //criando a sessão com nome do usuario e nome da imagem da foto Session["id_user"] = cod;
                    Session["iduser"] = cod;
                    Session["id_user"] = cod;
                    Session["nome"] = nome;
                    Session["email"] = TextBox1.Value;
                    Session["tipo_cabra"] = "C";
                    FormsAuthentication.RedirectFromLoginPage(nome, true);//faz a autenticação
                    Response.Redirect("~/AreaCliente/Default.aspx", false);
                    Label1.Text = "Logado!" + cod;
                    //FormsAuthentication.SignOut(); Logout
                }
                else
                {
                    //nao logou com o cliente verificar empresa
                    if (TextBox1.Value != "" && TextBox2.Value != "")
                    {
                        //criar o comando select
                        string cmd2 = "SELECT * FROM Tb_CadEmpresa WHERE email = '" + TextBox1.Value.ToLower() + "' AND Senha = '" + GerarHashMd5(TextBox2.Value) + "'";
                        //execuar o camando
                        SqlDataSourceempresa.SelectCommand = cmd2;
                        //pegando os valores do banco em variaveis
                        nome = "";
                        cod = "";
                        senha = "";
                        tipo_do_cabra = "E";
                        //converte o resultado do Select em um DATAVIEW
                        DataView dv2 = (DataView)SqlDataSourceempresa.Select(DataSourceSelectArguments.Empty);
                        if (dv2.Table.Rows.Count > 0)
                        {
                            foreach (DataRow row2 in dv2.Table.Rows)
                            {
                                nome = row2["email"].ToString();
                                cod = row2["id"].ToString();
                                senha = row2["Senha"].ToString();
                                //tipo_do_cabra = row["tipo"].ToString();
                            }
                        }
                      
                        //verificar se o nome e a senha estão corretos 
                        if (TextBox1.Value == nome && GerarHashMd5(TextBox2.Value) == senha)
                        { //criando a sessão com nome do usuario e nome da imagem da foto Session["id_user"] = cod;
                            Session["idempre"] = cod;
                            Session["nome"] = nome;
                            Session["email"] = TextBox1.Value;
                            Session["tipo_cabra"] = "E";
                            Session["id_user"] = cod;
                            FormsAuthentication.RedirectFromLoginPage(nome, true);//faz a autenticação
                            Response.Redirect("~/AreaEmpresa/Default.aspx", false);
                            Button1.Text = "Logado!";
                        }
                        else
                        {
                            Label1.Text = "Nome ou Senha inválidos!";
                        }
                    }
                    else
                    {
                        Label1.Text = "Nome ou Senha inválidos!";
                    }

                }
            }
            else
            {
                Label1.Text = "Preencha todos os dados!";
            }

        }

        catch (Exception ex)
        {
            Label1.Text = "erro! " + ex.ToString();
            return;
        }
    }
    public static string GerarHashMd5(string input)
    {
        MD5 md5Hash = MD5.Create();
        // Converter a String para array de bytes, que é como a biblioteca trabalha.
        byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

        // Cria-se um StringBuilder para recompôr a string.
        StringBuilder sBuilder = new StringBuilder();

        // Loop para formatar cada byte como uma String em hexadecimal
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));
        }

        return sBuilder.ToString() + "a";
    }
}