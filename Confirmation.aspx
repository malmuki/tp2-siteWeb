<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Merci <asp:label runat="server" ID="lblNomEtPrénom"></asp:label>!</h1><br />
        <asp:Label runat="server" ID="lblMatricule"></asp:Label><br />
        <h2>Terrain Réservé</h2><br />
        Terrain de <asp:Label runat="server" ID="lblSportTerrain"></asp:Label> 
        numéro <asp:label runat="server" ID="lblNumeroTerrain"></asp:label><br />
        Réservé pour le <asp:Label runat="server" ID="lblDate"></asp:Label> 
        de <asp:Label runat="server" ID="lblHeureDébut"></asp:Label> 
        à <asp:Label runat="server" ID="lblHeureFin"></asp:Label><br />
        <asp:button runat="server" ID="btnRetourFormulaire" Text="Retour au Formulaire" OnClick="btnRetourFormulaire_Click" />
    </div>
    </form>
    <footer>
        <script src="assets/js/bootstrap.js"></script>
        <script src="assets/js/jquery-2.1.0.js"></script>
    </footer>
</body>
</html>
