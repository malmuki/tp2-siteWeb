<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>PEPS login/reservation</title>
</head>
<body>
    <form id="login" runat="server">
        <label>identifiant</label>
        <asp:TextBox runat="server" Text="identifiant" ID="txbID"></asp:TextBox>
        <label>password</label>
        <asp:TextBox runat="server" ID="txtbPass" TextMode="Password"></asp:TextBox>
        <asp:Button
            ID="btnConnect"
            runat="server"
            Text="se Connecter"
            OnClick="btnConnect_Click" />

        <asp:Button
            ID="btnInscrire"
            runat="server"
            Text="s'incrire"
            OnClick="btnInscrire_Click" />
        
    </form>
    <asp:ModelErrorMessage ID="lblError" runat="server" Text="Mauvais identifiant ou mot de passe!"/>
    <footer>
        <link rel="bootstrap.css" />
        <script src="bootstrap.js"></script>
        <script src="jquery-2.1.0.js"></script>
    </footer>
</body>
</html>