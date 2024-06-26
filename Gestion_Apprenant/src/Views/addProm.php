<h3 class="m-3">Ajouter une promotion</h3>


<form class="p-3 m-5 bg-light text-dark" method="post">

    <input type="hidden" name="form_id" value="1">

    <div class="mb-3">
        <label for="nomPromo" class="form-label">Nom de la promotion</label>
        <input type="text" name="nomPromo" class="form-control" id="nomPromo" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="dateDebut" class="form-label">Date de début</label>
        <input type="date" name="dateDebut" class="form-control" id="dateDebut" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="dateFin" class="form-label">Date de fin</label>
        <input type="date" name="dateFin" class="form-control" id="dateFin" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="nbApprenants" class="form-label">Nombre d'élèves</label>
        <input type="number" name="nbApprenants" class="form-control" id="nbApprenants" aria-describedby="emailHelp">
    </div>

    <div class="  d-flex justify-content-between mb-3">
        <input id="btnRetourVersTousLesPromo" class=" mb-3 btn btn-primary" value="Retour" style="width: 20%;" > 

        <input id="createNewPromoBtn" type="submit" class="mb-3 btn btn-primary" value="Sauvegarder" style="width: 20%;"> 

    </div>
</form>