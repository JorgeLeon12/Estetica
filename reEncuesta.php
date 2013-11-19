<?php

include 'sql.php';
$longitud = $_POST['longitud'];
$tipo = $_POST['tipo'];
$evento = $_POST['evento'];
$horario = $_POST['horario'];
$estilo = $_POST['estilo'];

mysql_query('INSERT INTO encuestas(longitud, tipo, evento, horario, estilo) VALUE(\''.$longitud.'\', \''.$tipo.'\', \''.$evento.'\', \''.$horario.'\', \''.$estilo.'\')') or die(mysql_error());

$id = mysql_query('SELECT id FROM encuestas WHERE longitud = \''.$longitud.'\' AND tipo = \''.$tipo.'\' AND evento = \''.$evento.'\' AND horario = \''.$horario.'\' AND estilo = \''.$estilo.'\' ORDER BY id DESC LIMIT 0,1') or die(mysql_error());
$id = mysql_fetch_row($id);

echo $longitud." ".$tipo." ".$evento." ".$horario." ".$estilo;
header('Location:resultado.php?id='.$id[0]);
?>