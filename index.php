<?php
//check if user is logged in
session_start();
if(isset($_SESSION['username'])) {
  header("Location: home.php");
  
}
else{header("Location: login.php");}

?>

