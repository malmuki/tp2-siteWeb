<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>PEPS login/reservation</title>
    

</head>
<body>
    
    <%if(Session["loguer"].ToString()== "false"){ %>
    <form id="login" runat="server">
        <label>identifiant</label>
        <asp:TextBox runat="server" Text="identifiant" ID="txbID"></asp:TextBox>
        <label>password</label>
        <asp:TextBox runat="server" Text="password" ID="txtbPass"></asp:TextBox>
         <asp:Button 
             id="btnConnect" 
             runat="server" 
             text="se Connecter"
             OnClick="btnConnect_Click"/> 

        <asp:Button 
            ID="btnInscrire"
            runat="server"
            text="s'incrire"
            OnClick="btnInscrire_Click" />
    </form>
    <%}else{%>
    <label>Vous etes connecté en tant que Session["Num"].ToString()</label>
    <%} %>
    <footer>
        <link rel="bootstrap.css" />
        <script src="bootstrap.js"></script>
        <script src="jquery-2.1.0.js"></script>
    </footer>
</body>
</html>