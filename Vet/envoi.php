<?php
$servername = "localhost";
$username = "VendeurVendu";
$password = "Simplon974!";
$dbname = "rsmar";
session_start();
$nom = $_SESSION['mars'];
$sct = $_SESSION['sec'];

$vtm = $_GET['vtm'];
$taille = $_GET['taille'];
$comment = $_GET['com'];
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    //if($mdp1==$mdp2){
    $req = " INSERT INTO vetement ( Marsouin,  Section, Vetement, Taille, Commentaire) VALUES ('$nom','$sct','$vtm','$taille', '$comment');";
    
    // tester la requete sur phpmyadmin
    
    $conn->exec($req);
    header('Location: CondD.php');
    // vérifier avec phpmyadmin
    }catch(PDOException $e)
    {
    echo $sql . "<br>" . $e->getMessage();
    }
?>