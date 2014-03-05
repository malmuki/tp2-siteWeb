function ValidationHeure() {

    var heureDebut = document.forms["frmReservation"]["ddlHeureDebut"].SelectedValue;
    var heureFin = document.forms["frmReservation"]["ddlHeureFin"].SelectedValue;
    var returnedValue = false;
    if ((heureDebut < heureFin) && ((heureFin - heureDebut) <= 3)) {
        returnedValue = true;
    }
    return returnedValue;
}