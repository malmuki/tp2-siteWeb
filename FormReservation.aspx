<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormReservation.aspx.cs" Inherits="FormReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="bootstrap.css" rel="stylesheet" />
    <title>Réservation PEPS</title>
</head>
<body class="bg-info container-fluid" style="margin: 100px">
    <%if (Session["id"] != null)
      { %>
    <form id="frmReservation" runat="server" class="panel panel-primary container-fluid">
        <div class="panel-heading">
            Vous êtes connecté en tant que
            <asp:Label
                ID="lblUsername"
                runat="server" />
            <br />
            <asp:Button
                ID="btnDeconnexion"
                runat="server"
                Text="Déconnexion"
                OnClick="btnDeconnexion_Click"
                CausesValidation="false"
                class="btn-default" />
        </div>
        <div class="panel-body">
            <table>
                <tr class="panel panel-default left">
                    <th class="panel-heading">Nom:
                    </th>
                    <td class="panel-body">
                        <asp:TextBox
                            ID="txtnom"
                            runat="server" />

                        <asp:RequiredFieldValidator
                            runat="server"
                            ID="RequiredFieldValidatorNom"
                            ErrorMessage="Le nom est obligatoire"
                            ControlToValidate="txtNom"
                            class="alert-danger " />
                    </td>
                </tr>
                <tr class="panel panel-default right">
                    <th class="panel-heading">Prénom:
                    </th>
                    <td class="panel-body">
                        <asp:TextBox
                            ID="txtPrenom"
                            runat="server" />
                        <asp:RequiredFieldValidator
                            runat="server"
                            ID="RequiredFieldValidatorPrenom"
                            ErrorMessage="Le prenom est obligatoire"
                            ControlToValidate="txtPrenom"
                            class="alert-danger" />
                    </td>
                </tr>

                <tr class="panel panel-default">
                    <th class="panel-heading">Sport:
                    </th>
                    <td class="panel-body">
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
                        <asp:RangeValidator
                            ID="valRangeSport"
                            runat="server"
                            ErrorMessage="Vous devez selectionner un sport."
                            ControlToValidate="ddlSport"
                            MinimumValue="1"
                            MaximumValue="7"
                            Type="Integer"
                            class="alert-danger" />
                    </td>
                </tr>

                <tr class="panel panel-default">
                    <th class="panel-heading">Date:
                    </th>
                    <td class="panel-body">
                        <asp:TextBox
                            ID="txtDate"
                            runat="server"
                            ReadOnly="true" />
                        <asp:RequiredFieldValidator
                            runat="server"
                            ID="RequiredFieldValidatorDate"
                            ErrorMessage="La date est obligatoire"
                            ControlToValidate="txtDate"
                            class="alert-danger" />
                        <asp:Calendar
                            runat="server"
                            ID="calDate"
                            OnSelectionChanged="calDate_SelectionChanged" />
                        <asp:CustomValidator
                            runat="server"
                            ID="CustomValidator1"
                            ErrorMessage="Vous devez réserver au moins trois jours à l'avance"
                            OnServerValidate="dateValidator_ServerValidate"
                            class="alert-danger" />
                    </td>
                </tr>

                <tr class="panel panel-default">
                    <th class="panel-heading">Plage horaire désirée:
                    </th>
                    <td class="panel-body">De
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
                        <asp:CustomValidator
                            runat="server"
                            ID="heureValidator"
                            ErrorMessage="La duree de la reservation doit etre entre 1 et 3 heures."
                            ControlToValidate="ddlHeureDebut"
                            OnServerValidate="heureValidator_ServerValidate"
                            class="alert-danger" />
                    </td>
                </tr>
            </table>
            <div>
                <asp:Button
                    runat="server"
                    ID="reset"
                    Text="Reinitialliser le formulaire"
                    class="btn-primary"
                    OnClick="reset_Click"
                    CausesValidation="false" />

                <asp:Button
                    runat="server"
                    ID="btnSubmit"
                    Text="Soummettre"
                    OnClick="btnSubmit_Click"
                    class="btn-success" />
            </div>
        </div>
    </form>
    <h3><a href="mailto:spray.n.revive@murica.freedom">nous joindre</a></h3>
    <%}
      else
      { %>
    <form id="Form1" runat="server">
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
        <script src="bootstrap.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="validationScript.js"></script>
    </footer>
</body>
</html>