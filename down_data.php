<?php

   if($_POST['ndata']=='reports'){
 dataant();
   }
   
function dataant() {
require "urls.php";
require "models.php";
$final=array();
$close2open=array();
$open2close=array();
$close2close=array();
$open2open=array();
$cmnames=array();
$c2cmavg=array();
$c2cavg=array();
$openprize=array();
$total=array();

for ($x = 0; $x < count($urls[0]); $x++) {
	#$d=array(); print_r($urls[0][0]);echo "<br>";

$name=$urls[0][$x][0];
	   $con= mysqli_connect("localhost", "root", "", "stock");
$str="SELECT sdate,sopen,sclose,svolume FROM `$name`";
 $res= mysqli_query($con,$str);
  $arr=array();
        while($row= mysqli_fetch_assoc($res)){
                       $arr[]=$row;
        }
		  
$close2close[$name]=close2closeper($arr);
$close2open[$name]=close2openper($arr);
$open2open[$name]=open2openper($arr);
$open2close[$name]=open2closeper($arr);

}

asort($close2close);
asort($close2open);
asort($open2open);
asort($open2close);

$final['cname']=array_keys(array_slice($close2close,0,9));
$final['close2close']=$close2close;
$final['cname1']=array_keys(array_slice($close2open,0,9));
$final['close2open']=$close2open;
$final['cname2']=array_keys(array_slice($open2open,0,9));
$final['open2open']=$open2open;
$final['cname3']=array_keys(array_slice($open2close,0,9));
$final['open2close']=$open2close;


$tmp=array();
$tmp=array_merge($final['cname'],$final['cname1'],$final['cname2'],$final['cname3']);
$tmp=array_count_values($tmp);
arsort($tmp);
$final['com']=$tmp;




echo json_encode($final);
}

?>