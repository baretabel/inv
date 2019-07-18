<?php
$servername = "localhost";
$username = "VendeurVendu";
$password = "Simplon974!";
$dbname = "rsmar";
session_start();
$log=$_SESSION['login'];
$conn = new mysqli($servername, $username, $password, $dbname);
       
       $sql = "SELECT  Marsouin, Grade  FROM membres WHERE Nom='$log'  ";
       $result = $conn->query($sql);
       while($row = $result->fetch_assoc()){
           $mars=$row['Marsouin'];
           $grd=$row['Grade'];
       }
       $_SESSION['grd']=$grd;
       $_SESSION['mars']=$mars;
       if($grd!='Marsouin'){
        header('Location: visua.php');
       }else{
       header('Location: visu.php');}
?>