<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadComercio.aspx.cs" Inherits="CadComercio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .tankcad {
            width: 80%;
            margin: 0 auto;
            height: 300vh;
        }


        .font1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 25px;
            text-align: center;
            text-justify: distribute;
            font-weight: bold;
        }
    </style>


    <script>

        function opcao(escolha) {



            op1 = document.getElementById("<% = CheckBoxGold.ClientID %>");
            op2 = document.getElementById("<% = CheckBoxBlack.ClientID %>");
            op3 = document.getElementById("<% = CheckBoxPlat.ClientID %>");



            if (escolha == 1) {

                op2.checked = false;
                op3.checked = false;

            }
            else if (escolha == 2) {

                op1.checked = false;
                op3.checked = false;

            }

            else if (escolha == 3) {

                op2.checked = false;
                op1.checked = false;

            }

        }


    </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:PostBackTrigger ControlID="Button2" />
        </Triggers>
        <ContentTemplate>
            <div class="tankcad">

                <h1 class="font1 mt-2">Cadastro para Empresas</h1>
                <asp:Label ID="Label1" CssClass="bg-warning" runat="server" Text=""></asp:Label><br />
                <div class="form-group">
                    <label>Nome da Empresa</label>
                    <input type="text" class="form-control" placeholder="Nome" id="nomeE" runat="server" required="required" />
                </div>

                <div class="form-group">
                    <label>Senha</label>
                    <input type="password" class="form-control" placeholder="Senha" id="senhaE" runat="server" required="required" />
                </div>

                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" placeholder="email@exemplo.com" id="emailE" runat="server" required="required" />
                </div>

                <div class="form-group">
                    <label>Tipo</label><br />
                    <asp:DropDownList ID="tipo" runat="server" required="required">

                        <asp:ListItem>Sal&#227;o</asp:ListItem>
                        <asp:ListItem>Barbearia</asp:ListItem>
                    </asp:DropDownList>
                </div>


                <div class="form-group">
                    <label>Rua</label>
                    <input type="text" class="form-control" placeholder="Rua" id="ruaE" runat="server" required="required" />
                </div>

                <div class="form-group">
                    <label>Bairro</label>
                    <input type="text" class="form-control" placeholder="Bairro" id="bairroE" runat="server" required="required" />
                </div>

                <div class="form-group">
                    <label>Número</label>
                    <input type="text" class="form-control" placeholder="Exemplo: 244" id="numeroE" runat="server" required="required" />
                </div>

                <div class="form-group">
                    <label>Telefone/Celular</label>
                    <input type="tel" class="form-control" placeholder="(DDD) Número..." id="telE" runat="server" required="required" />
                </div>

                <div class="form-group">
                    <label>CNPJ</label>
                    <input type="number" class="form-control" placeholder="Número do CNPJ sem pontos ou traços" id="CNPJ" runat="server" required="required" />
                </div>

                <div class="form-group">
                    <label>Escolha três imagens para exibir o seu Salão/Barbearia</label><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" accept="image/*" /><br />
                    <br />
                    <asp:FileUpload ID="FileUpload2" runat="server" accept="image/*" /><br />
                    <br />
                    <asp:FileUpload ID="FileUpload3" runat="server" accept="image/*" />
                    <p style=" font-weight:900; color:red;">Observação: Imagens devem conter no máximo 5MB de tamanho</p>
                </div>


                <div class="form-group">
                    <label>Planos:</label>


                    <div class="card-deck">
                        <div class="card " style="background-color: white;">
                            <div class="card-body text-center">
                                <img class="" style="width: 100%; height: 350px;" src="Imagens/gold.png" alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title">Plano Gold</h4>
                                    <p class="card-text">Assinale a Caixa para Escolher</p>
                                    <asp:CheckBox ID="CheckBoxGold" runat="server" onclick="opcao(1)" />
                                </div>


                            </div>

                        </div>



                        <div class="card " style="background-color: white;">
                            <div class="card-body text-center">
                                <img class="" style="width: 100%; height: 350px;" src="Imagens/black.png" alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title">Plano Black</h4>
                                    <p class="card-text">Assinale a Caixa para Escolher</p>
                                    <asp:CheckBox ID="CheckBoxBlack" runat="server" onclick="opcao(2)" />
                                </div>


                            </div>

                        </div>


                        <div class="card " style="background-color: white;">
                            <div class="card-body text-center">
                                <img class="" style="width: 100%; height: 350px;" src="Imagens/platinum.png" alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title">Plano Platinum</h4>
                                    <p class="card-text">Assinale a Caixa para Escolher</p>
                                    <asp:CheckBox ID="CheckBoxPlat" runat="server" onclick="opcao(3)" />
                                </div>


                            </div>

                        </div>



                    </div>



                </div>
                

                <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning" Text="Cadastrar" OnClick="Button2_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' ProviderName='<%$ ConnectionStrings:ConnectionString.ProviderName %>' SelectCommand="SELECT * FROM [Tb_Cadempresa]"></asp:SqlDataSource>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

