<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DetalhesSalao.aspx.cs" Inherits="DetalhesMasculino" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .principal1 {
            width: 80%;
            margin: 0 auto;
            height: auto;
        }

        .carss {
            width: 100%;
            margin: 0 auto;
            height: 30vh;
        }

        .carousel-item > img {
            width: 100%;
            height: 50vh;
        }

        .tittle {
            width: 80%;
            margin: 0 auto;
            height: 15vh;
            text-align: center;
        }

        .infos {
            width: 100%;
            height: auto;
        }

       

    </style>


    <script>


       


    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container align-content-center">


        <asp:ListView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">

            <ItemTemplate>

                <div id="demo" class="carousel slide" data-ride="carousel" style="width: 50%;">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>
                    <asp:Label Text='<%# Bind("Nome") %>' runat="server" ID="Label1" />

                    <br />


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

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>

                </div>

                <div class="infos">
                    Rua:
                <asp:Label Text='<%# Bind("Rua") %>' runat="server" ID="RuaLabel" /><br />
                    Bairro:
                <asp:Label Text='<%# Bind("Bairro") %>' runat="server" ID="BairroLabel" /><br />
                    Numero:
                <asp:Label Text='<%# Bind("Numero") %>' runat="server" ID="NumeroLabel" /><br />
                    Celular:
                <asp:Label Text='<%# Bind("Celular") %>' runat="server" ID="CelularLabel" /><br />
                    Tipo:
                <asp:Label Text='<%# Bind("Tipo") %>' runat="server" ID="TipoLabel" /><br />
                                      
                    <br />
                    <a class=" btn btn-warning font-weight-bold" href='../AreaCliente/AgendarHorario.aspx?idempre=<%#  Eval("id") %>&comercio=<%# Eval("Nome") %>&fone=<%# Eval("Celular") %>'>Agendar</a>
                </div>
                
                <br />

                <div id="button1" class="btn btn-warning font-weight-bold" >Ver Mais Fotos</div>
                 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#button1").click(function(){
    $("#demo2i").fadeIn();
    
  });
});
</script>

                 <div id="demo2i" class="carousel slide" data-ride="carousel" style="width: 50%;display:none;">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo2i" data-slide-to="0" class="active"></li>
                        <li data-target="#demo2i" data-slide-to="1"></li>
                        <li data-target="#demo2i" data-slide-to="2"></li>
                    </ul>
                    <asp:Label Text='<%# Bind("Nome") %>' runat="server" ID="Label2" />

                    <br />


                    <!-- The slideshow -->
                    <div class="carousel-inner" id="caros" style="border-bottom: 5px solid black;">
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

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo2i" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo2i" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>

                </div>

                <br />
                <br /><br /><br />


            </ItemTemplate>
        </asp:ListView>

    </div>


   



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_Cadempresa] WHERE ([id] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

