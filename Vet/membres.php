<?php
$servername = "localhost";
$username = "VendeurVendu";
$password = "Simplon974!";
$dbname = "rsmar";
$nom = $_GET['nom'];
$sct = $_GET['sct'];
$mars = $_GET['mars'];


$mdp1 = $_GET['mdp1'];
$mdp2 = $_GET['mdp2'];
try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//if($mdp1==$mdp2){
$req = " INSERT INTO membres ( Nom, Marsouin,  Section, Password, Grade) VALUES ('$nom','$mars','$sct','$mdp1','Marsouin');";

// tester la requete sur phpmyadmin

$conn->exec($req);
header('Location: ConfI.html');
// vérifier avec phpmyadmin
}catch(PDOException $e)
{
echo $sql . "<br>" . $e->getMessage();
}
//}else{header('Location: Inscription.php');}
?>