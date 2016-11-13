<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <H2> Adaugare</H2>

    <div class="form-horizontal">
        <h4>Inregistrare angajat nou.</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

        <div class="coloane">

            <div class="stanga" >
                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="Prenume" CssClass="col-md-2 control-label">Prenume</asp:Label>
                                        <div class="col-md-10">
                                            <asp:TextBox  runat="server" ID="Prenume" CssClass="form-control" />
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Prenume"
                                                CssClass="text-danger" ErrorMessage="Prenumele noului angajat trebuie introdus!" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="Nume" CssClass="col-md-2 control-label">Nume</asp:Label>
                                        <div class="col-md-10">
                                            <asp:TextBox  runat="server" ID="Nume" CssClass="form-control" />
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Nume"
                                                CssClass="text-danger" ErrorMessage="Numele noului angajat trebuie introdus!" />
                                        </div>
                                    </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Functia" CssClass="col-md-2 control-label">Functia</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox  runat="server" ID="Functia" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Functia"
                                        CssClass="text-danger" ErrorMessage="Functia noului angajat trebuie introdusa!" />
                                </div>
                            </div>

                             <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="SalarNegociat" CssClass="col-md-2 control-label">Salar negociat</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox runat="server" ID="SalarNegociat" CssClass="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="SalarNegociat"
                                        CssClass="text-danger" ErrorMessage="Salarul negociat a noului angajat trebuie introdus!" />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="SalarRealizat" CssClass="col-md-2 control-label">Salar realizat</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox  runat="server" ID="SalarRealizat" CssClass="form-control" >100</asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="SalarRealizat"
                                        CssClass="text-danger" ErrorMessage="Salarul realizat noului angajat trebuie introdus!" />
                                </div>
                            </div>

            </div>

            <div class="dreapta">
                                    <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Vechime" CssClass="col-md-2 control-label">Vechime</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox  runat="server" ID="Vechime" CssClass="form-control" >0</asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Vechime"
                                        CssClass="text-danger" ErrorMessage="Vechimea noului angajat trebuie introdusa!" />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Spor" CssClass="col-md-2 control-label">Spor</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox  runat="server" ID="Spor" CssClass="form-control" >0</asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Spor"
                                        CssClass="text-danger" ErrorMessage="Sporul noului angajat trebuie introdus!" />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="PremiiBrute" CssClass="col-md-2 control-label">Premii brute</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox  runat="server" ID="PremiiBrute" CssClass="form-control" >0</asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="PremiiBrute"
                                        CssClass="text-danger" ErrorMessage="Premiile brute noului angajat trebuie introduse!" />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Compensatie" CssClass="col-md-2 control-label">Compensatie</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox  runat="server" ID="Compensatie" CssClass="form-control" >0</asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Compensatie"
                                        CssClass="text-danger" ErrorMessage="Compensatia noului angajat trebuie introdusa!" />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Avans" CssClass="col-md-2 control-label">Avans</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox  runat="server" ID="Avans" CssClass="form-control" >0</asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Avans"
                                        CssClass="text-danger" ErrorMessage="Avansul noului angajat trebuie introdus!" />
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="Retineri" CssClass="col-md-2 control-label">Retineri</asp:Label>
                                <div class="col-md-10">
                                    <asp:TextBox  runat="server" ID="Retineri" CssClass="form-control" >0</asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Retineri"
                                        CssClass="text-danger" ErrorMessage="Retinerile noului angajat trebuie introduse!" />
                                </div>
                            </div>



        
            </div>

        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <div class="butoane">

        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Adaugare" CssClass="btn btn-default" OnClick="inregistrare" />
                <asp:Button runat="server" Text="Resetare campuri" CssClass="btn btn-default"/>
                <asp:Button runat="server" Text="Inapoi la pagina de start" CssClass="btn btn-default"/>
            </div>
            
        </div>
           
    </div>
</asp:Content>

