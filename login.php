<?php
session_start();
?>
    <!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Navigációs sáv</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  </head>
  <body>
    <nav>
      <ul>
        
        <li><div id="mainicon"><i class="material-icons" style="font-size:36px;">library_music</i></div></li>
        <li><a href="#">Főoldal</a></li>
        <li><a href="#">Dalok</a></li>
        <li><a href="#">Zenekarok</a></li>
      </ul>
    </nav>
    
    <div class="loginregister">
    <h4>Bejelentkezés</h4>
      <form action="loginhandler.php" method="post">
        <input type="text" name="username" placeholder="Felhasználónév" required>
        <input type="password" name="password" placeholder="Jelszó" required>
        <input type="submit" value="Bejelentkezés">
        <p>Nincs még fiókod? <a href="register.php">Regisztrálj!</a></p>
    </div>


    
    <!-- Az oldal többi tartalma -->
    
  </body>
</html>