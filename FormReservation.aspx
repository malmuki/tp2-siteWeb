<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormReservation.aspx.cs" Inherits="FormReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <title>Réservation PEPS</title>
</head>
<body>
    <form id="frmReservation" runat="server" class="container">
    <div>
        Vous êtes connecté en tant que <asp:Label ID="lblUsername" runat="server"></asp:Label><br />
        <asp:Button ID="btnDeconnexion" runat="server" Text="Déconnexion" OnClick="btnDeconnexion_Click" /><br />
        <br />
        Nom:<asp:TextBox ID="txtnom" runat="server"></asp:TextBox><br />
        Prénom:<asp:TextBox ID="txtPrenom" runat="server"></asp:TextBox><br />
        <br />
        Sport: <br />
        <asp:DropDownList runat="server" id="ddlSport">
            <asp:ListItem Text="(Veuillez selectioner un sport)" Value="0"></asp:ListItem>
            <asp:ListItem Text="Basketball" Value="1"></asp:ListItem>
            <asp:ListItem Text="Badminton" Value="2"></asp:ListItem>
            <asp:ListItem Text="Hockey-Cosom" Value="3"></asp:ListItem>
            <asp:ListItem Text="Squash" Value="4"></asp:ListItem>
            <asp:ListItem Text="Tennis" Value="5"></asp:ListItem>
            <asp:ListItem Text="Racketball" Value="6"></asp:ListItem>
            <asp:ListItem Text="Volleyball" Value="7"></asp:ListItem>
        </asp:DropDownList><br />
        Date:<asp:TextBox ID="txtDate" runat="server" ReadOnly="true"></asp:TextBox><br />
        <asp:Calendar runat="server" ID="calDate" OnSelectionChanged="calDate_SelectionChanged"></asp:Calendar> <br />
        Plage horaire désirée:<br />
        De
        <asp:DropDownList runat="server" id="ddlHeureDebut">
            <asp:ListItem Text="8:00" Value="8"></asp:ListItem>
            <asp:ListItem Text="9:00" Value="9"></asp:ListItem>
            <asp:ListItem Text="10:00" Value="10"></asp:ListItem>
            <asp:ListItem Text="11:00" Value="11"></asp:ListItem>
            <asp:ListItem Text="12:00" Value="12"></asp:ListItem>
            <asp:ListItem Text="13:00" Value="13"></asp:ListItem>
            <asp:ListItem Text="14:00" Value="14"></asp:ListItem>
            <asp:ListItem Text="15:00" Value="15"></asp:ListItem>
            <asp:ListItem Text="16:00" Value="16"></asp:ListItem>
            <asp:ListItem Text="17:00" Value="17"></asp:ListItem>
        </asp:DropDownList>
         à 
        <asp:DropDownList runat="server" id="ddlHeureFin">
            <asp:ListItem Text="9:00" Value="9"></asp:ListItem>
            <asp:ListItem Text="10:00" Value="10"></asp:ListItem>
            <asp:ListItem Text="11:00" Value="11"></asp:ListItem>
            <asp:ListItem Text="12:00" Value="12"></asp:ListItem>
            <asp:ListItem Text="13:00" Value="13"></asp:ListItem>
            <asp:ListItem Text="14:00" Value="14"></asp:ListItem>
            <asp:ListItem Text="15:00" Value="15"></asp:ListItem>
            <asp:ListItem Text="16:00" Value="16"></asp:ListItem>
            <asp:ListItem Text="17:00" Value="17"></asp:ListItem>
            <asp:ListItem Text="18:00" Value="18"></asp:ListItem>
        </asp:DropDownList><br />
        <asp:Button runat="server" id="btnSubmit" Text="Soummettre" OnClick="btnSubmit_Click" PostBackUrl="~/Confirmation.aspx" />
    </div>
    </form>
    <footer>
        <script src="assets/js/bootstrap.js"></script>
        <script src="assets/js/jquery-2.1.0.js"></script>
    </footer>
</body>
</html>
