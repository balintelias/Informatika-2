<?php
// Gyakori függvények összesített gyűjteménye

function opendb(){
    $link = mysqli_connect("localhost", "root", "") or die("Connection error: ".mysqli_error());
    mysqli_select_db($link, "nagyHF")
    return $link;
}
?>