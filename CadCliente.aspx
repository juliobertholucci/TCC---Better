<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadCliente.aspx.cs" Inherits="CadCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .tankcad {
            width: 80%;
            margin: 0 auto;
            height: 70vh;
        }

        .font1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 25px;
            text-align: center;
            text-justify: distribute;
            font-weight: bold;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="tankcad">

        <h1 class="font1 mt-2">Cadastro para Clientes</h1>

        <div class="form-group">
            <label>Seu Nome:</label>
            <input type="text" class="form-control" placeholder="Nome" id="nome" runat="server" required="required" />
        </div>

        <div class="form-group">
            <label>Senha:</label>
            <input type="password" class="form-control" placeholder="Senha" id="senha" runat="server" required="required" />
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" placeholder="email@exemplo.com" id="email" runat="server" required="required" />
        </div>

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Cadastrar" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_CadastroUsuario]"></asp:SqlDataSource>

</asp:Content>

