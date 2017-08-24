<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<script src="/js/jquery-latest.js"></script>
	<script src="/js/bootstrap.js"></script>
	<link rel="stylesheet" href="/css/introjs.css">
	<link rel="stylesheet" href="/css/introjs-ct.css">
	<link rel="stylesheet" href="/css/animate.css"/>
	<link rel="stylesheet" href="/css/jquery-ui.css"/>
	<script src="/js/gs/TweenMax.min.js"></script>
	<script src='/js/intro.js'></script>
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<script src="/js/typewriting.min.js"></script>
	<script src="/js/jquery-ui-latest.js"></script>
	<title>Octal to Decimal Conversion</title>
</head>
<style>
#totaldiv {
	margin-top: 25px;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0.0;
	border-radius: 10px;
	font-size: 20px;
	position: relative;
	z-index: 9999999;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
}

#informationdiv {
	background-color: rgb(243, 235, 212);
    border-radius: 0px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 126px;
    margin-top: 30px;
    color: black;
}

#numberconversion {
    border: 1px solid Black;
    margin-top: 25px;
    text-align: left;
}

#numberconversiontitle {
	border: 1px solid Black;
    font-size: 15px;
    text-align: center;
    margin-top: 25px;
}

.color-brown {
	color: brown;
}

.color-purple {
	color: purple;
}

.color-yellow {
	color: yellow;
}

#calculationTable {
	border: 1px solid black;
	height: 275px;
	margin-top: 30px;
	border-radius: 6px;
	background-color: #dcdcdc;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3); 
}

.box {
	background-color: #FFC300;
    border-radius: 5px;
    width:30px;
	height:30px;
	position:relative;
    display:inline-block;
	box-shadow: 0 0 7px rgba(0, 0, 0, 0.3);
    border-radius: 2px; 
	margin-left: 10px;
	line-height: 32px;
}

.box1 {
	background-color: #DAF7A6;
    border-radius: 5px;
    width:30px;
	height:30px;
	position:relative;
    display:inline-block;
	box-shadow: 0 0 7px rgba(0, 0, 0, 0.3);
    border-radius: 2px; 
	margin-left: 10px;
	line-height: 32px;
}

.color-lightrose {
	color: #990033;
}

.color-yellow {
	color: yellow;
}

.color-green {
	color: green;
}

.color-red {
	color: red;
}

.color-red {
	color: red;
}


</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Octal<sub>(<span id="radix8">8</span>)</sub> to Decimal<sub>(<span id="radix10">10</span>)</sub> Conversion</span>
</div>

<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-6 col-xs-offset-3 visibility-hidden'>
		<ul id='defination'></ul>
	</div>
</div>

<div class="col-xs-12 " id="totalbox">
	<table class='col-xs-6 col-xs-offset-3 visibility-hidden' id="numberconversion">
			    <tr>
			    	<td style="background-color: #8FBC8F;"></td>
					<td class="numberconversiontitle" style="background-color: #2e8b57; color: white; border:1px solid black; text-align: center"><b>MSB</b></td>
					<td class="numberconversiontitle" colspan="6" style="background-color: #8fbc8f; border:1px solid black; color: white; text-align: center"><b>Binary Digit</b></td>
					<td class="numberconversiontitle" style="background-color: #2e8b57; color: white;  border:1px solid black; text-align: center"><b>LSB</b></td>
				</tr>
				<tr >
					<td class="numberconversiontitle" style="background-color: #8FBC8F; color: white;  border:1px solid black; text-align: center"><b>Octal</b></td>
					<td id="numberconversiontitle"><span class=''><b>7</b></span></td>
					<td id="numberconversiontitle"><span class=''><b>6</b></span></td>
					<td id="numberconversiontitle"><span class=''><b>5</b></span></td>
					<td id="numberconversiontitle"><span class=''><b>4</b></span></td>
					<td id="numberconversiontitle"><span class=''><b>3</b></span></td>
					<td id="numberconversiontitle"><span class=''><b>2</b></span></td>
					<td id="numberconversiontitle"><span class=''><b>1</b></span></td>
					<td id="numberconversiontitle"><span class=''><b>0</b></span></td>
				</tr>
				<tr >
					<td class="numberconversiontitle" style="background-color: #8FBC8F; color: white;  border:1px solid black; text-align: center"><b>Place Values</b></td>
					<td id="numberconversiontitle">8<sup>7</sup></td>
					<td id="numberconversiontitle">8<sup>6</sup></td>
					<td id="numberconversiontitle">8<sup>5</sup></td>
					<td id="numberconversiontitle">8<sup>4</sup></td>
					<td id="numberconversiontitle">8<sup>3</sup></td>
					<td id="numberconversiontitle">8<sup>2</sup></td>
					<td id="numberconversiontitle">8<sup>1</sup></td>
					<td id="numberconversiontitle">8<sup>0</sup></td>
				</tr>
				<tr>
					<td class="numberconversiontitle" style="background-color: #8FBC8F; color: white;  border:1px solid black; text-align: center"><b>Decimal</b></td>
					<td id="numberconversiontitle" class='color-brown'>2097152</td>
					<td id="numberconversiontitle" class='color-brown'>262144</td>
					<td id="numberconversiontitle" class='color-brown'>32768</td>
					<td id="numberconversiontitle" class='color-brown'>4096</td>
					<td id="numberconversiontitle" class='color-brown'>512</td>
					<td id="numberconversiontitle" class='color-brown'>64</td>
					<td id="numberconversiontitle" class='color-brown'>8</td>
					<td id="numberconversiontitle" class='color-brown'>1</td>
				</tr>
	</table>
</div>

<div id="conversiondiv" class="row text-center col-xs-12">
			<div id="inputDiv" class="col-sm-6 col-sm-offset-3 opacity00" style="margin-top: 25px">
				<span class='font-size-16'><span class='color-purple'>Octal Value</span> <b>:</b></span>&nbsp;&nbsp;&nbsp;<input
					class="index-textbox-size text-center" type="text" name="binaryValue"
					id="octalValue" placeholder="Octal Value" Maxlength='3'  >&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success disabled opacity40" id="convert">
					<i class="fa fa-arrow-right"></i> Convert to Decimal </button>
			</div>
		</div>
		
<div id='calculationTable' class='col-xs-12 col-xs-offset-4 col-xs-4 visibility-hidden'>
	<div  id='octalValuesDiv' class='col-xs-12 opacity00' style='margin-top: 25px;'>
		<span class='col-xs-5'  style='font-size: 15px;' id='octalValuesText'><span class='color-lightrose'>Octal Value</span> <b>:</b></span>
		<span class='col-xs-7' style='display: block; height: 32px;' id='octalValuesGet'></span>
	</div>
	
	<div id='powerValuesDiv' class='col-xs-12 opacity00' style='margin-top: 20px;'>
		<span class='col-xs-5' style='font-size: 15px;' id='powerValuesText'><span class='color-lightrose'>Place Values</span> <b>:</b></span>
		<span class='col-xs-7'  id='powerValuesGet'></span>
	</div>
	
	<div id='multiplyPowerWithOctal' class='col-xs-12 ' style='margin-top: 20px'>
		<span style='font-size: 15px;' class='col-xs-4'></span>
		<span id='powerWithOctal' class='col-xs-8'></span>
	</div>
	
	<div id='multiplyGetDiv' class='col-xs-12 opacity00' style='margin-top: 16px'>
		<span class='col-xs-4'></span>
		<span id='multiplyResultGet' class='col-xs-8'></span>
	</div>
	
	<div id='multiplytoAddGetDiv' class='col-xs-12 opacity00' style='margin-top: 16px'>
		<span class='col-xs-4'></span>
		<span id='multiplytoAddResultGet' class='col-xs-8'></span>
	</div>
	
	<div id='resultDiv' class='col-xs-12 opacity00' style='margin-top: 16px'>
		<span class='col-xs-4 color-lightrose' style='font-size: 15px;' >Result<b>:</b></span>
		<span id='addResultGet' class='col-xs-8'></span>
	</div>
</div>

<div class="button col-xs-12 text-center " id="button">
	<button class="btn btn-success glyphicon glyphicon-refresh opacity00" type="button" id='restartBtn' style='margin-top:8px'>Restart</button>
</div>
</body>
<script>
var valuelength;
var numberlength;
var p;
var x ;
$(document).ready(function() {
	intro = introJs();
	$('#restartBtn').click(function() {
		location.reload();
		});
	$("body").keypress(function(e) {
		 if (e.which === 13) {
			 e.preventDefault();
			}
	});
	intro.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		
		steps :	[{
			element :'#title',
			intro :'',
			position:"bottom"
		},{
			element :'#informationdiv',
			intro :'',
			position:"right" 
		},{
			element :'#numberconversion',
			intro :'',
			position:"right" 
		},{
			element :'#inputDiv',
			intro :'',
			position:"right" 
		},{
			element :'#octalValuesDiv',
			intro :'',
			position:"right" 
		},{
			element :'#powerValuesDiv',
			intro :'',
			position:"right" 
		},{
			element :'#multiplyPowerWithOctal',
			intro :'',
			position:"right"  
		},{
			element :'#multiplyGetDiv',
			intro :'',
			position:"right"
		},{
			element :'#multiplytoAddGetDiv',
			intro :'',
			position:"right" 
		},{
			element :'#resultDiv',
			intro :'',
			position:"right"
		},{
			element :'#restartBtn',
			intro :'',
			position:"right"
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "informationdiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#informationdiv").removeClass("visibility-hidden");
			typing('#informationdiv',"<ul><li>The <b class='color-green'>Octal</b> numeral system or <b class='color-green'>Oct</b> for short, is the base-8 number system and uses the digits"+
					" <b clas='color-green'>0</b> to <b class='color-green'>7</b>.</li><li> This conversion can be done by adding the multiplication of each digit of octal number with its increasing power of "+
					"<span class = 'color-green'>8</span> from right to left.</li><li>Here we convert a octal number to an equivalent decimal number the value of the numbers will be same in the respective number system.</li></ul>" ,function() {
		  			
		  				typing('.introjs-tooltiptext', "Introduction about Octal to Decimal Conversion.", function() {  
							$('.introjs-nextbutton').show();
				  			});
					});
				});
		break;
		case "numberconversion" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberconversion').removeClass('visibility-hidden');
		  		typing('.introjs-tooltiptext',"This is representation of each Octal digit into Decimal form." ,function() { 
					$('.introjs-nextbutton').show();	
				  	});
				});
		break;
		case "inputDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#inputDiv').removeClass('opacity00');
		  		typing('.introjs-tooltiptext',"Enter an octal value and click the '<span class='color-yellow'>Convert to Decimal</span>' button to see how the octal to Decimal conversion is done</span>.<br><span class='color-yellow'>Note:</span> Enter a value of maximum length <span class='color-yellow'>3</span>." ,function() { 
				  });
				});
		break;
		case "octalValuesDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#calculationTable').removeClass('visibility-hidden');
				$('#octalValuesDiv').removeClass('opacity00');
				$('.box').removeClass('opacity00');
				TweenMax.staggerFrom(".box", 1.2, {opacity:0, top: -60}, -0.5, function() {
		  		typing('.introjs-tooltiptext',"Consider each octal digit as a seperate digit." ,function() { 
					$('.introjs-nextbutton').show();	
				  });
				});
			});
		break;
		case "powerValuesDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#powerValuesDiv').removeClass('opacity00');
				$('.box1').removeClass('opacity00');
				TweenMax.staggerFrom(".box1", 1.2, {opacity:0, top: -60}, -0.5, function() {
		  		typing('.introjs-tooltiptext',"In the octal number system the power of each digit increased by a factor of <span class='ct-code-b-yellow'>8</span>, then the first digit starts from the power of <span class='ct-code-b-yellow'>8<sup>0</sup></span>." ,function() { 
					$('.introjs-nextbutton').show();	
				  });
				});
			});
		break; 
		case "multiplyPowerWithOctal" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#octalValuesDiv').removeClass('opacity00');
				calculate(function() {
		  			typing('.introjs-tooltiptext',"Multiply your octal values with in respective position with <span class='ct-code-b-yellow'>8</span> to the power of there position, which is starts from <span class='ct-code-b-yellow'>Zero</span>. " ,function() { 
						$('.introjs-nextbutton').show();
		  			});	
				});
			});
		break;
		case "multiplyGetDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#multiplyGetDiv').removeClass('opacity00');
				power(function() {
		  			typing('.introjs-tooltiptext',"multiply the powers for example: <span class='ct-code-b-yellow'>8<sup>2</sup> = 8x8 = 64</span>." ,function() { 
						$('.introjs-nextbutton').show();
		  			});	
				});
			});
		break;
		case "multiplytoAddGetDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#multiplytoAddGetDiv').removeClass('opacity00');
				poweradd();
		  			typing('.introjs-tooltiptext',"By adding together all the decimal number values from right to left we can form a decimal number." ,function() { 
						$('.introjs-nextbutton').show();
		  			});	
				});
		break;
		case "resultDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#resultDiv').removeClass('opacity00');
				addition();
				setTimeout(function() {
			  		typing('.introjs-tooltiptext',"After convertion the decimal value is  <span class='color-red'>" +  $('#addResultGet').html()  + "</span>." ,function() { 
							$('.introjs-nextbutton').show();
			  			});	
				},1000)
				});
		break;
		case "restartBtn":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#restartBtn").removeClass("opacity00");
				typing('.introjs-tooltiptext', "Click to restart.", function() {
					});
					$('.introjs-nextbutton').hide();
					$('#octalValue').val("");
				});
		break;
		}
	});

	intro.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	typing('.introjs-tooltiptext',"Here we are converting a number of the base <span class='color-yellow'>8</span> to the equivalent number of the base <span class='color-yellow'>10</span>.",function() {
		$('.introjs-nextbutton').show();
		});	
	});
	$("#octalValue").keydown(function(e) {
		if (e.which == 46 || (e.which >= 48 && e.which <= 55) ||(e.which >= 96 && e.which <= 103) || e.which == 8 || e.which == 46 ) {
			return true;
		} else {
			e.preventDefault();
			}
		});
	
	$("#convert").click(function() {
		if ($('#convert').hasClass('disabled')) {
			return;
		}
		 numberlength = $('#octalValue').val().length;
		 p = numberlength - 1;
		 
		valuelength = $("#octalValue").val();
		$('.introjs-nextbutton').click();
		for (var i=0; i<valuelength.length; i++) {
			$("#octalValuesGet").append("<span id= octal"+i+ " class='box  opacity00 text-center ct-code-b-black '><span id= octalNumbers"+ i +">"+ valuelength[i] +"</span></span>");
		}
		
		for (var i= valuelength.length - 1, j = 0; i >= 0; i--, j++) {
		$("#powerValuesGet").append("<span class='box1  text-center ct-code-b-black'>" +
				"<span id= powervalues" +i+ ">" + 8 +"<sup class='color-brown'>"+ i +"</sup></span></span>");
		
		if (i > 0) {
			$("#powerWithOctal").append("<span id = 'overall"+i+"'><span id = 'bracket" + i +"' class = 'bracket color-lightrose opacity00'>(</span>"+ 
					"<span id = 'total" + i + "' class='total'>"+ 
					"<span id= octalNumberGet"+j+ " class='ct-code-b-black opacity00'>"+ valuelength[j] +"</span>"+
					"<b id = 'intoSymbol" + i +"'class='color-red opacity00'> x </b></span> "+ 
					"<span id = 'powerv" + i + "' class= 'ct-code-b-black opacity00'>" + 8 +"<sup class='ct-code-b-green'>"+ i +"</sup></span>" +
					"<span id = 'bracket2" + i +"'  class = 'bracket color-lightrose opacity00'>)</span></span><span id = 'plus" + i + "' class = 'color-green plus opacity00'> + </span>");
        } else {
        	$("#powerWithOctal").append("<span id = 'overall" + i +"'><span id = 'bracket" + i +"' class = 'bracket color-lightrose opacity00'>(</span>" + 
        			"<span id = 'total" + i +"' class = 'total'><span id= octalNumberGet"+j+ " class='ct-code-b-black opacity00'>"+ valuelength[j] +"</span>" +
        			"<b id = 'intoSymbol" + i +"' class='color-red opacity00'> x </b></span> "+ 
        			"<span id='powerv" + i +"' class='ct-code-b-black opacity00'>" + 8 +"<sup class='ct-code-b-green'>"+ i +"</sup></span>" +
        			"<span id = 'bracket2" + i +"'class = 'bracket color-lightrose opacity00'>)</span></span>");
        			
        	} 
		}
	
		for (var i = valuelength.length - 1, j=0; i >= 0; i--, j++) {
			var result = Math.pow(8, i);
			console.log(result);
			if (i > 0) {
				$("#multiplyResultGet").append("<span id = 'multiplytotal" + i + "'class = multiplytotal'><span id = 'bracket3" + i + "' class = 'bracket3 opacity00 bracket color-lightrose '>(</span><span class= 'onemultiply opacity00' id = 'onemultiply" + i + "'>"+
						"<span id= c"+j+ " class='ct-code-b-black'>"+ valuelength[j] +"</span><span class='box3 text-center' ><b class='color-red into' > x </b></span></span>" +
						"<span id = 'getMultiple" + i + "'class = 'result opacity00'>" + result + "</span>"+
						"<span id = 'bracket4" + i + "' class = 'color-lightrose bracket4 opacity00'>)</span></span><span id = 'plus1" + i + "' class = 'plus1 opacity00 color-green'>  + </span>");
	       	} else {
	       		$("#multiplyResultGet").append("<span id = 'multiplytotal" + i + "'class = multiplytotal'><span id = 'bracket3"+ i +"' class = 'bracket3 color-lightrose opacity00'>(</span><span class= 'onemultiply opacity00' id = 'onemultiply" + i + "'><span id= c"+j+ " class='ct-code-b-black'>"+ valuelength[j] +"</span>"+
	       				"<span class='box3 text-center' ><b class='color-red into' > x </b></span></span>" +
						"<span id = 'getMultiple" + i + "'class = 'result opacity00'>" + result + "</span><span id = 'bracket4"+ i +"' class = 'bracket4 color-lightrose opacity00'>)</span></span>");
			}
		}
		
		for (var i = valuelength.length - 1, j=0; i >= 0; i--, j++) {
			var result = Math.pow(8, i);
			var multiply = valuelength[j] * result;
 			if (i > 0) {
 				$("#multiplytoAddResultGet").append("<span id = 'multiplytwo" + i + "' class = 'multiplytwo opacity00'>(<span class='box4 text-center ct-code-b-black' id = multiplyToAdd" + i + ">"+multiply+"</span>)</span></span><span id = 'plus2" + i +"'class = 'plus2 opacity00 color-green'>  + </span>");		
 				
 			} else {
 				$("#multiplytoAddResultGet").append("<span id = 'multiplytwo" + i + "' class = 'multiplytwo opacity00'>(<span class='box4 text-center ct-code-b-black' id = multiplyToAdd" + i + ">"+multiply+"</span>)</span></span>");
 			}
		}
		
		var sum = 0;
		for (var i = valuelength.length - 1, j=0; i >= 0; i--, j++) {
			var result = Math.pow(8, i);
			var multiply = valuelength[j] * result;
			sum = sum + multiply;
			if (i == 0) {
				$("#addResultGet").append("<span><span class=' text-center ct-code-b-blue' id = add" + i + ">("+sum+")<sub id='radix'>(<span class='ct-code-b-green'id='radix'>" +10 +"</span>)</sub></span></span>");
				}
			}
		});

	$("#octalValue").keyup(function() {
		var yourInput = $(this).val();
		re = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi;
		var isSplChar = re.test(yourInput);
		if(isSplChar)
		{
			var no_spl_char = yourInput.replace(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, '');
			$(this).val(no_spl_char);
		}
		if ($("#octalValue").val().length > 0) {
			$("#convert").removeClass("disabled").removeClass("opacity40");
		} else {
			$("#convert").addClass("disabled").addClass("opacity40");
			}
		});
	
	var t = 0;
	function calculate(callBackFunction) {
		if (p >= 0 && t < valuelength.length) {
	  	TweenMax.to("#bracket2" + t, 0.4 , {opacity:1, onComplete: function() {
	       $("#bracket2" + t).removeClass("opacity00"); 
	       var s = $("#powervalues" + t).offset()
	       $("#powerv" + t).offset({"top": s.top,"left": s.left});
	       $("#powervalues" + t).effect('highlight',  {color: "#F08080"}, 3000);
	       TweenMax.to("#powerv"+ t, 0.7, {Color:"blue", opacity:1, top: 0, left: 0, onComplete:function() {
	          TweenMax.to("#intoSymbol" + t, 0.4 , {opacity:1, onComplete: function() {
	          	$("#intoSymbol" + t).removeClass("opacity00");
	          	var s = $("#octalNumbers" + p).offset()
	          	$("#octalNumberGet" + p).offset({"top": s.top,"left": s.left});
	          	$("#octalNumberGet" + p).removeClass("opacity00");
	          	$("#octalNumbers" + p).effect('highlight',  {color: "#F08080"}, 3000);
	          	TweenMax.to("#octalNumberGet"+ p, 0.7, { opacity:1, top: 0, left: 0, onComplete:function() {
	            	TweenMax.to("#bracket" + t, 0.4 , {opacity:1, onComplete: function() {
	 		 		$("#bracket" + t).removeClass("opacity00");
	            	TweenMax.to("#plus" + (t+1), 0.5, {opacity:1, onComplete: function() {
	              		$("#plus" + (t+1)).removeClass("opacity00");
					 	t++;
					 	p--;
				 		calculate(callBackFunction);
		 					}});
		 				}});
		 			}});
		 		}});		
	  		}});
		}});
  	   } else {
	   		if(typeof callBackFunction === "function") {
	  	    		callBackFunction();
    		}
		}
	}
	
	var q = 0;
	function power(callBackFunction) {
		if (q < valuelength.length) {
			$("#fourthbox").removeClass("visibility-hidden");
			var l4 = $("#total" + q).offset();
		    $("#onemultiply" + q).offset({"top": l4.top,"left": l4.left});
		    var l5 = $("#powerv" + q).offset();
		    $("#getMultiple" + q).offset({"top": l5.top,"left": l5.left});
		 	TweenMax.to("#bracket4" + q, 0.4 , {opacity:1, onComplete: function() {
				$("#bracket4" + q).removeClass("opacity00");
				$("#getMultiple" + q).removeClass("opacity00");
				$("#getMultiple" + q).effect('highlight',  {color: "#F08080"}, 1000);
				TweenMax.to("#getMultiple"+ q, 0.7, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
				 	$("#onemultiply" + q).removeClass("opacity00");
				 	$("#total" + q).effect('highlight',  {color: "#F08080"}, 3000);
					TweenMax.to("#onemultiply"+ q, 0.7, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
						TweenMax.to("#bracket3" + q, 0.4 , {opacity:1, onComplete: function() {
							$("#bracket3" + q).removeClass("opacity00");
							TweenMax.to("#plus1" + (q+1), 0.4 , {opacity:1, onComplete: function() {
								$("#plus1" + (q+1)).removeClass("opacity00");
								q++;
			  					power(callBackFunction);
							}});
						}});
		 			 }});
			 	}});
		 	}});
		} else {
				console.log("else statemenet");
				if(typeof callBackFunction === "function") {
					console.log("callbackfunction");
	   			callBackFunction();
	   			}
		}
	}
	
	var s = 0;
	function poweradd() {
		 if (s < valuelength.length) {
		$("#fifthbox").removeClass("visibility-hidden");
		var l6 = $("#multiplytotal" + s).offset();
	    $("#multiplytwo" + s).offset({"top": l6.top,"left": l6.left});
	 	$("#multiplytwo" + s).removeClass("opacity00");
	 	$("#multiplytotal" + s).effect('highlight',  {color: "#F08080"}, 1000);
		TweenMax.to("#multiplytwo"+ s, 0.7, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			TweenMax.to("#plus2" + (s+1), 0.4 , {opacity:1, onComplete: function() {
				$(".plus2" + (s+1)).removeClass("opacity00");
			 	s++;
	  			poweradd();
	  			}});
			}});
		}
	}
	
	var a = 0;
	function addition() {
		 if (a < valuelength.length) {
		$("#resultDiv").removeClass("opacity00");
		var l7 = $("#multiplytoAddResultGet").offset();
	    $("#add" + a).offset({"top": l7.top,"left": l7.left});
	 	$("#add" + a).removeClass("opacity00");
	 	$("#multiplytoAddResultGet").effect('highlight',  {color: "#F08080"}, 1000);
		TweenMax.to("#add"+ a, 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			 a++;
			addition();
	  		}});
	      }
	}
	
	function typing(selector, text, callBackFunction) {
		var typingSpeed = 10;
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			$(".introjs-nextbutton").removeClass("opacity00");
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		})
	}
</script>
</html>