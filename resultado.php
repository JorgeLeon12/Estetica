<?php
	include 'sql.php';
	include 'superior.php';


	function imprimirEsteticas($TPeinados, $tamWidth){
		//$i = 0;


		while ($rowPeinados = mysql_fetch_array($TPeinados)){
			$TEsteticas = mysql_query('SELECT id, nombre, direccion, telefono FROM esteticas ORDER BY RAND() LIMIT 1');
			$rowEsteticas = mysql_fetch_array($TEsteticas);

			if($rowPeinados['dificultad'] == "Facil")$color = "00FF00";
			else if($rowPeinados['dificultad'] == "Medio")$color = "CC6600";
			else if($rowPeinados['dificultad'] == "Alto")$color = "FF0000";
			if($rowPeinados['estetica'] == 1){
				$desplegarEstetica = 'Estetica que recomendamos para este peinado:<dir>
				Nombre: <font color="#ED2F59"><a href="esteticas.php?id='.$rowEsteticas['id'].'">'.$rowEsteticas['nombre'].'</a></font>
				<br> Direcci&oacute;n: <font color="#ED2F59">'.$rowEsteticas['direccion'].'</font>
				<br> Telefono(s): <font color="#ED2F59">'.$rowEsteticas['telefono'].'</font></dir>';
			}else{
				$desplegarEstetica = '';
			}
			//$i +=1;
			//<label for="informacion">
			//</label>
			echo '
			<div class="large-12 columns" id="info">
				<fieldset>
					<legend class="legend1"><font size="5">'.$rowPeinados['nombre'].'</font></legend>
					<div class="large-12 columns">
						<div class="large-3 columns" style="padding-bottom:25px;">
							<img src="'.$rowPeinados['imagen'].'" onclick="location.href=\'verPeinado.php?img='.$rowPeinados['imagen'].'\'">
						</div>
						
							<strong>
						<div class="large-3 columns">Como hacerlo <a href="'.$rowPeinados['video'].'" target="_blank">tu misma</a>.</div>
						<div class="large-3 columns">Dificultad: <font color="'.$color.'">'.$rowPeinados['dificultad'].'</font></div>
						<div class="large-9 columns" style="padding-top:20px;">
							Descripci&oacute;n: <dir><font color="#392A4F">'.$rowPeinados['descripcion2'].'</font></dir>
							'.$desplegarEstetica.'
                        </strong> </div>
					</div>  
				</fieldset>
			</div>';




/*
			<table border="0" style="border:1.5px solid #AAAAAA;padding-right:8px;" width="'.$tamWidth.'">
				<tr>
					<td style="padding-left:8px;padding-top:8px;">Nombre:</td>
					<td style="border-bottom:1.5px solid #AAAAAA;padding-top:8px;" colspan="10"><font color="#392A4F">'.$rowPeinados['nombre'].'</font></td>
				</tr>
				<tr>
					<td style="padding-bottom:8px;padding-right:8px;" rowspan="6" width="160" align="center">
						<img src="'.$rowPeinados['imagen'].'" width="150" height="150" onclick="location.href=\'verPeinado.php?img='.$rowPeinados['imagen'].'\'">
					</td>
				</tr>
				<tr>
					<td>Como hacerlo <a href="'.$rowPeinados['video'].'" target="_blank">tu misma</a>.</td>
					<td width="140">Dificultad: <font color="'.$color.'">'.$rowPeinados['dificultad'].'</font></td>
				</tr>
				<tr>
					<td style="border-bottom:1.5px solid #AAAAAA;border-top:1.5px solid #AAAAAA;" colspan="10">Descripci&oacute;n: <font color="#392A4F">'.$rowPeinados['descripcion2'].'</font></td>
				</tr>
				<tr>
					<td colspan="10">'.$desplegarEstetica.'</td>
				</tr>
			</table><br style="line-height:8px;">
			';//.$i;
*/		}
	}


	$TID = mysql_query('SELECT longitud, tipo, evento, horario, estilo FROM encuestas WHERE id = \''.$_GET['id'].'\'') or die(mysql_error());
	$rowID = mysql_fetch_array($TID);

	//echo '<table border="0" style="border:1.5px solid #AAAAAA;">';
 
	//echo 'SELECT * FROM peinados WHERE MATCH (descripcion) AGAINST (\''.$rowID['longitud'].'\')<hr>';
	if(isset($_GET['p']) && $_GET['p'] > 0){
		$paginaIni = $_GET['p'] * 10;
		$paginaFin = $_GET['p'] * 10 + 10;
	}else{
		$paginaIni = 0;
		$paginaFin = 10;
	}
	if (!isset($_GET['p'])) {
		$_GET['p'] = 0;
	}
	$tamWidth = 550;
	//echo $paginaIni.", ".$paginaFin;
	//echo '<table border="0" width="'.$tamWidth.'">';

	$Query = 'SELECT * FROM peinados WHERE MATCH (descripcion) AGAINST (\'+'.$rowID['longitud'].' '.$rowID['tipo'].' '.$rowID['evento'].' '.$rowID['horario'].' '.$rowID['estilo'].'\'IN BOOLEAN MODE) LIMIT '.$paginaIni.',10';
	$TPeinados = mysql_query($Query)or die(mysql_error());
	imprimirEsteticas($TPeinados, $tamWidth);


	if(isset($_GET['p']) && $_GET['p'] > 0){
		$pagAnterior = '<a href="resultado.php?id='.$_GET['id'].'&p='.($_GET['p']-1).'">< Anterior</a>';
	}else{
		$pagAnterior = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	}

	$Query2 = 'SELECT COUNT(id) FROM peinados WHERE MATCH (descripcion) AGAINST (\'+'.$rowID['longitud'].' '.$rowID['tipo'].' '.$rowID['evento'].' '.$rowID['horario'].' '.$rowID['estilo'].'\'IN BOOLEAN MODE)';
	$TPeinados2 = mysql_query($Query2)or die(mysql_error());
	$cantPeinados = mysql_fetch_row($TPeinados2);

	if($cantPeinados[0] > ($_GET['p'] * 10 + 10)){
		$pagSiguiente = '<a href="resultado.php?id='.$_GET['id'].'&p='.($_GET['p']+1).'">Siguiente ></a>';
	}else{
		$pagSiguiente = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	}

	echo '
	<div class="large-12 columns" id="info">
		<fieldset>
			<legend class="legend1"><font size="5">Peinados Disponibles:</font></legend>
			<div class="large-12 columns">
				<div class="large-12 columns" align="center">
					<font size="5">'.$pagAnterior.' &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; '.$pagSiguiente.'</font>
					<br>
					<font size="4">'.($paginaIni+1).' - '.$paginaFin.'</font>
				</div>
			</div>  
		</fieldset>
	</div>';
?>