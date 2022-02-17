<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .texttop {
            margin: 0 auto;
            width: 100%;
            height: 2vh;
        }

        .box {
            text-align: center;
            height: auto;
            border: 1px solid #c4c4c4;
            margin: 0 auto;
            width: 40%;
        }

        @media screen and (max-width: 1200px) {
            .box {
                width: 100%;
            }
        }


        .inputs {
            width: 80%;
            margin: 0 auto;
            height: 5vh;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="texttop">
        <h3 class="text-center mt-3">Realizar Login</h3>

    </div>
    <br />
    <br />
    <br />


    <div class="box">
        <div class="form-group">
            <br />
            <label for="email">Email:</label>
            <br />

            <input type="email" class=" inputs " runat="server" placeholder="Seu Email" id="TextBox1">
        </div>
        <div class="form-group">
            <br />
            <label for="pwd">Senha:</label>
            <br />
            <input type="password" class=" inputs" runat="server" placeholder="Sua Senha" id="TextBox2">
        </div>
        <br />

        <asp:Button ID="Button1" CssClass=" btn btn-warning" runat="server" Text="Logar" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <label>

            <a href="../Perdi_senha.aspx" style="color: black;">Recuperar Senha</a><br />
            <a style="color: black;" href="../Cadastro.aspx">Cadastre-se</a>

        </label>

        <br />

    </div>

    <asp:SqlDataSource ID="SqlDataSourcecliente" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_CadastroUsuario]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceempresa" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_Cadempresa]"></asp:SqlDataSource>

</asp:Content>

