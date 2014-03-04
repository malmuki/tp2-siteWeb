using System;
using System.IO;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["loguer"] = false;
    }

    protected void btnConnect_Click(object sender, EventArgs e)
    {

        List<string> listUsernames = new List<string>();
        List<string> listPasswords = new List<string>();


        TextReader txtReader = new StreamReader(System.Web.HttpContext.Current.Server.MapPath("~/data.txt"));

        for (int i = 0; i < File.ReadAllLines(Server.MapPath("~/data.txt")).Length; i++)
            {
                if (i % 2 == 0)
                {
                    listUsernames.Add(txtReader.ReadLine());
                }
                else
                {
                    listPasswords.Add(txtReader.ReadLine());
                }
            }

            string[] tabUsernames = listUsernames.ToArray();
            string[] tabPasswords = listPasswords.ToArray();

            for (int i = 0; i < tabUsernames.Length; i++)
            {
                if (txbID.Text == tabUsernames[i] && txtbPass.Text == tabPasswords[i])
                {
                    Session["id"] = tabUsernames[i];
                    Session["loguer"] = true;
                    Response.Redirect("FormReservation.aspx");
                }
                else
                {
                    lblError.Visible = true;
                }
            }      
    }

    protected void btnInscrire_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inscription.aspx");
    }
}