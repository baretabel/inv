<?php

$servername = "localhost";
$username = "VendeurVendu";
$password = "Simplon974!";
$dbname = "rsmar";
$conn = new mysqli($servername, $username, $password, $dbname);
       
       $sql = "SELECT ID FROM vetement";
       $result = $conn->query($sql);
       while($row = $result->fetch_assoc()) {
        $id=$row['ID'];
       }
if (isset($_GET['check']))
{$resulta = $_GET['check'];
foreach($resulta as $id)
          {
             // echo $id;
            $sqli = "DELETE FROM vetement WHERE ID=$id";
            $res=$conn->query($sqli);
            header('Location: visu.php'); 
          }

}
?>