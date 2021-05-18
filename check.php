<?php 
require "urls.php";
$arr=array();
$con= mysqli_connect("localhost", "root", "", "stock");
for ($x = 0; $x < count($urls[0]); $x++) {
	
$name=$urls[0][$x][0];
	   
$str="SELECT sdate,sopen,sclose,svolume FROM `$name`";
 $res= mysqli_query($con,$str);
  
        while($row= mysqli_fetch_assoc($res)){
                       if($row['sopen']=="0.00"){
					   $arr[]=$name." ".$row['sdate'];
					   }
        }
}

foreach ($arr as $node) {
	echo $node;
}



?>