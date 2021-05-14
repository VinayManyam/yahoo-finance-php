<html> 
   <head> 
      <title>News</title> 
      <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="Chart.min.js"></script>	  
   
      <script type="text/javascript" language="javascript"> 
         $(document).ready(function() {
		 
       $("#load").click(function(event){
		   $(".item").not(':first').remove();
			nprinciple=$('#principle').val();			
	
			$.post(  
                  "data.php", 
                  { ndata: "reports"}, 
                  function(data) {
			test= JSON.parse(data);
			//alert(test['close2close'][test['cname'][1]][0]);
			//alert(test['cname']);
			//alert(test['c2cmavg'][test['cname'][0]][0]);
for(var i=0;i<test['cname'].length;i++){
//	$("#preview").prepend('<br>'+test['cname'][i]);
	
		var clone = $("#mainbase .item").clone().attr('id',test['cname'][i]);
    $(".title", clone).html('<a target="_blank" href="' + test['cname'][i] +'">'+test['cname'][i]+'</a>')
	var table_body="";
	
	for(var j=0;j<test['cdate'].length;j++){
                
                table_body +='<th>'+test['cdate'][j]+'</th>';
                
            }
			function squantity(){
				var val=test['openprize'][test['cname'][i]][0];
				var q=Math.floor(nprinciple/val);
						return q;
			}
			
	quantity=squantity();
	$(".mytable", clone).html('<table border="1" class="'+test['cname'][i]+i+'"><thead><th>'+test['openprize'][test['cname'][i]][0]+'</th>	&nbsp;<th>'+quantity+'</th><th>Gain %</th><th>Lavg.</th><th></th>'+table_body+'</thead></table>')
	$(".myCharttable", clone).html('<table  style="width: 100%;" class="'+test['cname'][i]+i+'1"><thead><th></th><th><canvas id="'+test['cname'][i]+i+'myChart" style="max-width:350px"></canvas></th><th><canvas id="'+test['cname'][i]+i+i+'myChart1" style="max-width:350px"></canvas></th></thead></table>')
	$(".myCharttable1", clone).html('<table  style="width: 100%;" class="'+test['cname'][i]+i+'2"><thead><th></th><th><canvas id="'+test['cname'][i]+i+i+'myChart2" style="max-width:350px"></canvas></th><th><canvas id="'+test['cname'][i]+'openprize" style="max-width:350px"></canvas></th></thead></table>')
	
	//$(".myChart", clone).html('<canvas id="'+test['cname'][i]+i+'myChart" style="width:50%;max-width:400px"></canvas>')
	//$(".myChart1", clone).html('<canvas id="'+test['cname'][i]+i+i+'myChart1" style="width:50%;max-width:400px"></canvas>')
	var table1="";var table2="";var table3="";var table4="";var table5="";var table6="";
	
		$(".content").append(clone)
			for(var j=0;j<test['cdate'].length;j++){
				var tmv="";
				if(test['close2close'][test['cname'][i]][j]>0){ tmv="Pass";}else{ tmv="Fail"}
                 table1 +='<td data-tag="'+tmv+'">'+test['close2close'][test['cname'][i]][j]+'</td>';
				 	if(test['open2close'][test['cname'][i]][j]>0){ tmv="Pass";}else{ tmv="Fail"}
                 table2 +='<td data-tag="'+tmv+'">'+test['open2close'][test['cname'][i]][j]+'</td>';
				 	if(test['open2open'][test['cname'][i]][j]>0){ tmv="Pass";}else{ tmv="Fail"}
                 table3 +='<td data-tag="'+tmv+'">'+test['open2open'][test['cname'][i]][j]+'</td>';
             	if(test['close2open'][test['cname'][i]][j]>0){ tmv="Pass";}else{ tmv="Fail"}
                 table4 +='<td data-tag="'+tmv+'">'+test['close2open'][test['cname'][i]][j]+'</td>';
				 if(test['c2cmavg'][test['cname'][i]][j]>0){ tmv="Pass";}else{ tmv="Fail"}
                 table5 +='<td data-tag="'+tmv+'">'+test['c2cmavg'][test['cname'][i]][j]+'</td>';
				 
					
            }
			
			function check(val) {
				var tmv="";if(val>0){ tmv="Pass";}else{ tmv="Fail"}		
				return tmv; }
			var O2Oavg=0; var C2Oavg=0; var O2Cavg=0; var C2Cavg=0; var C2Cmavgavg=0;
			for(var b=0;b<4;b++){
				O2Oavg +=test['open2open'][test['cname'][i]][b];
				C2Oavg +=test['close2open'][test['cname'][i]][b];
				O2Cavg +=test['open2close'][test['cname'][i]][b];
				C2Cavg +=test['close2close'][test['cname'][i]][b];
				C2Cmavgavg +=test['c2cmavg'][test['cname'][i]][b];
			}
			O2Oavg=O2Oavg/5;
			C2Oavg=C2Oavg/5;
			O2Cavg=O2Cavg/5;
			C2Cavg=C2Cavg/5;
			C2Cmavgavg=C2Cmavgavg/5;
			function calgain(val){
				var newamount=quantity*val;
					return newamount.toFixed(2);
			}
			function calgainper(val){
				var lpt=test['openprize'][test['cname'][i]][0];
					var newamount=quantity*val;
					var amount=lpt*quantity;
					var per=(newamount/amount)*100;
					return per.toFixed(2);
			}
			var O2Oavggainper=calgainper(O2Oavg.toFixed(2))
			var C2Oavggainper=calgainper(C2Oavg.toFixed(2))
			var O2Cavggainper=calgainper(O2Cavg.toFixed(2))
			var C2Cavggainper=calgainper(C2Cavg.toFixed(2))
			var C2Cmavgavggainper=calgainper(C2Cmavgavg.toFixed(2))
			
			$('.'+test['cname'][i]+i+'').append('<tr><td>O2O</td><td data-tag="'+check(O2Oavg)+'">'+calgain(O2Oavg.toFixed(2))+'</td><td data-tag="'+check(O2Oavggainper)+'">'+O2Oavggainper+'%</td><td data-tag="'+check(O2Oavg)+'">'+O2Oavg.toFixed(2)+'</td><td> </td>'+table3+'</tr>');
			$('.'+test['cname'][i]+i+'').append('<tr><td>C2O</td><td data-tag="'+check(C2Oavg)+'">'+calgain(C2Oavg.toFixed(2))+'</td><td data-tag="'+check(C2Oavggainper)+'">'+C2Oavggainper+'%</td><td data-tag="'+check(C2Oavg)+'">'+C2Oavg.toFixed(2)+'</td><td> </td>'+table4+'</tr>');
			$('.'+test['cname'][i]+i+'').append('<tr><td>O2C</td><td data-tag="'+check(O2Cavg)+'">'+calgain(O2Cavg.toFixed(2))+'</td><td data-tag="'+check(O2Cavggainper)+'">'+O2Cavggainper+'%</td><td data-tag="'+check(O2Cavg)+'">'+O2Cavg.toFixed(2)+'</td><td> </td>'+table2+'</tr>');
			$('.'+test['cname'][i]+i+'').append('<tr><td>C2C</td><td data-tag="'+check(C2Cavg)+'">'+calgain(C2Cavg.toFixed(2))+'</td><td data-tag="'+check(C2Cavggainper)+'">'+C2Cavggainper+'%</td><td data-tag="'+check(C2Cavg)+'">'+C2Cavg.toFixed(2)+'</td><td> </td>'+table1+'</tr>');
			$('.'+test['cname'][i]+i+'').append('<tr><td>C2Cmavg</td><td data-tag="'+check(C2Cmavgavg)+'">'+calgain(C2Cmavgavg.toFixed(2))+'</td><td data-tag="'+check(C2Cmavgavggainper)+'">'+C2Cmavgavggainper+'%</td><td data-tag="'+check(C2Cmavgavg)+'">'+C2Cmavgavg.toFixed(2)+'</td><td> </td>'+table5+'</tr>');
			//$('.'+test['cname'][i]+i+'').append('<tr><td>c2cavg</td>'+table6+'</tr>');
			var xValues =test['cdate'].reverse();


new Chart(test['cname'][i]+'openprize', {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{ 
      data: test['openprize'][test['cname'][i]].reverse(),
      borderColor: "blue",
      fill: false
    }	
	]
  },
  options: {
    legend: {display: false}
  }
});


			
new Chart(test['cname'][i]+i+i+'myChart2', {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{ 
      data: test['c2cmavg'][test['cname'][i]].reverse(),
      borderColor: "Green",
      fill: false
    }	
	]
  },
  options: {
    legend: {display: false}
  }
});


new Chart(test['cname'][i]+i+i+'myChart1', {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{ 
      data: test['close2close'][test['cname'][i]].reverse(),
      borderColor: "Green",
      fill: false
    },{ 
      data: test['open2open'][test['cname'][i]].reverse(),
      borderColor: "blue",
      fill: false
    }	
	]
  },
  options: {
    legend: {display: false}
  }
});


new Chart(test['cname'][i]+i+'myChart', {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{ 
      data: test['open2close'][test['cname'][i]].reverse(),
      borderColor: "green",
      fill: false
    },{ 
      data: test['close2open'][test['cname'][i]].reverse(),
      borderColor: "brown",
      fill: false
    }	
	]
  },
  options: {
    legend: {display: false}
  }
});


			
	
}
		
			  }); 
			   }); 
 
		 });


	
		 
      </script> 
   
   </head> 
    <head>
        <meta charset="UTF-8">
        <title>News updates</title>
            </head>
		<style>
img {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
   width: 1px; height: 1px;
}
a:link {
  text-decoration: none;
}
[data-tag=Pass] {
  background-color: #CFFD92 ;
}

[data-tag=Fail] {
  background-color: #FEC7A7 ;
}
body {
  margin: 30;
}
.center {
  margin: auto;
  width: 95%;
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
   <body  class="center"> 
 
<input type="button" value="Load" id="load">
<input type="txt" value="20000" id="principle">
<div id="preview"></div>
<div class="content">
		  <div id="mainbase">
		  <div class="item">
                    <div class="post-head">
                        <h2 class="title"></h2>
                        <span class="pdate">
                    </div>
					 <div class="mytable">
                                       
                    </div>
					 <div class="myCharttable">
                                       
                    </div>
					 <div class="myCharttable1">
                                       
                    </div>
				
				 </div>	
				 </div>  
			
</div> 






   </body> 
  
</html> 
