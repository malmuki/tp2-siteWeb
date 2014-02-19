<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inscription.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inscription</title>
</head>
<body>
    <form id="registration" runat="server">
        <div>
            Nom:
            <asp:TextBox
                runat="server"
                ID="txtNom">
            </asp:TextBox>

            <br />
            <br />

            Prénom:
            <asp:TextBox
                runat="server"
                ID="txtPrenom">
            </asp:TextBox>

            <br />
            <br />

            E-Mail:
            <asp:TextBox
                runat="server"
                ID="txtEmail">
            </asp:TextBox>

            <br />
            <br />

            Mot de passe:
            <asp:TextBox
                runat="server"
                ID="txtMotDePasse"
                TextMode="Password">
            </asp:TextBox>

            <br />
            <br />

            Confirmer mot de passe:
            <asp:TextBox
                runat="server"
                ID="txtConfirmationMotDePasse"
                TextMode="Password">
            </asp:TextBox>

            <br />
            <br />

            <asp:Button
                runat="server"
                ID="btnSubmit"
                Text="S'inscrire"
                OnClick="btnSubmit_Click" />

            <br />

            <asp:RequiredFieldValidator
                runat="server"
                ID="validateurNom"
                ErrorMessage="Le nom est obligatoire!"
                ControlToValidate="txtNom"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                runat="server"
                ID="validateurRegexpNom"
                ErrorMessage="Le nom ne peut contenir que des lettres!"
                ValidationExpression="[a-zA-Z]+"
                ControlToValidate="txtNom"
                Display="Dynamic">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator
                runat="server"
                ID="validateurPrenom"
                ErrorMessage="Le prénom est obligatoire!"
                ControlToValidate="txtPrenom"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                runat="server"
                ID="validateurRegexpPrenom"
                ErrorMessage="Le prénom ne peut contenir que des lettres!"
                ValidationExpression="[a-zA-Z]+"
                ControlToValidate="txtPrenom"
                Display="Dynamic">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator
                runat="server"
                ID="validateurEmail"
                ErrorMessage="L'adresse E-Mail est obligatoire!"
                ControlToValidate="txtEmail"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator
                runat="server"
                ID="validationRegexpEmail"
                ErrorMessage="E-Mail invalide!"
                ValidationExpression="^.*@ulaval.ca$"
                ControlToValidate="txtEmail"
                Display="Dynamic">
            </asp:RegularExpressionValidator>

            <asp:RequiredFieldValidator
                runat="server"
                ID="validationMotDePasse"
                ErrorMessage="Le mot de passe est obligatoire!"
                ControlToValidate="txtMotDePasse"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:RequiredFieldValidator
                runat="server"
                ID="validationConfirmationMotDePasse"
                ErrorMessage="Le mot de passe est obligatoire!"
                ControlToValidate="txtConfirmationMotDePasse"
                Display="Dynamic">
            </asp:RequiredFieldValidator>

            <asp:CompareValidator
                runat="server"
                ID="comparaisonMotDePasse"
                ErrorMessage="Les mots de passe doivent être identiques!"
                ControlToValidate="txtMotDePasse"
                ControlToCompare="txtConfirmationMotDePasse"
                Display="Dynamic">
            </asp:CompareValidator>
        </div>
    </form>
    <footer>
        <link rel="bootstrap.css" />
        <script src="bootstrap.js"></script>
        <script src="jquery-2.1.0.js"></script>
    </footer>
</body>
</html>