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
$mavg=array();

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

function mavg($res,$typ){
	$d=array();
	$d1=0;
	$ar=array();
	for ($i=0;$i<5;$i++) {
	$d[]=round(($res[$i][$typ]+$res[$i+1][$typ]+$res[$i+2][$typ]+$res[$i+3][$typ]+$res[$i+4][$typ])/5-($res[$i+1][$typ]+$res[$i+2][$typ]+$res[$i+3][$typ]+$res[$i+4][$typ]+$res[$i+5][$typ])/5,2);
	}
	for ($i=0;$i<5;$i++) {
		$d1=$d1+$d[$i];
	}
	
	$ar[]=$res[0]['sopen'];
	$ar[]=round($d1/5,2);
	return $ar;
}

arsort($close2close);
arsort($close2open);
arsort($open2open);
arsort($open2close);

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
$tmp1=array();
$mva=array();
$tmp1=array_merge($final['cname'],$final['cname1'],$final['cname2'],$final['cname3']);

for ($x = 0; $x < count($tmp1); $x++) {
	#$d=array(); print_r($urls[0][0]);echo "<br>";

$name=$tmp1[$x];
$str="SELECT sdate,sopen,sclose,svolume FROM `$name`";
 $res= mysqli_query($con,$str);
  $arr=array();
        while($row= mysqli_fetch_assoc($res)){
                       $arr[]=$row;
        }

$mva[$name]=mavg($arr,"sopen");
$mvaOpen[$name]=$arr[0]["sopen"];
}

$final['mva']=$mva;





echo json_encode($final);
}

?>