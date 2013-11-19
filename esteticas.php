<?php

include 'sql.php';
include 'superior.php';

if(isset($_GET['id'])){
	$TEstetica = mysql_query('SELECT nombre, direccion, telefono FROM esteticas WHERE id = \''.$_GET['id'].'\'')or die(mysql_error());
	while ($rowEstetica = mysql_fetch_array($TEstetica)) {
			echo '
			<div class="large-12 columns" id="info">
				<fieldset>
					<legend class="legend1"><font size="5">Datos:</font></legend>
					<div class="large-12 columns">
						<div class="large-12 columns">
							<font size="5">
							Nombre:
							<dir><a href="#">'.$rowEstetica['nombre'].'.</a></dir>
							Direccion:
							<dir><a href="#">'.$rowEstetica['direccion'].'.</a></dir>
							Telefono:
							<dir><a href="#">'.$rowEstetica['telefono'].'.</a></dir>
							Mapa:
							<dir></font><font size="5" color="#CC6600">Pr&oacute;ximamente.</font></dir>
						</div>
					</div>  
				</fieldset>
			</div>';
	}
}


include 'inferior.php';
?>