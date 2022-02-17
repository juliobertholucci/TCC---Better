<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Perdi_senha.aspx.cs" Inherits="Perdi_senha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>

        .texttop {
           margin:0 auto;
           width:100%;
           height:2vh;
           
       
           }

       .box {
           text-align:center;
           height:auto;
           border: 1px solid #c4c4c4;
           margin: 0 auto;
           width:40%;
       }

        @media screen and (max-width: 1200px) {
            .box {
                width: 100%;
            }

            .texttop {
                margin-top: 20px;
            }
        }


    </style>

</asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_CadastroUsuario]"></asp:SqlDataSource>



    <div class="texttop">
        <h3 class="text-center mt-3">Recuperar Senha</h3>

    </div>
    <br />
    <br />
    <br />

    <div class="box">
        <br />
        <h5>Seu Email de Recuperação</h5>
        <br />
        <input id="TextBox1" placeholder="Email:" type="text" />
        <br />
        <br />
         <hr />
        
        <asp:Button ID="Button1" CssClass=" btn btn-warning mb-4 font-weight-bold" runat="server" Text="Enviar" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />

        
       
        
        </div>



</asp:Content>

