<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormReservation.aspx.cs" Inherits="FormReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="bootstrap.css" rel="stylesheet" />
    <title>Réservation PEPS</title>
</head>
<body>
    <form id="frmReservation" runat="server" class="container">
        <div>
            Vous êtes connecté en tant que
            <asp:Label ID="lblUsername" runat="server"></asp:Label><br />
            <asp:Button ID="btnDeconnexion" runat="server" Text="Déconnexion" OnClick="btnDeconnexion_Click" causeValidation="false"/><br />
            <br />
            Nom:<asp:TextBox ID="txtnom" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorNom" ErrorMessage="Le nom est obligatoire" ControlToValidate="txtNom"> </asp:RequiredFieldValidator><br />
            Prénom:<asp:TextBox ID="txtPrenom" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorPrenom" ErrorMessage="Le prenom est obligatoire" ControlToValidate="txtPrenom"> </asp:RequiredFieldValidator><br />
            <br />
            Sport:
            <br />
            <asp:DropDownList runat="server" ID="ddlSport">
                <asp:ListItem Text="(Veuillez selectioner un sport)" Value="0"></asp:ListItem>
                <asp:ListItem Text="Basketball" Value="1"></asp:ListItem>
                <asp:ListItem Text="Badminton" Value="2"></asp:ListItem>
                <asp:ListItem Text="Hockey-Cosom" Value="3"></asp:ListItem>
                <asp:ListItem Text="Squash" Value="4"></asp:ListItem>
                <asp:ListItem Text="Tennis" Value="5"></asp:ListItem>
                <asp:ListItem Text="Racketball" Value="6"></asp:ListItem>
                <asp:ListItem Text="Volleyball" Value="7"></asp:ListItem>
            </asp:DropDownList>
            <asp:RangeValidator ID="valRangeSport" runat="server" ErrorMessage="Vous devez selectionner un sport." ControlToValidate="ddlSport" MinimumValue="1" MaximumValue="7" Type="Integer"> </asp:RangeValidator>
            <br />
            Date:<asp:TextBox ID="txtDate" runat="server" ReadOnly="true"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorDate" ErrorMessage="La date est obligatoire" ControlToValidate="txtDate"></asp:RequiredFieldValidator><br />
            <asp:Calendar runat="server" ID="calDate" OnSelectionChanged="calDate_SelectionChanged"></asp:Calendar>
            <br />
            Plage horaire désirée:<br />
            De
        <asp:DropDownList runat="server" ID="ddlHeureDebut">
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
        <asp:DropDownList runat="server" ID="ddlHeureFin">
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
        </asp:DropDownList>
        <asp:CustomValidator runat="server" ID="heureValidator" ErrorMessage="La duree de la reservation doit etre entre 1 et 3 heures." ControlToValidate="ddlHeureDebut" OnServerValidate="heureValidator_ServerValidate"></asp:CustomValidator>
            <br />
            <asp:Button runat="server" ID="btnSubmit" Text="Soummettre" OnClick="btnSubmit_Click" />
        </div>
    </form>
    <footer>
        <script src="bootstrap.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="validationScript.js"></script>
    </footer>
</body>
</html>
