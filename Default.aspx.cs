using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["loguer"] = false;
    }

    protected void btnConnect_Click(object sender, EventArgs e)
    {
        if (txbID.Text == "12345" && txtbPass.Text == "allo")
        {
            Session["id"] = "12345";
            Session["loguer"] = true;
            Response.Redirect("FormReservation.aspx");
        }
        else
        {
            lblError.Visible = true;
        }
    }

    protected void btnInscrire_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inscription.aspx");
    }
}