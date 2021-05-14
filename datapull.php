<?php
require "urls.php";

for ($x = 0; $x < count($urls[0]); $x++) {
$data = file_get_contents($urls[0][$x][1]);
$dom = new domDocument;
@$dom->loadHTML($data);
$xpath = new DOMXpath($dom);
$result = [];
$elements = $dom->getElementsByTagName('tr');
foreach ($elements as $node) {
	if(is_object($node->getElementsByTagName('td')->item(0)) and is_object($node->getElementsByTagName('td')->item(1)) and is_object($node->getElementsByTagName('td')->item(4)) and is_object($node->getElementsByTagName('td')->item(6))){
    $ndate=$node->getElementsByTagName('td')->item(0)->nodeValue;
	$Open=$node->getElementsByTagName('td')->item(1)->nodeValue;
	$close=$node->getElementsByTagName('td')->item(4)->nodeValue;
	$volume=$node->getElementsByTagName('td')->item(6)->nodeValue;
		$result[]=array($ndate,$Open,$close,$volume);
	}
	
  }
uploaddata($urls[0][$x][0],$result);
}
 function uploaddata($tname,$result){
 $con= mysqli_connect("localhost", "root", "", "stock");
 $str11="TRUNCATE TABLE $tname";
 	 $res=mysqli_query($con,$str11);
if($res){
	#echo "table empty now!";
 
	 $z=0;			   
foreach ($result as $node) {
				
if($z<20){
  	$topen=str_replace( ',','',  $node[1]);
	$tclose=str_replace( ',','', $node[2]);
	$tvolume=str_replace( ',','',  $node[3]);
	$tdate =$node[0];
	
   $str="INSERT INTO `$tname` (`sdate`, `sopen`, `sclose`, `svolume`) VALUES ('$tdate', '$topen', '$tclose', '$tvolume');";

		  $res=mysqli_query($con,$str);
					 #  print_r($node);
				if($res){
				  # echo "sucess <br>";
				  }
					else{
					echo "failed";
					}
			$z++;
	}

}echo "$tname updated <br>";	
}else {
	echo "$tname table not deleted";
}

 }


?>
