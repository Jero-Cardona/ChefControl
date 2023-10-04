<?php
require "../templade/headerR.php";
?>
    <div class="container d-inline-block" style="margin: 60px;">
        <form id="frmRecetaE">
            <div class="mb-3 p-1">
                <label for="NameReceta" class="form-label">Nombre de la receta</label>
                <input type="text" name="NameR" placeholder="Nombre" class="form-control" id="NameReceta" aria-describedby="emailHelp" required>
                <div id="emailHelp" class="form-text">Digita el nombre de la receta que deseas estandarizar</div>
            </div>
            <div class="mb-3 p-1">
                <label for="DescReceta" class="form-label">Descripcion de la receta</label>
                <textarea name="DescR" id="DescReceta" cols="" rows=3"></textarea>
                <div id="emailHelp" class="form-text">Aqui debes explicar el paso a paso de la elaboracion de la receta misma</div>
            </div>
            <div class="mb-3 p-1">
                <label for="CostReceta" class="form-label">Costo total de la Receta</label>
                <input type="text" name="CostoR" placeholder="Costo" class="form-control" id="CostReceta" required>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="checkmeout">
                <label class="form-check-label" for="checkmeout">Estoy de Acuerdo con los terminos y condicines</label>
            </div>
            <button type="submit" class="btn btn-info"><i class="fa-solid fa-floppy-disk"></i> Enviar Registro</button>
        </form>
    </div>
<?php
require "../templade/footer.php";
?>