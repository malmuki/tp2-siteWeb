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
<<<<<<< HEAD
        List<string> listUsernames = new List<string>();
        List<string> listPasswords = new List<string>();

            TextReader txtReader = new StreamReader("data.txt");

            for (int i = 0; i < File.ReadAllLines("data.txt").Length; i++)
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

                }
            }      
=======
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
>>>>>>> 60f2980cbe8731d5724e999547473448df03f0f5
    }

    protected void btnInscrire_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inscription.aspx");
    }
}