<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .font1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 25px;
            text-align: center;
            text-justify: distribute;
            font-weight: bold;
        }

        .imgt1 {
            width: 100%;
            height: 100vh;
            background-image: url(Imagens/imaget.jpg);
        }

        .btns {
            text-align: center;
            padding: 20%;
        }

        .btns2 {
            width: 100%;
            height: 10vh;
            margin: 0 auto;
            border: 2px solid black;
            color: black;
            font-family: 'Montserrat', black;
            font-size: 15px;
            font-weight: 900;
            padding:20px 30px;
            background-color: rgba(255, 255, 255, 0.87);
            border-radius:10px;
        }

            

        a {
            color: black;
            text-decoration: none;
        }

            a:hover {
                text-decoration: none;
                color: black;
            }

        .padd {
            padding-top:100px;
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="imgt1 " style="width: 100%; ">
        
        
        <div class="row padd" style="width: 100%; height: 100%;">
            <div class="col-sm-4 btns  ">
                <a class="btns2 col-sm-8" href="CadCliente.aspx" style="font-weight:900">QUERO SER CLIENTE </a>
            </div>

            <div class="col-sm-4 btns  ">
                <a class="btns2 col-sm-8" href="CadComercio.aspx" style="font-weight:900">POSSUO SALÃO OU BARBEARIA </a>
            </div>

            <div class=" btns col-sm-4 ">
                <a href="Login.aspx" class="btns2 col-sm-8" style="font-weight:900">FAZER LOGIN </a>
            </div>


        </div>



    </div>

</asp:Content>

