<?php
require "urls.php";
$con= mysqli_connect("localhost", "root", "", "stock");
for ($x = 0; $x < count($urls[0]); $x++) {
	 
	 $tname=$urls[0][$x][0];
 $str11="TRUNCATE TABLE $tname";
 	 $res=mysqli_query($con,$str11);
if($res){
	echo "$tname is clear";
}else {
	echo "$tname not deleted";
}
}
	
?>