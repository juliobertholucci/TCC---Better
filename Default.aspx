<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .pPrinci {
            width: 100%;
            height: 100vh;
        }

        .textGrande {
            font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
            font-weight: 900;
            font-size: 80px;
            text-align: left;
            color: black;
        }

        .padd {
            padding-top: 65px;
        }

        .font1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 25px;
            text-align: center;
            text-justify: distribute;
            font-weight: bold;
        }

        .image1 > img {
            width: 100%;
            height: 100%;
        }

        body {
            padding: 0;
            margin: 0;
        }

        .teste {
            width: 100%;
            height: 100vh;
        }

            .teste > a > img {
                width: 100%;
                height: 100%;
            }

        .intertext {
            height: 50vh;
            width: 100%;
            text-align: center;
            padding-top: 8%;
        }

        .sobre {
            width: 100%;
            height: 100vh;
            padding-top: 7%;
        }

            .sobre > .image3 > img {
                width: 100%;
                height: 100%;
                margin: 0 auto;
            }

        .image3 {
            width: 20%;
            height: 40vh;
            margin: 0 auto;
        }



        @media only screen and (max-width: 600px) {

            .teste {
                height: 60vh;
            }

            .image1 {
                height: 50vh;
            }

            .image3 {
                width: 40%;
            }
        }


        .carousel-item > img {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="pPrinci row  " style="margin: 0;">

        <div class="col-lg-6  col-lg padd mb-3 ">

            <div class="col-lg-5" style="margin: 0 auto;">
                <h1 class="textGrande ">baixe<br />
                    escolha<br />
                    agende<mark style="color: yellow; background-color: white;">.</mark>
                </h1>


            </div>
            <p class="font1" style="margin: 0 auto;">
                agende, avalie e indique seu
                <br />
                salão  ou barbearia preferido,
                <br />
                ganhe descontos  e  cupons  e
                <br />
                até proutos utilizando nosso site.
            </p>
        </div>


        <div class="col-lg-6  col-lg pt-4 image1" style="height: 80vh;">

            <img src="Imagens/imagetop1.jpg" />

        </div>

        <div class="teste mt-4 ml-1 row">
            <div class=" col-md-6 col-lg">

                <div id="demo1" class="carousel slide" data-ride="carousel">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo1" data-slide-to="0" class="active"></li>
                        <li data-target="#demo1" data-slide-to="1"></li>

                    </ul>

                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="Imagens/6.png" alt="">
                        </div>
                        <div class="carousel-item">
                            <img src="Imagens/7.png" alt="">
                        </div>

                    </div>

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo1" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo1" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>

                </div>

            </div>


            <div class=" col-md-6 col-lg">

                <div id="demo2" class="carousel slide" data-ride="carousel">

                    <!-- Indicators -->
                    <ul class="carousel-indicators">
                        <li data-target="#demo2" data-slide-to="0" class="active"></li>
                        <li data-target="#demo2" data-slide-to="1"></li>

                    </ul>

                    <!-- The slideshow -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="Imagens/8.png" alt="">
                        </div>
                        <div class="carousel-item">
                            <img src="Imagens/9.png" alt="">
                        </div>

                    </div>

                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#demo2" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo2" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>

                </div>

            </div>






            <div class="sobre">

                <div class="image3">
                    <img src="Imagens/better.png" />
                </div>

                <h1 style="font-family: 'Montserrat', sans-serif; text-align: center; font-weight: 900; font-size: 13px;">Sobre</h1>
                <h4 style="font-family: 'Montserrat', sans-serif; text-align: center; font-weight: 900; font-size: 10px;" class="pr-5 pl-5">Trabalhamos para criar uma aplicação que facilte seu dia, te ajude na organização, no tempo e na economia! Também te ajudamos a escolher o melhor, tanto nos salões como no transporte!</h4>
            </div>

        </div>
</asp:Content>

