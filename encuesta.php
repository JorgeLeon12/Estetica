<?php
	include 'sql.php';
	include 'superior.php';
?>





<!-- 
                    <div class="large-12 columns" id="info">
                        <fieldset>
                            <legend class="legend1"><font size="5">Buscar segun tu Cabello</font></legend>
                            <div class="large-12 columns">
                                <div class="large-12 columns" style="padding-top:20px;">
                                    <label for="longitud"><input type="radio" name="longitud" id="longitud" value="Corto"><span class="custom radio"></span> Corto</label>
                                    <label for="longitud"><input type="radio" name="longitud" id="longitud" value="Largo"><span class="custom radio"></span> Largo</label>
                                </div>
                            </div>  
                        </fieldset>
                    </div>
 -->
<script>
function validar(){
    Texto1 = document.getElementById("longitud").value;
    Texto2 = document.getElementById("longitud2").value;
    if(Texto1.length == 0 || Texto2.length == 0){
        alert("Por favor llena todos los campos");
        return false;
    }

    Texto3 = document.getElementById("tipo").value;
    Texto4 = document.getElementById("tipo2").value;
    Texto5 = document.getElementById("tipo3").value;
    if(Texto3.length == 0 || Texto4.length == 0 || Texto5.length == 0){
        alert("Por favor llena todos los campos");
        return false;
    }

    Texto6 = document.getElementById("evento").value;
    Texto7 = document.getElementById("evento2").value;
    Texto8 = document.getElementById("evento3").value;
    if(Texto6.length == 0 || Texto7.length == 0 || Texto8.length == 0){
        alert("Por favor llena todos los campos");
        return false;
    }

    Texto9 = document.getElementById("horario").value;
    Texto10 = document.getElementById("horario2").value;
    if(Texto9.length == 0 || Texto10.length == 0){
        alert("Por favor llena todos los campos");
        return false;
    }

    Texto11 = document.getElementById("estilo").value;
    Texto12 = document.getElementById("estilo2").value;
    if(Texto11.length == 0 || Texto12.length == 0){
        alert("Por favor llena todos los campos");
        return false;
    }
    return true;
}
</script>

<form method="POST" action="reEncuesta.php" onsubmit="return validar()">
    <div class="large-12 columns" id="info">
        <fieldset>
            <legend class="legend1"><font size="5">Buscar segun tu Cabello</font></legend>
            <div class="large-12 columns">
                <!--  -->
                <div class="large-12 columns" id="info">
                    <fieldset>
                        <legend class="legend1"><font size="5">Longitud de cabello</font></legend>
                        <div class="large-12 columns">
                            <div class="large-12 columns">
                                <label for="longitud"><input type="radio" name="longitud" id="longitud" value="Corto"><span class="custom radio"></span> Corto</label>
                                <label for="longitud2"><input type="radio" name="longitud" id="longitud2" value="Largo"><span class="custom radio"></span> Largo</label>
                            </div>
                        </div>  
                    </fieldset>
                </div>
                <!--  -->
                <div class="large-12 columns" id="info">
                    <fieldset>
                        <legend class="legend1"><font size="5">Tipo de cabello</font></legend>
                        <div class="large-12 columns">
                            <div class="large-12 columns">
                                <label for="tipo"><input type="radio" name="tipo" id="tipo" value="Chino"><span class="custom radio"></span> Chino</label>
                                <label for="tipo2"><input type="radio" name="tipo" id="tipo2" value="Lacio"><span class="custom radio"></span> Lacio</label>
                                <label for="tipo3"><input type="radio" name="tipo" id="tipo3" value="Ondulado"><span class="custom radio"></span> Ondulado</label>
                            </div>
                        </div>  
                    </fieldset>
                </div>
                <!--  -->
                <div class="large-12 columns" id="info">
                    <fieldset>
                        <legend class="legend1"><font size="5">Tipo de evento</font></legend>
                        <div class="large-12 columns">
                            <div class="large-12 columns">
                                <label for="evento"><input type="radio" name="evento" id="evento" value="Casual"><span class="custom radio"></span> Casual</label>
                                <label for="evento2"><input type="radio" name="evento" id="evento2" value="Formal"><span class="custom radio"></span> Formal</label>
                                <label for="evento3"><input type="radio" name="evento" id="evento3" value="Uso diario"><span class="custom radio"></span> Uso diario</label>
                            </div>
                        </div>  
                    </fieldset>
                </div>
                <!--  -->
                <div class="large-12 columns" id="info">
                    <fieldset>
                        <legend class="legend1"><font size="5">Horario del Evento</font></legend>
                        <div class="large-12 columns">
                            <div class="large-12 columns">
                                <label for="horario"><input type="radio" name="horario" id="horario" value="Dia"><span class="custom radio"></span> D&iacute;a</label>
                                <label for="horario2"><input type="radio" name="horario" id="horario2" value="Noche"><span class="custom radio"></span> Noche</label>
                            </div>
                        </div>  
                    </fieldset>
                </div>
                <!--  -->
                <div class="large-12 columns" id="info">
                    <fieldset>
                        <legend class="legend1"><font size="5">Estilo del peinado</font></legend>
                        <div class="large-12 columns">
                            <div class="large-12 columns">
                                <label for="estilo"><input type="radio" name="estilo" id="estilo" value="Clasico"><span class="custom radio"></span> Cl&aacute;sico</label>
                                <label for="estilo2"><input type="radio" name="estilo" id="estilo2" value="Moderno"><span class="custom radio"></span> Moderno</label>
                            </div>
                        </div>  
                    </fieldset>
                </div>
                <!--  -->
            </div>
            <div class="large-12 columns">
                <div class="large-4 columns"><button class="small button">&#161;Buscar Recomendaciones!</a></div>
            </div><!-- javascript:document["formulario"].submit(); -->
        </fieldset>
    </div>
</form>
<?php
	include 'inferior.php';



    /*
    <table border="0" width="30%">
        <tr><!-- 1. Longitud de cabello: a. Corto b. largo -->
            <td colspan="10">Longitud de cabello</td>
        </tr><tr>
            <td width="10%"></td>
            <td><input type="radio" name="longitud" id="longitud" value="Corto" />Corto</td>
            <td><input type="radio" name="longitud" id="longitud" value="Largo" />Largo</td>
        </tr>

        
        <tr><!-- 2. Tipo de cabello: a. Chino b. Lacio c. Ondulado -->
            <td colspan="10">Tipo de cabello</td>
        </tr><tr><a href="" target="_blank">
            <td width="10%"></td>
            <td><input type="radio" name="tipo" id="tipo" value="Chino" />Chino</td>
            <td><input type="radio" name="tipo" id="tipo" value="Lacio" />Lacio</td>
            <td><input type="radio" name="tipo" id="tipo" value="Ondulado" />Ondulado</td>
        </tr>
        

        <tr><!-- 3. Tipo de evento: a. Casual b. Formal c. Uso diario -->
            <td colspan="10">Tipo de evento</td>
        </tr><tr>
            <td width="10%"></td>
            <td><input type="radio" name="evento" id="evento" value="Casual" />Casual</td>
            <td><input type="radio" name="evento" id="evento" value="Formal" />Formal</td>
            <td><input type="radio" name="evento" id="evento" value="Uso Diario" />Uso diario</td>
        </tr>


        <tr><!-- 4. Horario del Evento: a. Día b. Noche -->
            <td colspan="10">Horario del Evento</td>
        </tr><tr>
            <td width="10%"></td>
            <td><input type="radio" name="horario" id="horario" value="Dia" />D&iacute;a</td>
            <td><input type="radio" name="horario" id="horario" value="Noche" />Noche</td>
        </tr>


        <tr><!-- 5. Estilo del peinado: a. Clásico b.  -->
            <td colspan="10">Estilo del peinado</td>
        </tr><tr>
            <td width="10%"></td>
            <td><input type="radio" name="estilo" id="estilo" value="Clasico" />Cl&aacute;sico</td>
            <td><input type="radio" name="estilo" id="estilo" value="Moderno" />Moderno</td>
        </tr>
        
        <tr>
            <td colspan="10" align="center"><input type="submit" value="¡Buscar Recomendaciones!" /></td>
        </tr>
    </table>
    */
?>