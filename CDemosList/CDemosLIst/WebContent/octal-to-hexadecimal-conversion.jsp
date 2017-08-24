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
    <title>octal to hexadecimal</title>
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
	background-color: #EAF6B6;
    border-radius: 0px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 125px;
    margin-top: 30px;
    color: black;
}

#numberconversion {
    border: 1px solid Black;
    margin-top: 10px;
    text-align: left;
}

#numberconversiontitle {
	border: 1px solid Black;
    font-size: 15px;
    text-align: center;
    margin-top: 25px;
}

.color-brown {
	color: #DF013A;
}

.color-purple {
	color: purple;
}

#calculationTable {
	border: 1px solid black;
	height: 280px;
	margin-top: 20px;
	border-radius: 6px;
	background-color: #bccf88;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3); 
}

.box {
	background-color: #FFAABE;
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
	background-color: #cafaca;
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

#divideBinaryNumbersDiv {
	height: 21px !important;
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

.color-coral {
	color: #A80031;
}

#groupOfFourDivideSpan {
	top: 0px !important;
}
</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Octal<sub>(<span id="radix8">8</span>)</sub> to Hexadecimal<sub>(<span id="radix2">16</span>)</sub> Conversion</span>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-8 col-xs-offset-2 visibility-hidden'>
	</div>
</div>
<div class="col-xs-12" id="totalbox" style='margin-top: 10px'>
	<table id="numberconversion1" class='col-xs-offset-4 col-xs-4 visibility-hidden'>
			    <tr>
			    	<td style= "border:1px solid black; background-color: #2E8B57;"></td>
					<td class="numberconversiontitle" style="background-color: #2E8B57; color: white; border:1px solid black; text-align: center"><b></b></td>
					<td class="numberconversiontitle" colspan="6" style="background-color: white; border:1px solid black; color: black; text-align: center"><b>Binary Digit</b></td>
					<td class="numberconversiontitle" style="background-color: #2E8B57; color: white;  border:1px solid black; text-align: center"><b></b></td>
				</tr>
				<tr >
					<td class="numberconversiontitle" style="background-color: #8FBC8F; color: white;  border:1px solid black; text-align: center"><b>Octal</b></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>0</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>1</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>2</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>3</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>4</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>5</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>6</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>7</b></span></td>
				</tr>
				<tr >
					<td class="numberconversiontitle" style="background-color: #8FBC8F; color: white;  border:1px solid black; text-align: center"><b>Binary</b></td>
					<td id="numberconversiontitle" class='color-brown'>000</td>
					<td id="numberconversiontitle" class='color-brown'>001</td>
					<td id="numberconversiontitle" class='color-brown'>010</td>
					<td id="numberconversiontitle" class='color-brown'>011</td>
					<td id="numberconversiontitle" class='color-brown'>100</td>
					<td id="numberconversiontitle" class='color-brown'>101</td>
					<td id="numberconversiontitle" class='color-brown'>110</td>
					<td id="numberconversiontitle" class='color-brown'>111</td>
				</tr>
	</table>
</div>
<div class="col-xs-12" id="totalbox">
	<table id="numberconversion" class='col-xs-offset-2 col-xs-8 visibility-hidden'>
			    <tr>
			    	<td style= "border:none; background-color: #2E8B57;"></td>
					<td class="numberconversiontitle" style="background-color: #2E8B57; color: white; border:1px solid black; text-align: center"><b></b></td>
					<td class="numberconversiontitle" colspan="14" style="background-color: white; border:1px solid black; color: black; text-align: center"><b>Binary Digit</b></td>
					<td class="numberconversiontitle" style="background-color: #2E8B57; color: white;  border:1px solid black; text-align: center"><b></b></td>
				</tr>
				<tr >
					<td class="numberconversiontitle" style="background-color: #8FBC8F; color: white;  border:1px solid black; text-align: center"><b>Binary</b></td>
					<td id="numberconversiontitle" class='color-brown'>0000</td>
					<td id="numberconversiontitle" class='color-brown'>0001</td>
					<td id="numberconversiontitle" class='color-brown'>0010</td>
					<td id="numberconversiontitle" class='color-brown'>0011</td>
					<td id="numberconversiontitle" class='color-brown'>0100</td>
					<td id="numberconversiontitle" class='color-brown'>0101</td>
					<td id="numberconversiontitle" class='color-brown'>0110</td>
					<td id="numberconversiontitle" class='color-brown'>0111</td>
					<td id="numberconversiontitle" class='color-brown'>1000</td>
					<td id="numberconversiontitle" class='color-brown'>1001</td>
					<td id="numberconversiontitle" class='color-brown'>1010</td>
					<td id="numberconversiontitle" class='color-brown'>1011</td>
					<td id="numberconversiontitle" class='color-brown'>1100</td>
					<td id="numberconversiontitle" class='color-brown'>1101</td>
					<td id="numberconversiontitle" class='color-brown'>1110</td>
					<td id="numberconversiontitle" class='color-brown'>1111</td>
				</tr>
				<tr >
					<td class="numberconversiontitle" style="background-color: #8FBC8F; color: white;  border:1px solid black; text-align: center"><b>Hexadecimal</b></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>0</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>1</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>2</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>3</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>4</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>5</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>6</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>7</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>8</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>9</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>A</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>B</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>C</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>D</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>E</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>F</b></span></td>
				</tr>
	</table>
</div>
<div id="conversiondiv" class="row text-center col-xs-12">
			<div id="inputDiv" class="col-sm-6 col-sm-offset-3 opacity00" style="margin-top: 20px">
				<span class='font-size-16'><span class='color-purple'>Octal Value</span> <b>:</b></span>&nbsp;&nbsp;&nbsp;<input
					class="index-textbox-size text-center" type="text" name="binaryValue"
					id="octalValue" placeholder="Octal Value" Maxlength='3'  >&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success disabled opacity40" id="convert">
					<i class="fa fa-arrow-right"></i> Convert to Hexadecimal </button>
			</div>
		</div>
		
<div id='calculationTable' class='col-xs-12 col-xs-4 col-xs-offset-4 visibility-hidden'>
		<div  id='octalValuesDiv' class='col-xs-12 opacity00' style='margin-top: 25px;'>
			<span class='col-xs-6'  style='font-size: 15px;' id='octalValuesText'><span class='color-lightrose'>Octal Value</span> <b>:</b></span>
			<span class='col-xs-6' style='display: block; height: 32px;' id='octalValuesGet'></span>
		</div>
		
		<div id='binaryValuesDiv' class='col-xs-12 opacity00' style='margin-top: 20px;'>
			<span class='col-xs-6' style='font-size: 15px;' id='binaryValuesText'><span class='color-lightrose'>Binary Digits</span> <b>:</b></span>
			<span class='col-xs-6'  id='binaryValuesGet'></span>
		</div>
		
		<div id='combineBinaryNumbers' class='col-xs-12 opacity00' style='margin-top: 20px'>
			<span style='font-size: 15px;' class='col-xs-6'><span class='color-lightrose'>Combine Binary Digits</span> <b>:</b></span>
			<span id='numbersCombine' class='col-xs-6 opacity00'></span>
		</div>
		
		<div id='divideBinaryNumbersDiv' class='col-xs-12 opacity00' style='margin-top: 18px;'>
			<div style='font-size: 15px;' class='col-xs-6' id='divideFourEachGroup'></div>
			<span id='divideBinaryNumbers' class='col-xs-6'></span>
		</div>
		
		<div id='divideGroupOfFourDiv' class='col-xs-12 opacity00' style='margin-top: 18px;'>
			<div style='font-size: 15px;' class='col-xs-6' id='divideGroupOfFour'><span class='color-lightrose'>Divide Binary Digits</span> <b>:</b></div>
			<span id='groupOfFourDivideSpan' class='col-xs-6 opacity00'></span>
		</div>
		
		<div id='binaryResult' class='col-xs-12 opacity00' style='margin-top: 18px;'>
			<div style='font-size: 15px;' class='col-xs-6'><span  class='color-lightrose'>Binary Result</span><b>:</b></div>
			<span id='binaryResultValue' class='col-xs-6'></span>
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
var q;
var s;
$(document).ready(function() {
	intro = introJs();
	$('#restartBtn').click(function() {
		 window.location.search = "?restart=1";
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
			tooltipClass: "hide",
			position:"right" 
		},{
			element :'#numberconversion1',
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
			element :'#binaryValuesDiv',
			intro :'',
			position:"right" 
		},{
			element :'#combineBinaryNumbers',
			intro :'',
			position:"right"
		},{
			element :'#divideBinaryNumbersDiv',
			intro :'',
			position:"right"  
		},{
			element :'#divideGroupOfFourDiv',
			intro :'',
			position:"right" 
		},{
			element :'#binaryResult',
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
		  		 typing('#informationdiv',"<ul><li>The <b class='color-green'>Octal</b> numeral system or <b class='color-green'>Oct</b> for short, is the base-8 number system and uses the digits <b clas='color-green'>0</b> to <b class='color-green'>7</b>.</li><li>Octal numerals can be converted into <b class='color-green'>binary</b> digits by "+
		  			"converting each Octal digit into binary of <span class='color-green'>three</span> digits and group them finally</span>.</li><li>When converting from octal to hexadecimal, it is often easier to first convert the octal number into binary and then from binary into hexadecimal.</li>"+
		  			"<li>The numbers with base16 comes under hexadecimal number system. The numbers in the hexadecimal system contains numbers and alphabets it uses numbers from <span class='color-green'>0-9</span> and alphabets from <span class='color-green'>A-F</span>. Denoted as <span class='color-green'>H16</span>.</li></ul>" ,function() {
	  					setTimeout(function(){
							intro.nextStep();
							}, 1000); 
					});
				});
		break;
		case "numberconversion1" :
			$("#octalValue").attr("disabled", true);
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberconversion1').removeClass('visibility-hidden');
		  		typing('.introjs-tooltiptext',"This chart representats of each Octal digit into Binary form." ,function() { 
					$('.introjs-nextbutton').show();	
				  	});
				});
		break;
		case "numberconversion" :
			$("#octalValue").attr("disabled", true);
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberconversion').removeClass('visibility-hidden');
		  		typing('.introjs-tooltiptext',"This chart represents of each Binary digit into Hexadecimal form." ,function() { 
					$('.introjs-nextbutton').show();	
				  	});
				});
		break;
		case "inputDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#inputDiv').removeClass('opacity00');
		  		typing('.introjs-tooltiptext',"Enter an octal value and click the 'Convert to Hexadecimal' button to see how the octal to hexadecimal conversion is done</span>.<br><span class='color-yellow'>Note:</span> Enter a value of maximum length 3." ,function() { 
		  			$("#octalValue").attr("disabled", false);
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
		  			typing('.introjs-tooltiptext',"Consider each octal digit as a seperate digit."+
		  					"<ul><li>Convert each Octal digit to a <span class='color-yellow'>three</span> digit binary number.</li></ul>" ,function() { 
						$('.introjs-nextbutton').show();	
				 	 });
				});
			});
		break; 
		case "binaryValuesDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#binaryValuesDiv').removeClass('opacity00');
				$('.box1').removeClass('opacity00');
				TweenMax.staggerFrom(".box1", 1.2, {opacity:0, top: -60}, -0.5, function() {
		  			typing('.introjs-tooltiptext',"Combine all the resulting binary groups (of three digit each) into a <span class='color-yellow'>single binary number</span>." ,function() { 
						$('.introjs-nextbutton').show();	
				 	 });
				});
			});
		break; 
		case "combineBinaryNumbers" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#combineBinaryNumbers').removeClass('opacity00');
				$('#numbersCombine').removeClass('opacity00');
				binary(function() {
				typing('.introjs-tooltiptext',"<ul><li>Drop any leading zeros or pad with leading zeros to get groups of four binary digits (bits).</li></ul>" ,function() { 
					$('.introjs-nextbutton').show();	
					});
				});
			});
		break; 
		case "divideBinaryNumbersDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#divideBinaryNumbersDiv').removeClass('opacity00');
					var r = 4 - $('#divideBinaryNumbers').text().length % 4
					if (r != 4) {
					  for(var i = 0; i < r; i++) {
					    $('#divideBinaryNumbers').prepend("0");
					  }
					}
					divideNumbers();
					var l = $("#numbersCombine").offset();
					$("#divideBinaryNumbers").effect('highlight',  {color: "#ff9900"}, 1000);
					$("#divideBinaryNumbers").offset({"top": l.top,"left": l.left});
					TweenMax.to("#divideBinaryNumbers", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		  				typing('.introjs-tooltiptext',"<ul><li>Divide the binary digits into <span class='color-yellow'>groups of four</span> (<span class='color-yellow'>starting from right</span>).</li></ul>" ,function() { 
		  					$('.introjs-nextbutton').show();
		  		 		});
				  	}});
				});
		break;
		case "divideGroupOfFourDiv" :
			$('#groupOfFourDivideSpan').append($('#divideBinaryNumbers').text());
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#divideGroupOfFourDiv').removeClass('opacity00');
				$('#groupOfFourDivideSpan').removeClass('opacity00');
					divideNumbersoffour();
					var  l = $('#octalValue').val().length;
					for (var i = 1; i <= l; i++) {
						var d = $("#divide" + i).text();
						var hex = parseInt(parseInt(d, 2).toString(10), 10).toString(16).toUpperCase();
						$('#binaryResultValue').append('<span class= "opacity00" id = "hexa' + i + '" >' + hex + '</span>'); 
					}
						division(function() {
		  					typing('.introjs-tooltiptext',"<ul><li>Convert binary digits into <span class='color-yellow'>hexadecimal</span>.</li></ul>" ,function() { 
		  						$('.introjs-nextbutton').show();
		  		 		});
				  	});
				});
		break;
		case "binaryResult" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#binaryResult').removeClass('opacity00');
 			 	result(function() {
	 				$('#sub').removeClass('opacity00'); 
		  			typing('.introjs-tooltiptext',"Hence, the hexadecimal equivalent of the given octal number is <pan class='color-red'>" + $('#binaryResultValue').html() + "<sub>16</sub></span>." ,function() { 
		  				$('.introjs-nextbutton').show();
		  		 		});
				  	});
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
	typing('.introjs-tooltiptext',"Here we are converting a number of the base <span class='color-yellow'>8</span> to the equivalent number of the base <span class='color-yellow'>16</span>.",function() {
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
		 q = numberlength;
		 s = numberlength;
		 
		valuelength = $("#octalValue").val();
		$('.introjs-nextbutton').click();
		for (var i=0; i<valuelength.length; i++) {
			$("#octalValuesGet").append("<span id='octal" + i + "' class='box  opacity00 text-center ct-code-b-black '><span id= octalNumbers"+ i +">"+ valuelength[i] +"</span></span>");
		}
		for (var i=0; i<valuelength.length; i++) {
			var finalBinaryVal = parseInt(valuelength[i]).toString(2);
			if (finalBinaryVal.length < 3) {
				if (finalBinaryVal.length == 1) finalBinaryVal = "00" +  finalBinaryVal;
				else if (finalBinaryVal.length == 2) finalBinaryVal = "0" +  finalBinaryVal;
			}
			$("#binaryValuesGet").append("<span id= 'binary" + i + "' class='box1 opacity00 text-center ct-code-b-black '><span id= binaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
		}
		
		for (var i=0; i<valuelength.length; i++) {
			var finalBinaryVal = parseInt(valuelength[i]).toString(2);
			if (finalBinaryVal.length < 3) {
				if (finalBinaryVal.length == 1) finalBinaryVal = "00" +  finalBinaryVal;
				else if (finalBinaryVal.length == 2) finalBinaryVal = "0" +  finalBinaryVal;
			}
			$("#numbersCombine").append("<span id='combineBinary" + i + "' class='text-center ct-code-b-black'><span class='opacity00' id= combineBinaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
		}
		
		for (var i=0; i<valuelength.length; i++) {
			var finalBinaryVal = parseInt(valuelength[i]).toString(2);
			if (finalBinaryVal.length < 3) {
				if (finalBinaryVal.length == 1) finalBinaryVal = "00" +  finalBinaryVal;
				else if (finalBinaryVal.length == 2) finalBinaryVal = "0" +  finalBinaryVal;
			}
				$("#divideBinaryNumbers").append(finalBinaryVal);
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
	
	 function divideNumbers() {
		var arr = $('#divideBinaryNumbers').text().split("")
		$('#divideBinaryNumbers').empty();
		var count = 0;
			$.each(arr, function(index, val) {
			  if (index % 4 == 0) {
			    count++;
			  }
			  if ($(".split" + count).length == 0) {
			    $('#divideBinaryNumbers').append("<span class='split" + count + "'>" + val + "</span>");
			  } else {
			    $(".split" + count).append(val)
			  }
			  
			});
		} 
	
	function divideNumbersoffour() {
		var arr = $('#groupOfFourDivideSpan').text().split("")
		$('#groupOfFourDivideSpan').empty();
		var count = 0;
			$.each(arr, function(index, val) {
			  if (index % 4 == 0) {
			    count++;
			  }
			  if ($("#divide" + count).length == 0) {
			   	  $('#groupOfFourDivideSpan').append("<span class='opacity00' id='divide" + count + "'>" + val + "</span>&emsp;");
			  } else {
			    $("#divide" + count).append(val)
			  }
			  
			});
		}
	
	function binary(callBackFunction) {
		if (p >= 0 ) {
			var s = $("#binaryDigits" + p).offset();
			$("#combineBinaryDigits" + p).effect('highlight',  {color: "#ff9900"}, 1000);
			$("#combineBinaryDigits" + p).offset({"top": s.top,"left": s.left});
		 	TweenMax.to("#combineBinaryDigits" + p, 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		  		console.log("Tweenmax");
			  	if (p >= 0) {
					p--;
					binary(callBackFunction);
				}
		  	}});
		} else {
			if(typeof callBackFunction === "function") {
   				callBackFunction();
   			}
		}
	}
	
	function division(callBackFunction) {
		console.log("division");
		if (q > 0 ) {
			console.log("q1 =" + q);
			$("#divide" + s).removeClass("opacity00");
			var t = $(".split" + q).offset();
			$("#divide" + q).effect('highlight',  {color: "#ff9900"}, 1000);
			$("#divide" + q).offset({"top": t.top,"left": t.left});
		 	TweenMax.to("#divide" + q, 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			  	if (q > 0) {
			  		console.log("q greater than zero");
					q--;
					division(callBackFunction);
				}
		  	}});
		} else {
			if(typeof callBackFunction === "function") {
   				callBackFunction();
   			}
		}
	}
	
	function result(callBackFunction) {
		console.log("division");
		if (s > 0 ) {
			console.log("q1 =" + q);
			$("#hexa" + s).removeClass("opacity00");
			var r = $("#divide" + s).offset();
			$("#divide" + s).effect('highlight',  {color: "#ff9900"}, 1000);
			$("#hexa" + s).offset({"top": r.top,"left": r.left});
		 	TweenMax.to("#hexa" + s, 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			  	if (s > 0) {
			  		console.log("q greater than zero");
					s--;
					result(callBackFunction);
				}
		  	}});
		} else {
			if(typeof callBackFunction === "function") {
   				callBackFunction();
   				$('#binaryResultValue').append('<sub>16</sub>'); 
   			}
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