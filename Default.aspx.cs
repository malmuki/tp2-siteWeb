using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["loguer"] = "false";
    }

    protected void btnConnect_Click(object sender, EventArgs e)
    {
        Session["loguer"] = "true";
    }
    protected void btnInscrire_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inscription.aspx");
    }
}