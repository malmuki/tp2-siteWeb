using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Confirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int nbSport = int.Parse(Request["ddlSport"]?? "0") ;
        int nbHeureDebut = int.Parse(Request["ddlHeureDebut"] ?? "0");
        int nbHeureFin = int.Parse(Request["ddlHeureFin"] ?? "0");
        string nom = Request["txtnom"];
        string prenom = Request["txtprenom"];
        string date = Request["txtDate"];
        
        lblNomEtPrenom.Text = prenom + " " + nom;
        lblDate.Text = date;
        lblMatricule.Text = Session["id"].ToString();

        switch (nbSport)
        {
            case 1:
                lblSportTerrain.Text = "Basketball";
                break;
            case 2:
                lblSportTerrain.Text = "Badmainton";
                break;
            case 3:
                lblSportTerrain.Text = "Hockey-Cosom";
                break;
            case 4:
                lblSportTerrain.Text = "Squash";
                break;
            case 5:
                lblSportTerrain.Text = "Tennis";
                break;
            case 6:
                lblSportTerrain.Text = "Racketball";
                break;
            case 7:
                lblSportTerrain.Text = "Volleyball";
                break;
        }

        switch (nbHeureDebut)
        {
            case 8:
                lblHeureDebut.Text = "8:00";
                break;
            case 9:
                lblHeureDebut.Text = "9:00";
                break;
            case 10:
                lblHeureDebut.Text = "10:00";
                break;
            case 11:
                lblHeureDebut.Text = "11:00";
                break;
            case 12:
                lblHeureDebut.Text = "12:00";
                break;
            case 13:
                lblHeureDebut.Text = "13:00";
                break;
            case 14:
                lblHeureDebut.Text = "14:00";
                break;
            case 15:
                lblHeureDebut.Text = "15:00";
                break;
            case 16:
                lblHeureDebut.Text = "16:00";
                break;
            case 17:
                lblHeureDebut.Text = "17:00";
                break;
        }

        switch (nbHeureFin)
        {
            case 9:
                lblHeureFin.Text = "9:00";
                break;
            case 10:
                lblHeureFin.Text = "10:00";
                break;
            case 11:
                lblHeureFin.Text = "11:00";
                break;
            case 12:
                lblHeureFin.Text = "12:00";
                break;
            case 13:
                lblHeureFin.Text = "13:00";
                break;
            case 14:
                lblHeureFin.Text = "14:00";
                break;
            case 15:
                lblHeureFin.Text = "15:00";
                break;
            case 16:
                lblHeureFin.Text = "16:00";
                break;
            case 17:
                lblHeureFin.Text = "17:00";
                break;
            case 18:
                lblHeureFin.Text = "18:00";
                break;
        }
    }
    protected void btnRetourFormulaire_Click(object sender, EventArgs e)
    {
        Server.Transfer("FormReservation.aspx");
    }
}
