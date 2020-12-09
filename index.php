<?php
include_once("request.php");
 $item = "root";
 $rows = request::Login($item);
echo "<select name='Branch'>";

var_dump($rows);
echo $rows;
while ($row = $rows) {
   echo "<option value='".$row[0]."'>".$row[0]."</option>";
}
echo "</select>";
?>