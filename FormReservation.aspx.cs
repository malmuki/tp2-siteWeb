using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormReservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsername.Text = Session["id"].ToString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            Response.Redirect("Confirmation.aspx");
        }
    }
    protected void btnDeconnexion_Click(object sender, EventArgs e)
    {
        Session["loguer"] = false;
        Response.Redirect("Default.aspx");
    }
    protected void calDate_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text = calDate.SelectedDate.ToString("yyyy-MM-dd");
    }
    bool dateValidator(DateTime date)
    {
        bool returnedValue = false;

        if (date.DayOfYear >= DateTime.Now.DayOfYear + 3)
        {
            returnedValue = true;
        }

        return returnedValue;
    }
    int HeureFinMinValue(int heureDebut)
    {
        int HeureMinFin;

        HeureMinFin = heureDebut + 1;

        return HeureMinFin;
    }
    int HeureFinMaxValue(int heureDebut)
    {
        int HeureMaxFin;

        HeureMaxFin = heureDebut + 3;

        return HeureMaxFin;
    }
    bool heureValide(int heureDebut, int heureFin)
    {
        bool returnedValue = false;

        if ((heureDebut < heureFin) && (heureFin <= (heureDebut + 3)))
        {
            returnedValue = true;
        }

        return returnedValue;
    }
    protected void heureValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        int heureDebut = int.Parse(ddlHeureDebut.SelectedValue);
        int heureFinMin = heureDebut + 1;
        int heureFinMax = heureDebut + 3;
        int heureFin = int.Parse(ddlHeureFin.SelectedValue);

        args.IsValid = (heureDebut < heureFin) && (heureFin <= heureFinMax) && (heureFin >= heureFinMin);        

    }
}