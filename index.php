<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Banda-monda</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  </head>
  <body>
    <nav>
      <ul>
        <li><div id="mainicon"><i class="material-icons" style="font-size:36px;">library_music</i></div></li>
        <li><a href="index.php">Főoldal</a></li>
        <li><a href="songs.php">Dalok</a></li>
        <li><a href="bands.php">Zenekarok</a></li>
      </ul>
    </nav>
    <div class="loginregister">
      <p>XDXD</p>
    </div>
    <div class="toplist">
      <p>Ők itt a userek:</p>
      <?php
      $link = mysqli_connect("localhost", "root", "") or die("Connection error: ".mysqli_error());
      mysqli_select_db($link, "nagyHF");    
      $result = mysqli_query($link, "SELECT familyname, givenname FROM users",);
      ?>
      <table>
      <tr><th>Family</th><th>Given</th></tr>
      <?php
			while($row = mysqli_fetch_array($result)):
			
			?>
			<tr>  <td><?=$row['familyname']?></td>  <td><?=$row['givenname']?></td> </tr>
			<?php endwhile; ?>
      </table>
    </div>

    <!-- Az oldal többi tartalma -->
    
  </body>
</html>
