﻿using System;
using System.Web.UI.WebControls;

public partial class FormReservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
            lblUsername.Text = Session["id"].ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            Server.Transfer("Confirmation.aspx");
        }
    }

    protected void btnDeconnexion_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Response.Redirect("Default.aspx");
    }

    protected void calDate_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text = calDate.SelectedDate.ToString("yyyy-MM-dd");
    }

    private bool dateValidator(DateTime date)
    {
        bool returnedValue = false;

        if (date.DayOfYear >= DateTime.Now.DayOfYear + 3)
        {
            returnedValue = true;
        }

        return returnedValue;
    }

    private int HeureFinMinValue(int heureDebut)
    {
        int HeureMinFin;

        HeureMinFin = heureDebut + 1;

        return HeureMinFin;
    }

    private int HeureFinMaxValue(int heureDebut)
    {
        int HeureMaxFin;

        HeureMaxFin = heureDebut + 3;

        return HeureMaxFin;
    }

    private bool heureValide(int heureDebut, int heureFin)
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

    protected void dateValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = (DateTime.Today.AddDays(3) < calDate.SelectedDate);
    }

    protected void reset_Click(object sender, EventArgs e)
    {
        txtnom.Text = "";
        txtPrenom.Text = "";
        ddlSport.SelectedIndex = 0;
        txtDate.Text = "";
        calDate.SelectedDates.Remove(calDate.SelectedDate);
        ddlHeureDebut.SelectedIndex = 0;
        ddlHeureFin.SelectedIndex = 0;
    }
}