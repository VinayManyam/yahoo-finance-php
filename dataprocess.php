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

function close2closeper($res) {
	$d=array();
	$val=round($res[0]['sclose']-$res[1]['sclose'],2);
	$per=round(($val/$res[0]['sclose'])*100,2);
	$d[]=$per;
	$d[]=$val;
	$d[]=$res[0]['sclose'];
	return $d;
}
function close2openper($res) {
	$d=array();
	$val=round($res[0]['sopen']-$res[1]['sclose'],2);
	$per=round(($val/$res[0]['sopen'])*100,2);
	$d[]=$per;
	$d[]=$val;
	$d[]=$res[0]['sopen'];
	return $d;
}
function open2openper($res) {
	$d=array();
	$val=round($res[0]['sopen']-$res[1]['sopen'],2);
	$per=round(($val/$res[0]['sopen'])*100,2);
	$d[]=$per;
	$d[]=$val;
	$d[]=$res[0]['sopen'];
	return $d;
}
function open2closeper($res) {
	$d=array();
	$val=round($res[0]['sclose']-$res[0]['sopen'],2);
	$per=round(($val/$res[0]['sclose'])*100,2);
	$d[]=$per;
	$d[]=$val;
	$d[]=$res[0]['sclose'];
	return $d;
}

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

arsort($close2close);
arsort($close2open);
arsort($open2open);
arsort($open2close);

$final['cname']=array_keys($close2close);
$final['close2close']=$close2close;
$final['cname1']=array_keys($close2open);
$final['close2open']=$close2open;
$final['cname2']=array_keys($open2open);
$final['open2open']=$open2open;
$final['cname3']=array_keys($open2close);
$final['open2close']=$open2close;



echo json_encode($final);
}

?>