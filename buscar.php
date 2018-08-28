<?php


$mysqli = new mysqli("127.0.0.1", "root", "root", "ilpiatto");

$salida = "";
$query = "SELECT * FROM clientes ORDER By idcliente";

if(isset($_POST['parametro'])){
	$q = $mysqli->real_escape_string($_POST['consulta']);
	$query = "SELECT idcliente, dueno, negocio, categoria FROM clientes
	WHERE dueno LIKE '%'".$q."'%' OR negocio LIKE '%'".$q."'%' OR categoria LIKE '%'".$q."'%'";
}

$resultado = $mysqli->query($query);


//echo json_encode("hola", JSON_FORCE_OBJECT);
if($resultado->num_rows > 0){
	$salida.="<table class='tabla_datos'>
		<thead>
			<tr>

			<td>Id Cliente</td>
			<td>Dueño</td>
			<td>Domicilio</td>
			<td>Telefono</td>
			<td>Correo</td>
			<td>Negocio</td>
			<td>Categoria</td>			
			<td>Latitud</td>
			<td>Longitud</td>
			<td>Cargo</td>
			<td>Fecha Inicio</td>
			<td>Fecha Fin</td>
			<td>Imagen</td>
			<td>Texto</td>
		</tr>
		</thead>
		<tbody>";

		while ($fila = $resultado-> fetch_assoc()) {
			$salida.="<tr>

				<td>".$fila['idcliente']."</td>
				<td>".$fila['dueno']."</td>
				<td>".$fila['domicilio']."</td>
				<td>".$fila['telefono']."</td>
				<td>".$fila['correo']."</td>
				<td>".$fila['negocio']."</td>
				<td>".$fila['categoria']."</td>
				<td>".$fila['latitud']."</td>
				<td>".$fila['longitud']."</td>			
				<td>".$fila['cargo']."</td>
				<td>".$fila['fecha_inicio']."</td>
				<td>".$fila['fecha_fin']."</td>
				<td>".$fila['imagen']."</td>
				<td>".$fila['texto']."</td>
				

			</tr>";
		}

		$salida.="</tbody></table>";

} else {

	$salida.="No hay datos";

}
	echo $salida;
	//header('Location: index.html');
	$mysqli->close();


?>

