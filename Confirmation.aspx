<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <title>PEPS login/reservation</title>
</head>
<body class="bg-info container " style="margin: 100px">
    <%if (Session["id"] != null)
      { %>
    <div class="panel panel-primary">

        <div class="alert-success panel-heading">
            <h1 class="panel-title">Merci
                <asp:Label runat="server" ID="lblNomEtPrenom" />!</h1>
        </div>
        <form id="form1" runat="server" class="panel-body">

            <asp:Label runat="server" ID="lblMatricule"></asp:Label>
            <div>
                <h2>Terrain Réservé</h2>
            </div>
            Terrain de
            <asp:Label runat="server" ID="lblSportTerrain"></asp:Label>
            &nbsp;#1
            Réservé pour le
            <asp:Label runat="server" ID="lblDate"></asp:Label>
            de
            <asp:Label runat="server" ID="lblHeureDebut"></asp:Label>
            à
            <asp:Label runat="server"
                ID="lblHeureFin"></asp:Label>
            <div>
                <asp:Button runat="server"
                    ID="btnRetourFormulaire"
                    Text="Retour au Formulaire"
                    OnClick="btnRetourFormulaire_Click"
                    class="btn-success btn-lg" />
            </div>
        </form>
    </div>
    <h3><a href="mailto:spray.n.revive@murica.freedom">nous joindre</a></h3>
    <%}
      else
      { %>
    <form id="Form2" runat="server">
        <label>Vous n'etes pas connecter</label>
        <asp:Button
            class="btn-warning"
            ID="Button2"
            runat="server"
            Text="Connectez-vous"
            PostBackUrl="~/Default.aspx" />
    </form>

    <%} %>
    <footer>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="bootstrap.js"></script>
    </footer>
</body>
</html>