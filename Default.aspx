<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">

        <!--Prima pagina. Home page. -->
        <h1> Calculul salariilor dintr-o companie. </h1>
        <h2> </h2>
        <p class="lead">    Aceasta aplicatie este destinata pentru calculul salariilor angajatilor dintr-o firma. Aplicatia este compusa din urmatoarele meniuri principale: introducere date, tiparire, modificare procente si iesire aplicatie.</p>
        <p class="lead"> Submeniul: Introducere date contine trei submeniuri : actualizarea date, adaugare angajati si stergere angajati.
                            Tiparire contine doua submeniuri  : stat plata si fluturasi care genereaza rapoarte.</p>
        <p class="lead"> </p>
        <p class="lead">Toate meniurile si butoanele ce compun aplicatia, au nume sugestive care ajuta la manipularea mai usoara a acesteia.</p>

        <!--<p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p> -->
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://www.linkedin.com/in/alin-calin-batrin-337189114?trk=nav_responsive_tab_profile_pic">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
