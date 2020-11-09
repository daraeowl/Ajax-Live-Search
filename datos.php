<?php
//datos.php  CAMBIAR liam POR LA BDD A UTILIZAR.
$connect = mysqli_connect("localhost", "root", "", "liam");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM productos 
  WHERE nombre LIKE '%".$search."%'
  OR codigo LIKE '%".$search."%' 
  OR categoria LIKE '%".$search."%'
 ";
}
else
{
 $query = "
  SELECT * FROM productos ORDER BY id
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table bordered">
    <tr>
     <th>Id</th>
     <th>Nombre</th>
     <th>codigo</th>
     <th>Categoria Code</th>
     <th>Frase Promocional</th>
     <th>Descripcion</th>
     <th>Colores</th>
     <th>Precio</th>
     <th>Disponibilidad</th>
     <th>Promocion</th>
     <th>Fecha</th>
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td>'.$row["id"].'</td>
    <td>'.$row["nombre"].'</td>
    <td>'.$row["codigo"].'</td>
    <td>'.$row["categoria"].'</td>
    <td>'.$row["frase_promocional"].'</td>
    <td>'.$row["descripcion"].'</td>
    <td>'.$row["colores"].'</td>
    <td>'.$row["precio"].'</td>
    <td>'.$row["disponibilidad"].'</td>
    <td>'.$row["promocion"].'</td>
    <td>'.$row["fecha"].'</td>
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Sin Resultados';
}

?>