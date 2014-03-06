<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="bootstrap.css" rel="stylesheet" type="text/css" />
    <title>PEPS login/reservation</title>
</head>
<body class="bg-info container" style="margin: 100px">
    <%if (Session["id"] == null)
      { %>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h1 class="panel-title">Connection</h1>
        </div>

        <form id="login" runat="server" class="panel-body">
            <label>identifiant</label>
            <asp:TextBox runat="server" ID="txbID"></asp:TextBox>
            <label>password</label>
            <asp:TextBox runat="server" ID="txtbPass" TextMode="Password"></asp:TextBox>
            <asp:Button
                class="btn-primary"
                ID="btnConnect"
                runat="server"
                Text="Se Connecter"
                OnClick="btnConnect_Click" />
        </form>
    </div>
    <h3><a href="mailto:spray.n.revive@murica.freedom">nous joindre</a></h3>
    <div>
        <asp:Label ID="lblError"
            runat="server"
            Visible="false"
            Text="Mauvais identifiant ou mot de passe!"
            class="alert-danger" />
    </div>
    <%}
      else
      { %>
    <form runat="server">
        <label>Vous etes deja connecter</label>
        <asp:Button
            class="btn-warning"
            ID="Button2"
            runat="server"
            Text="Redirection"
            PostBackUrl="~/FormReservation.aspx" />
    </form>
    <%} %>
    <footer>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="bootstrap.js"></script>
    </footer>
</body>
</html>