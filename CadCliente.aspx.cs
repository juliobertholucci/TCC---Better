using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadCliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (nome.Value != "" && senha.Value.Length > 5 && email.Value != "")
        {
            if (!existeUsuario(email.Value))
            {
                SqlDataSource1.InsertCommand = "INSERT INTO Tb_CadastroUsuario (Nome, Senha, Email) VALUES (" +
                            "'" + nome.Value + "','" + GerarHashMd5(senha.Value) + "','" + email.Value.ToLower() + "')";

                SqlDataSource1.Insert();
                Button1.Enabled = false;
                Label1.ForeColor = Color.Black;
                Label1.Text = "Cadastrado!";
                Button1.Text = "Já foi cadastrado!";
            }
            else
            {
                Label1.Text = "Você já é cadastrado, faça login!";
                Label1.ForeColor = Color.Red;
            }

        }
        else
        {
            Label1.Text = "Dados incompletos, senha deve ter no mínimo 6 caracteres!";
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


    bool existeUsuario(string emailPessoa)
    {
       SqlDataSource1.SelectCommand = "SELECT * FROM [Tb_CadastroUsuario] WHERE Email = '" + email.Value.ToLower() + "'";
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Count > 0)
        {
            return true;
        }

        return false;
    }
}