<?php
session_start();
// check if database `nagyHF` has user with given username and password
$link = mysqli_connect("localhost", "root", "") or die("Connection error: ".mysqli_error());
mysqli_select_db($link, "nagyHF");
$query = sprintf("SELECT * FROM users WHERE username='%s' AND password='%s'",
  $_POST['username'],
  $_POST['password']
);
$result = mysqli_query($link, $query);
// if there is a user with given username and password, then set session variable `username` to the given username
// and redirect to index.php
// printf("%s", mysqli_num_rows($result)==1);
if(mysqli_num_rows($result) == 1) {
  $_SESSION['username'] = $_POST['username'];
  print_r($_SESSION);
  printf($_SESSION['username']);
  header("Location: home.php");

}
// else redirect to login.php
//header("Location: login.php");
?>