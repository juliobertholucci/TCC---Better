<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SMasculino.aspx.cs" Inherits="SMasculino" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .tittletop {
            font-family: 'Montserrat', sans-serif;
            font-size: 25px;
            text-align: center;
            text-justify: distribute;
            font-weight: bold;
            margin: 10px;
        }

        .box {
            font-size: 20px;
            text-align: center;
            margin: 0 auto;
        }

        .Psq {
            width: 100%;
            height: 10vh;
            background-color: blue;
        }

        .principalv {
            width: 80%;
            height: auto;
            margin: 0 auto;
        }

        .carousel-item > img {
            width: 100%;
            height: 100%;
        }

        .barbei {
            width: 30%;
            margin: 1.5%;
            margin-bottom: 25px;
            float: left;
            box-sizing: border-box;
            min-height: 600px;
            border: 1px solid black;
        }

        .hovers {
            color: black;
        }

            .hovers:hover {
                transition: 0.5s;
                color: yellow;
            }


        @media only screen and (max-width: 1000px) {
            .barbei {
                float: none;
                margin: 0 auto;
                width: 80%;
                margin-bottom: 100px;
            }
        }

        .infos {
            width: 90%;
            min-height: 200px;
            height: auto;
            border: 2px dashed black;
            margin: 0 auto;
            margin: 15px;
            padding: 5px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="principalv">
        <h2 class="tittletop">Salões Masculinos</h2>
        <br />
        <div style="width: 100%; height: 10vh; margin: 0 auto;">
            <asp:TextBox runat="server" Text="" placeholder="Pesquisar" ID="pesquisaBarbearia" CssClass="box"></asp:TextBox>
            <button style="margin-top: -7px;" runat="server" type="button" class="btn btn-warning"><i class="fas fa-search"></i></button>

        </div>
    </div>







    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_Cadempresa]"></asp:SqlDataSource>



    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <a href='DetalhesSalao.aspx?id=<%# Eval("id") %>'>
                    <div class="barbei">
                        <div class="hovers" style="text-align: center; margin: 15px;"><%# Eval("Nome") %></div>
                        <div id="demo" class="carousel slide" data-ride="carousel" style="width: 100%; height: 80vh;">

                            <!-- Indicators -->
                            <ul class="carousel-indicators">
                                <li data-target="#demo" data-slide-to="0" class="active"></li>
                                <li data-target="#demo" data-slide-to="1"></li>
                                <li data-target="#demo" data-slide-to="2"></li>
                            </ul>

                            <!-- The slideshow -->
                            <div class="carousel-inner" style="border-bottom: 5px solid black;">
                                <div class="carousel-item active">
                                    <img src='imgs/<%# Eval("Foto1") %>' alt='<%# Eval("Nome") %>' style="width: 100%; height: 50vh; border-top: 2px solid black;" />
                                </div>
                                <div class="carousel-item">
                                    <img src='imgs/<%# Eval("Foto2") %>' alt='<%# Eval("Nome") %>' style="width: 100%; height: 50vh; border-top: 2px solid black;" />
                                </div>
                                <div class="carousel-item">
                                    <img src='imgs/<%# Eval("Foto3") %>' alt='<%# Eval("Nome") %>' style="width: 100%; height: 50vh; border-top: 2px solid black;" />
                                </div>
                            </div>


                            <div class="infos" style="color: black;">
                                <div style="text-align: center; color: black;">
                                    <asp:Label Text='<%# Bind("Nome") %>' runat="server" ID="NomeLabel" /><br />
                                </div>
                                Rua:
                                <asp:Label Text='<%# Bind("Rua") %>' runat="server" ID="RuaLabel" /><br />
                                Bairro:
                                    <asp:Label Text='<%# Bind("Bairro") %>' runat="server" ID="BairroLabel" /><br />
                                Numero:
                                <asp:Label Text='<%# Bind("Numero") %>' runat="server" ID="NumeroLabel" /><br />
                                Celular:
                                <asp:Label Text='<%# Bind("Celular") %>' runat="server" ID="CelularLabel" /><br />
                                <div style="text-align: center; margin-top: 14px;">
                                    <button type="button" class="btn btn-warning">Marcar</button>
                                </div>
                            </div>
                        </div>


                    </div>
                </a>
            </ItemTemplate>
        </asp:ListView>
    </div>

    </div>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_Cadempresa] Where Tipo = 'Barbearia'"></asp:SqlDataSource>
</asp:Content>

