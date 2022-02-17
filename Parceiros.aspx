<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Parceiros.aspx.cs" Inherits="Parceiros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>

        .princi {
            width:100%;
            height: auto;

        }

        .tittletop {
font-family: 'Montserrat', sans-serif;
           font-size:25px;
           text-align:center;
           text-justify:distribute;
           font-weight:bold;
           margin:10px;
           margin-bottom:50px;
          
        }


        .rolla1 {
            width:100%;
            height: 100vh;
            
           
        }

        @media only screen and (max-width: 900px) {
           .rolla1 {
              height:170vh;
           }
}

        .card > img {
            width:100%;
            height:100%;
        }
        

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="princi">


 <h2 class="tittletop">Nossos Parceiros</h2>


        <div class="rolla1 row col-lg-12 marg  " >

            <div class=" col-lg-3" style="margin: 0 auto;">
        <div class="card" style="width:350px">
  <img class="card-img-top" src="Imagens/moto.jpg" alt="Card image">
  <div class="card-body">
      <hr />
    <h4 class="card-title">Moto Táxi</h4>
    <p class="card-text">Endereço:</p>
    <p class="card-text"> <i class="fab fa-whatsapp"></i> Número: (035)997584562</p>
       <a href="" class="btn btn-warning">Site</a>
  </div>
</div>
</div>

           <div class=" col-lg-3" style="margin: 0 auto;">
        <div class="card" style="width:350px">
  <img class="card-img-top" src="Imagens/internet1.jpg" alt="Card image">
  <div class="card-body">
      <hr />
   <h4 class="card-title">Operadora</h4>
    <p class="card-text">Endereço:</p>
    <p class="card-text"> <i class="fab fa-whatsapp"></i> Número: (035)997586922</p>
       <a href="" class="btn btn-warning">Site</a>
  </div>
</div>
</div>

            </div>

        
           

  <div class="rolla1 row col-lg-12  " >

            <div class=" col-lg-3" style="margin: 0 auto;">
        <div class="card" style="width:350px">
            
  <img class="card-img-top" src="Imagens/internet2.png" alt="Card image">
  <div class="card-body">
      <hr />
    <h4 class="card-title">Internet</h4>
    <p class="card-text">Endereço:</p>
    <p class="card-text"> <i class="fab fa-whatsapp"></i> Número: (035)997456892</p>
        <a href="" class="btn btn-warning">Site</a>
  </div>
</div>
</div>

            <div class=" col-lg-3"  style="margin: 0 auto;">

        <div class="card" style="width:350px">
  <img class="card-img-top" src="Imagens/server.jpg" alt="Card image">
            <hr />
  <div class="card-body">
    <h4 class="card-title">Empresa</h4>
    <p class="card-text">Endereço:</p>
    <p class="card-text"> <i class="fab fa-whatsapp"></i> Número: (035)997587477</p>
       <a href="" class="btn btn-warning">Site</a>
  </div>
</div>

            </div>

            </div>







    </div>

</asp:Content>

