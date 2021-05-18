<html> 
   <head> 
      <title>News</title> 
      <script type="text/javascript" src="jquery.js"></script> 
   
      <script type="text/javascript" language="javascript"> 
         $(document).ready(function() { 

          $("#load").click(function(event){
			  $(".item").not(':first').remove();
			  			$.post(  
                  "down_data.php", 
                  { ndata: "reports"}, 
                  function(data) {
			test= JSON.parse(data);
			//alert(test['cname'].length);
			
					var clone = $("#mainbase .item").clone();
		var gain=0;
		var sum=0;
		var gain1=0;
		var sum1=0;
		var gain2=0;
		var sum2=0;
		var gain3=0;
		var sum3=0;
		var m=0;var n=0; var o=0; var p=0;
			
		for(var j=0;j<test['cname'].length;j++){
			if(test['close2close'][test['cname'][j]][1]>0){ m++;}else{ tmv="Fail"}	
			if(test['close2open'][test['cname'][j]][1]>0){ n++;}else{ tmv="Fail"}	
			if(test['open2open'][test['cname'][j]][1]>0){ o++;}else{ tmv="Fail"}	
			if(test['open2close'][test['cname'][j]][1]>0){ p++;}else{ tmv="Fail"}	
			gain+=parseFloat(test['close2close'][test['cname'][j]][1])
			sum+=parseFloat(test['close2close'][test['cname'][j]][2])
			var per=(gain/sum)*100;
			per=per.toFixed(2);
			gain1+=parseFloat(test['close2open'][test['cname'][j]][1])
			sum1+=parseFloat(test['close2open'][test['cname'][j]][2])
			var per1=(gain1/sum1)*100;
			per1=per1.toFixed(2);
			gain2+=parseFloat(test['open2open'][test['cname'][j]][1])
			sum2+=parseFloat(test['open2open'][test['cname'][j]][2])
			var per2=(gain2/sum2)*100;
			per2=per2.toFixed(2);
			gain3+=parseFloat(test['open2close'][test['cname'][j]][1])
			sum3+=parseFloat(test['open2close'][test['cname'][j]][2])
			var per3=(gain3/sum3)*100;
			per3=per3.toFixed(2);
			
				}
				
			gain=parseFloat(gain).toFixed(2);
			gain1=parseFloat(gain1).toFixed(2);
			gain2=parseFloat(gain2).toFixed(2);
			gain3=parseFloat(gain3).toFixed(2);
			
    	$(".mytable", clone).html('<table><tr><td><table border="1" class="c2cgain"><thead>C2CGain:</thead><th>Cname</th><th>Gain</th><th>Gain%</th><th>close</th></table></td><td><table border="1" class="c2ogain"><thead>C2OGain:</thead><th>Cname</th><th>Gain</th><th>Gain%</th><th>close</th></table></td><td><table border="1" class="o2ogain"><thead>O2OGain:</thead><th>Cname</th><th>Gain</th><th>Gain%</th><th>close</th></table></td><td><table border="1" class="o2cgain"><thead>O2CGain:</thead><th>Cname</th><th>Gain</th><th>Gain%</th><th>close</th></table></td></tr></table>')
		
			$(".content").append(clone)
		$(".mytablen").html('<table><tr><td>Cname</td><td>Count</td></tr></table>');	
			var tmpnew=[];
			$.each(test['com'], function(key, value) {
				tmpnew.push(key);
});
		
			$(".tgain").html("<br>Gain : "+gain)
			$(".tgainper").html("<br>Gain% : "+per)
			$(".total").html("<br>Total : "+sum)
			function check(val) {
				var tmv="";if(val>0){ tmv="Pass";}else{ tmv="Fail"}		
				return tmv; }
			for(var j=0;j<test['cname'].length;j++){
				$('.c2cgain').append('<tr><td>'+test['cname'][j]+'</td><td data-tag="'+check(test['close2close'][test['cname'][j]][1])+'">'+test['close2close'][test['cname'][j]][1]+'</td><td data-tag="'+check(test['close2close'][test['cname'][j]][0])+'">'+test['close2close'][test['cname'][j]][0]+'</td><td>'+test['close2close'][test['cname'][j]][2]+'</td></tr>')
				$('.c2ogain').append('<tr><td>'+test['cname1'][j]+'</td><td data-tag="'+check(test['close2open'][test['cname1'][j]][1])+'">'+test['close2open'][test['cname1'][j]][1]+'</td><td data-tag="'+check(test['close2open'][test['cname1'][j]][0])+'">'+test['close2open'][test['cname1'][j]][0]+'</td><td>'+test['close2open'][test['cname1'][j]][2]+'</td></tr>')
				$('.o2ogain').append('<tr><td>'+test['cname2'][j]+'</td><td data-tag="'+check(test['open2open'][test['cname2'][j]][1])+'">'+test['open2open'][test['cname2'][j]][1]+'</td><td data-tag="'+check(test['open2open'][test['cname2'][j]][0])+'">'+test['open2open'][test['cname2'][j]][0]+'</td><td>'+test['open2open'][test['cname2'][j]][2]+'</td></tr>')
				$('.o2cgain').append('<tr><td>'+test['cname3'][j]+'</td><td data-tag="'+check(test['open2close'][test['cname3'][j]][1])+'">'+test['open2close'][test['cname3'][j]][1]+'</td><td data-tag="'+check(test['open2close'][test['cname3'][j]][0])+'">'+test['open2close'][test['cname3'][j]][0]+'</td><td>'+test['open2close'][test['cname3'][j]][2]+'</td></tr>')
			}
						for(var b=0;b<tmpnew.length;b++){
	$('.mytablen').append('<tr><td>'+tmpnew[b]+'</td><td>'+test['com'][tmpnew[b]]+'</td></tr>');
}
	
					
			  });
		  });
			
         }); 


	
	
		 
      </script> 
   
   </head> 
    <head>
        <meta charset="UTF-8">
        <title>Reports</title>
            </head>
		<style>
img {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
   width: 200px; height: 100px;
}

[data-tag=Pass] {
  background-color: #CFFD92 ;
}

[data-tag=Fail] {
  background-color: #FEC7A7 ;
}

a:link {
  text-decoration: none;
}
body {
  margin: 30;
}
.center {
  margin: auto;
  width: 100%;
  border: 1px solid #6059B9;
  padding: 10px;
}
.phide
{
    cursor: pointer;
}
div.absolute {
  position: absolute;
  left:10px;
}

</style>  
   <body bgcolor="#F6F5F4" class="center"> 
 

<div>
<span class="1button">
<input type="button" value="Load" id="load">
</span>
<span class="Status">
</span>  
 </div>
<div id="preview"></div>
<div class="content">
		  <div id="mainbase">
			<div class="item">
              
					 <div class="mytable">
                                       
                    </div>
					
				
				 </div>	
		 </div>  
			
</div> 
 <div class="mytablen">
                                       
                    </div>




   </body> 
  
</html> 
