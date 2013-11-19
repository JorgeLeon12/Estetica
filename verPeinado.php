<?php
	include 'sql.php';
	include 'superior.php';

	if(isset($_GET['img'])){


		echo '
		<div class="large-12 columns" id="info">
			<fieldset>
				<legend class="legend1"><font size="5">Fotografia del peinado:</font></legend>
				<div class="large-12 columns">
					<div class="large-12 columns" align="center">
						<img src="'.$_GET['img'].'">
						<div style="padding:20px;"><strong><font size="3"><font color="red">*</font><font color="gray">Esta imagen solo es ilustrativa, no representa la calidad final del peinado</font><font color="red">*</font></font></strong></div>
					</div>
				</div>  
			</fieldset>
		</div>';
	}else{
		echo "ERROR 404: Archivo no encontrado";
	}

	include 'inferior.php';
?>