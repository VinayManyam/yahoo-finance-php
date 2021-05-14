<?php


   if($_POST['ndata']=='reports'){
 dataant();
   }


function open2open($res){
	$d=array();
for ($i=1;$i<16;$i++) {
	$d[]=round($res[$i-1]['sopen']-$res[$i]['sopen'],2);
	}
	return $d;
}

function close2close($res){
	$d=array();
for ($i=1;$i<16;$i++) {
	$d[]=round($res[$i-1]['sclose']-$res[$i]['sclose'],2);
	}
	return $d;
}

function close2open($res){
	$d=array();
for ($i=1;$i<16;$i++) {
	$d[]=round($res[$i-1]['sopen']-$res[$i]['sclose'],2);
	}
	return $d;
}
function open2close($res){
	$d=array();
for ($i=0;$i<15;$i++) {
	$d[]=round($res[$i]['sclose']-$res[$i]['sopen'],2);
	}
	return $d;
}
function c2cmavg($res){
	$d=array();
for ($i=0;$i<15;$i++) {
	$d[]=round(($res[$i]['sclose']+$res[$i+1]['sclose']+$res[$i+2]['sclose']+$res[$i+3]['sclose']+$res[$i+4]['sclose'])/5-($res[$i+1]['sclose']+$res[$i+2]['sclose']+$res[$i+3]['sclose']+$res[$i+4]['sclose']+$res[$i+5]['sclose'])/5,2);
	}
	return $d;
}
function c2cavg($res){
	$d=array();
	for ($i=0;$i<11;$i++) {
		$d[]=round(($res[$i]+$res[$i+1]+$res[$i+2]+$res[$i+3]+$res[$i+4])/5,2);
	}
	return $d;
}
function openprize($res){
	$d=array();
	for ($i=0;$i<15;$i++) {
		$d[]=$res[$i]['sclose'];
	}
	return $d;
}


function dataant(){
	require "urls.php";
$final=array();
$close2open=array();
$open2close=array();
$close2close=array();
$open2open=array();
$cmnames=array();
$c2cmavg=array();
$c2cavg=array();
$openprize=array();
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
		  
#print_r($arr);
$close2open[$name]=close2open($arr);
$open2close[$name]=open2close($arr);
$close2close[$name]=close2close($arr);
$open2open[$name]=open2open($arr);
$c2cmavg[$name]=c2cmavg($arr);
$c2cavg[$name]=c2cavg(close2close($arr));
$openprize[$name]=openprize($arr);
}


$final['close2open']=$close2open;
$final['open2close']=$open2close;
$final['close2close']=$close2close;
$final['open2open']=$open2open;
$final['cname']=array_keys($close2open);


 $arr9=array();
$str="SELECT sdate FROM `BAJFINANCE`";
 $res= mysqli_query($con,$str);
  $arr=array();
        while($row= mysqli_fetch_assoc($res)){
                       $arr9[]=str_replace(', 2021', '', $row['sdate']);
        }
		
	$final['cdate']=array_slice($arr9,0,15);
$final['c2cmavg']=$c2cmavg;	
$final['c2cavg']=$c2cavg;
$final['openprize']=$openprize;	
		
echo json_encode($final); 
}


?>