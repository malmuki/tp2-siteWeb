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
        Response.Redirect("Confirmation.aspx");
    }
    protected void btnDeconnexion_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void calDate_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text = calDate.SelectedDate.ToString("yyyy-MM-dd");
    }
}