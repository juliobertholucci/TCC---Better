using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadComercio : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

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




    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {


            if (CheckBoxPlat.Checked || CheckBoxGold.Checked || CheckBoxBlack.Checked)
            {
                string Plano = "Gold";
                if (CheckBoxPlat.Checked)
                {
                    Plano = "Platina";
                }

                if (CheckBoxBlack.Checked)
                {
                    Plano = "Black";
                }

                string Foto1 = "semfoto.jpg";
                string Foto2 = "semfoto.jpg";
                string Foto3 = "semfoto.jpg";

                if (FileUpload1.HasFile)
                {
                    string nomeFoto = DateTime.Now.Year.ToString() +
                        DateTime.Now.Month.ToString() +
                        DateTime.Now.Day.ToString() +
                        DateTime.Now.Hour.ToString() +
                        DateTime.Now.Minute.ToString() +
                        DateTime.Now.Second.ToString() +
                        DateTime.Now.Millisecond.ToString() +
                        FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/imgs/") + nomeFoto);

                    Foto1 = nomeFoto;
                    if (nomeFoto.Length > 255) { Foto1 = "semfoto.jpg"; }
                }

                if (FileUpload2.HasFile)
                {

                    string nomeFoto = DateTime.Now.Year.ToString() +
                        DateTime.Now.Month.ToString() +
                        DateTime.Now.Day.ToString() +
                        DateTime.Now.Hour.ToString() +
                        DateTime.Now.Minute.ToString() +
                        DateTime.Now.Second.ToString() +
                        DateTime.Now.Millisecond.ToString() +
                        FileUpload2.FileName;
                    FileUpload2.SaveAs(Server.MapPath("~/imgs/") + nomeFoto);
                    Foto2 = nomeFoto;
                    if (nomeFoto.Length > 255) { Foto2 = "semfoto.jpg"; }

                }

                if (FileUpload3.HasFile)
                {

                    string nomeFoto = DateTime.Now.Year.ToString() +
                        DateTime.Now.Month.ToString() +
                        DateTime.Now.Day.ToString() +
                        DateTime.Now.Hour.ToString() +
                        DateTime.Now.Minute.ToString() +
                        DateTime.Now.Second.ToString() +
                        DateTime.Now.Millisecond.ToString() +
                        FileUpload3.FileName;
                    FileUpload3.SaveAs(Server.MapPath("~/imgs/") + nomeFoto);
                    Foto3 = nomeFoto;
                    if (nomeFoto.Length > 255) { Foto3 = "semfoto.jpg"; }

                }

                SqlDataSource1.InsertCommand = "INSERT INTO [Tb_Cadempresa] ([Nome],[Senha], [Email], [Rua], [Bairro], [Numero], [Celular], [CNPJ], [Foto1], [Foto2], [Foto3], [Plano], [Tipo] ) VALUES (" +
                                "'" + nomeE.Value + "','" + GerarHashMd5(senhaE.Value) + "','" + emailE.Value + "','" + ruaE.Value + "','" + bairroE.Value + "','" + numeroE.Value + "','" + telE.Value + "','" + CNPJ.Value + "','" + Foto1 + "','" + Foto2 + "','" + Foto3 + "','" + Plano + "','" + tipo.SelectedItem.Text + "')";







                SqlDataSource1.Insert();
                Label1.Text = "Cadastrado!";
                Label1.CssClass += " p-2 m-3";
            }

            else
            {

                Label1.Text = "Escolha um plano para Cadastrar!";
                Label1.CssClass += " p-2 m-3";
            }

        }
        catch (Exception err)
        {

            Label1.Text = err.ToString();
        }
    }





}