<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<title>hex to dec</title>
</head>
<style>

.color-brown {
	color: #A0522D;
}

.color-purple {
	color: purple;
}
.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 1000000 !important;
}

.ct-green-color {
	color: green;
}

.ct-Maroon-color {
	color: Maroon;
}

.ct-aqua-color {
	color: aqua;
}

.introjs-tooltip {
	min-width: 210px;
}

.box,.box3 {
	background-color: #4dff4d;
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
#BinaryDigitsResult0 {
    margin-left: 10px;
}
.box1 {
    width:28px;
	height:15px;
	position:relative;
    display:inline-block;
}

.box4 {
	background-color: #33ff99; 
    border-radius: 5px;
    width:35px;
	height:20px;
	position:relative;
    display:inline-block;
	box-shadow: 0 0 7px rgba(0, 0, 0, 0.3);
    border-radius: 2px; 
	margin-left: 10px;
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

.padding0 {
	padding : 0;
}

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
.row {
	margin-right : 0px !important;
}
#informationdiv {
    border-radius: 0px;
    height:80px;
    margin-top: 20px;
    color: black;
}

#numberconversion {
    border: 1px solid Black;
    margin-top: 10px;
    text-align: left;
}

.numberconversiontitle {
	border: 1px solid Black;
    font-size: 15px;
    text-align: center;
    margin-top: 10px;
}

#tableheading {
	margin-top: 1%;
	margin-left: 19.5%;
	font-size: 16px;
}

.font-size-16 {
	font-size: 16px;
}

.index-textbox-size {
	width: 18%;
	height: 30px !important;
	border: 1px solid gold;
	display: inline !important;
	border-radius: 4px;
	padding: 6px 10px;
	text-align: center
}
#calculationTable {
	border: 1px solid black;
	height: 350px;
	margin-top: 10px;
	border-radius: 6px;
	background-color: #dcdcdc;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3); 
}

/* #calculationTable1 {
	height: 230px !important;
} */

#tablecal {
	color: green;
	font-size: 16px;
	text-decoration: underline;
	font-weight: bold;
	margin-bottom: 5%;
}

#power {
    bacground-color: blue;
}

.box2 {
   width:30px;
   height:30px;
   position:relative;
   display:inline-block;
   box-shadow: 0 0 9px rgba(0, 0, 0, 0.3);
   border-radius: 2px; 
   margin-left: 10px;
   padding: 7.2px;
   margin-top: 0px;
   background-color: #F0E68C;
}

.ct-code-b-green {
	color: green;
}

.ct-code-b-red {
	color: red;
	position: relative;
}
.direct-div {
	height : 100px;
	border : 1px solid;
	margin-left : 20px;
}
.ct-code-b-blue {
	color: blue;
}

.ct-code-b-yellow {
	color: yellow;
}

.ct-code-b-black {
	color:	black;
	position: relative;
}

.user-btn {
	background-color: green;
}

div, span {
	position: relative;
}

.form-group {
    margin-bottom: 10px;
}

#powervalues {
	background-color: white;
}

.ct-demo-number {
	color: brown;
}

.ct-demo-green {
	color: green;
}

.color-lightrose {
	color: #990033;
}

.color-red {
	color: red;
}
.introjs-tooltip {
	min-width: 200px;
}

.margin10 {
	margin-top : 10px;
}
.font14 {
	font-size : 14px;
}
#numbersCombine {
	margin-left : 15px !important;
}
</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Hexadecimal<sub>(<span id="radix16">16</span>)</sub> to Decimal<sub>(<span id="radix2">10</span>)</sub> Conversion</span>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-6 col-xs-offset-3'>
	</div>
</div>
	<div class="col-xs-12" id="totalbox">
		<table id="numberconversion" class='col-xs-offset-2 col-xs-8 visibility-hidden'>
			<tr>
				<td class="" style="background-color: #8FBC8F; color: white; border: 1px solid black; text-align: center"><b>Hexadecimal</b></td>
				<td id = hexvalue0 class="numberconversiontitle"><span class='ct-demo-number'><b>0</b></span></td>
				<td id = hexvalue1 class ="numberconversiontitle"><span class='ct-demo-number'><b>1</b></span></td>
				<td id = hexvalue2 class ="numberconversiontitle"><span class='ct-demo-number'><b>2</b></span></td>
				<td id = hexvalue3 class ="numberconversiontitle"><span class='ct-demo-number'><b>3</b></span></td>
				<td id = hexvalue4 class ="numberconversiontitle"><span class='ct-demo-number'><b>4</b></span></td>
				<td id = hexvalue5 class ="numberconversiontitle"><span class='ct-demo-number'><b>5</b></span></td>
				<td id = hexvalue6 class ="numberconversiontitle"><span class='ct-demo-number'><b>6</b></span></td>
				<td id = hexvalue7 class ="numberconversiontitle"><span class='ct-demo-number'><b>7</b></span></td>
				<td id = hexvalue8 class ="numberconversiontitle"><span class='ct-demo-number'><b>8</b></span></td>
				<td id = hexvalue9 class ="numberconversiontitle"><span class='ct-demo-number'><b>9</b></span></td>
				<td id = hexvalue10 class ="numberconversiontitle"><span class='ct-demo-number'><b>A</b></span></td>
				<td id = hexvalue11 class ="numberconversiontitle"><span class='ct-demo-number'><b>B</b></span></td>
				<td id = hexvalue12 class ="numberconversiontitle"><span class='ct-demo-number'><b>C</b></span></td>
				<td id = hexvalue13 class ="numberconversiontitle"><span class='ct-demo-number'><b>D</b></span></td>
				<td id = hexvalue14 class ="numberconversiontitle"><span class='ct-demo-number'><b>E</b></span></td>
				<td id = hexvalue15 class ="numberconversiontitle"><span class='ct-demo-number'><b>F</b></span></td>
			</tr>
			<tr>
			<td class="" style="background-color: #8FBC8F; color: white; border: 1px solid black; text-align: center"><b>Binary</b></td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue0'>0000</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue1'>0001</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue2'>0010</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue3'>0011</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue4'>0100</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue5'>0101</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue6'>0110</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue7'>0111</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue8'>1000</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue9'>1001</td>
				<td class ='numberconversiontitle color-brown' id = 'binvalue10'>1010</td>
				<td class='numberconversiontitle color-brown' id = 'binvalue11'>1011</td>
				<td class='numberconversiontitle color-brown' id = 'binvalue12' >1100</td>
				<td class='numberconversiontitle color-brown' id = 'binvalue13'>1101</td>
				<td class='numberconversiontitle color-brown' id = 'binvalue14'>1110</td>
				<td class='numberconversiontitle color-brown' id = 'binvalue15'>1111</td>
			</tr>
		</table>
	</div>
	<div id="conversiondiv" class="row text-center col-xs-12">
			<div id="inputDiv" class="col-sm-6 col-sm-offset-3 opacity00" style="margin-top: 5px">
				<span class='font-size-16'><span>Hexadecimal Value</span> <b>:</b></span>&nbsp;&nbsp;&nbsp;<input
					class="index-textbox-size text-center" type="text" name="binaryValue"
					id="octalValue" placeholder="hexadecimal Value" Maxlength='3'  >&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success disabled opacity40" id="convert">
					<i class="fa fa-arrow-right"></i> Convert to decimal </button>
			</div>
		</div>
<div class = 'col-xs-12 padding0'>	
	<div id='calculationTable' class='col-xs-offset-2 col-xs-8 padding0 visibility-hidden'>
		<div  id='octalValuesDiv' class='col-xs-12 opacity00 margin10'>
			<span class='col-xs-3 padding0 color-lightrose font14' id='octalValuesText'><span>Hexadecimal Value</span> <b>:</b></span>
			<span class='col-xs-3 padding0' style='display: block; height: 32px;' id='octalValuesGet'></span>
		</div>
		
		<div id='binaryValuesDiv' class='col-xs-12 opacity00 margin10'>
			<span class="col-xs-3 padding0 color-lightrose font14" id='binaryValuesText'><span>Binary Digits</span> <b>:</b></span>
			<span class='col-xs-3 padding0'  id='binaryValuesGet'></span>
		</div>
		
		<div id='combineBinaryNumbers' class='col-xs-12 opacity00' style='margin-top: 20px'>
			<span class='col-xs-3 font14 padding0'><span class='color-lightrose'>Binary Result</span> <b>:</b></span>
			<span id='numbersCombine' class='col-xs-3 padding0 opacity00 ct-demo-green'></span>
		</div>
		
		<div id='binaryResult' class='col-xs-12 opacity00' style='margin-top: 5px'>
			<span class='col-xs-3 font14 padding0'><span  class='color-lightrose'>Binary Result</span><b>:</b></span>
			<span id='binaryResultValue' class='col-xs-2 append padding0'></span>
		</div>
	 	<div class="visibility-hidden col-xs-12 margin10" id="firstbox">
			<span id="get"  class="col-xs-2 font14 padding0 color-lightrose">Binary Digits<b>:</b></span> 
			<span class='col-xs-10 padding0' ><span style='display: inline-block; position: relative;' id="binary"></span></span>
		</div>
		
		<div class="visibility-hidden col-xs-12 margin10" id="secondbox">
			<span id="get"  class="col-xs-2 ct-code-b-green padding0"></span>
			<span class='col-xs-10 padding0'><span style='height: 31px; display: inline-block; position: relative;' id="power" ></span></span>
		</div>
		
		<div class="visibility-hidden col-xs-12 margin10" id="thirdbox">
			<span id="get" class="color-lightrose font14 col-xs-2 padding0" >Conversion<b>:</b></span>
			<span class='col-xs-10 padding0'><span id="powercalculation"></span></span>
		</div>
		
		<div class="col-xs-12 visibility-hidden margin10" id="fourthbox">
			<span id="get"  class="col-xs-2 padding0 color-lightrose">
			</span><span class='col-xs-10 padding0'><span id="multiply"></span></span>
		</div>
		
		<div class="col-xs-12 visibility-hidden " style='margin-top: 5px;' id="fifthbox">
			<span id="get" class="col-xs-2 padding0"></span>
			<span class='col-xs-10 padding0'><span id="multiplytwonos"></span></span>
		</div>
		
		<div class="col-xs-12 visibility-hidden " style='margin-top: 5px;' id="sixthbox">
			<span id="get" class="col-xs-4 padding0 font14 color-lightrose">Result<b>:</b></span><span  class ='col-xs-8 padding0'><span id="adding"></span></span>
		</div>
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
var z = 0;
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
			element :'#informationdiv',
			intro :'',
			position:"right",
			tooltipClass : 'hide',
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
			position:"right",
			tooltipClass : 'hide'
		},{
			element :'#binaryValuesDiv',
			intro :'',
			position:"right",
			tooltipClass : 'hide'
		},{
			element :'#combineBinaryNumbers',
			intro :'',
			position:"right",
			tooltipClass : 'hide'
		},
		{
			element :'#firstbox',
			intro :'',
			position:"right",
			tooltipClass : 'hide'
		}, {
			element :'#power',
			intro :'',
			position:"right",
			tooltipClass : 'hide'
		}, {
			element :'#powercalculation',
			intro :'',
			position:"right",
			tooltipClass : 'hide'
		}, {
			element :'#multiply',
			intro :'',
			position:"right"
		}, {
			element :'#multiplytwonos',
			intro :'',
			position:"right"	
		}, {
			element :'#sixthbox',
			intro :'',
			position:"right"	
		}, {
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
			});
		break;
		case "numberconversion" :
			$('.introjs-nextbutton').hide();
			$("#informationdiv").addClass('z-index1000000');
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberconversion').removeClass('visibility-hidden');
		  		typing('.introjs-tooltiptext',"This shows Hexadecimal to Binary Conversion Chart." ,function() { 
					$('.introjs-nextbutton').show();	
				  	});
				});
		break;
		case "inputDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#inputDiv').removeClass('opacity00');
		  		typing('.introjs-tooltiptext',"Enter an hexadecimal value and click the 'Convert to Decimal' button to see how the hexadecimal to decimal conversion is done</span>.<br><span class='color-yellow'>Note:</span> Enter a value of maximum length 3." ,function() { 
					$('#octalValue').focus();  
		  		});
				});
		break; 
		case "octalValuesDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#calculationTable').removeClass('visibility-hidden');
				$('#octalValuesDiv').removeClass('opacity00');
				$('.box').removeClass('opacity00');
				TweenMax.staggerFrom(".box", 0.5, {opacity:0, top: -20}, -0.1, function() {
					$('.introjs-tooltip').removeClass("hide");
					typing('.introjs-tooltiptext',"Consider each hexadecimal digit as a seperate digit.<br>Convert each hexadecimal digit to a <span class='color-yellow'>four</span> digit binary number." ,function() { 
					$('.introjs-nextbutton').show();	
				  });
				});
			});
		break; 
		case "binaryValuesDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#binaryValuesDiv').removeClass('opacity00');
				$('.box4').removeClass('opacity00');
				TweenMax.staggerFrom(".box4", 1.2, {opacity:0, top: -60}, -0.5, function() {
					for(var i =0;i <=2;i++){
					 for(var j = 0;j <= 15;j++){
					   var p = $('#octal'+i).text();
					   var n = $('#hexvalue'+j).text();
					   if(p == n){
					    $('#hexvalue'+j).effect('highlight',  {color: "#ff9900"}, 1000);
					      $('#binvalue'+j).effect('highlight',  {color: "#ff9900"}, 1000);
					   }
					 }
					}  
					setTimeout(function(){
						$('.introjs-tooltip').removeClass("hide");
						typing('.introjs-tooltiptext',"Combine all the resulting binary groups (of four digit each) into a <span class='color-yellow'>single binary number</span>." ,function() { 
						$('.introjs-nextbutton').show();
					},5000);
				  });
				});
			});
		break; 
		case "combineBinaryNumbers" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#combineBinaryNumbers').removeClass('opacity00');
				$('#numbersCombine').removeClass('opacity00');
				binary();
				$('.introjs-tooltip').removeClass("hide");
				typing('.introjs-tooltiptext',"The result of converting the given hexadecimal value to binary value.<br>Now, we will convert the binary value to decimal value.<br>Seperate each binary digit of the resultant binary value.",function() { 
					$('.introjs-nextbutton').show();	
				 });
			});
		break; 
		case "firstbox":
		$('.introjs-nextbutton').hide();
		$('.introjs-helperLayer').one('transitionend', function() {
			$("#firstbox").removeClass("visibility-hidden");
			$(".box3").removeClass("opacity00");
			$('.introjs-tooltip').removeClass("hide");
			typing('.introjs-tooltiptext', "In the binary number system the power of each digit increased by a factor of <span class='ct-code-b-yellow'>2</span>, then the first digit starts from the power of <span class='ct-code-b-yellow'>2<sup>0</sup></span>.", function() {
				$('.introjs-nextbutton').show();
			}); 
		 });
	break;
	case "power":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
			$("#secondbox").removeClass("visibility-hidden");
			$('.introjs-tooltip').removeClass("hide");
			typing('.introjs-tooltiptext', "Multiply the binary values in respective position with <span class='ct-code-b-yellow'>2</span> to the power of their position, which starts from <span class='ct-code-b-yellow'>zero</span>. ", function() {
				$('.introjs-nextbutton').show();
			});
		 })
	break;
	case "powercalculation":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
			$("#thirdbox").removeClass("visibility-hidden");
				calculate(function()
				 {
					$('.introjs-tooltip').removeClass("hide");
				 	typing('.introjs-tooltiptext', "Multiply the powers for example: <span class='ct-code-b-yellow'>2<sup>3</sup> = 2x2x2 = 8</span>.", function() {
					 	$('.introjs-nextbutton').show();
					});
				});
				})
	break;
	case "multiply":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
		 		power(function() {
		 			$("#fourthbox").removeClass("visibility-hidden");
		 			typing('.introjs-tooltiptext', "By <span class='ct-code-b-yellow'>adding</span> together all the decimal number values from <span class='ct-code-b-yellow'>right</span> to <span class='ct-code-b-yellow'>left</span> we can form a <span class='ct-code-b-yellow'>decimal number</span>.", function() {
		 	 			$('.introjs-nextbutton').show();
		 	 		 });
		 		});
		 	})
	break;
	case "multiplytwonos":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function() {
			 if (l > 0) {
		 		poweradd();
	 	 		typing('.introjs-tooltiptext', "After conversion the decimal value is", function() {
		 			$('.introjs-nextbutton').show();
	 			});
			 } else {
				typing('.introjs-tooltiptext', "After conversion the decimal value is", function() {
					var l6 = $("#multiplytotal0").offset();
				    $("#multiplytwo0").offset({"top": l6.top,"left": l6.left});
				 	$("#multiplytwo0").removeClass("opacity00");
				 	$("#multiplytotal0").effect('highlight',  {color: "#F08080"}, 1000);
					TweenMax.to("#multiplytwo0", 1.5, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			 		}});
				});	
				$('.introjs-nextbutton').show();
			 }
		 })
	break;
	case "sixthbox":
		$('.introjs-nextbutton').hide();
		$('.introjs-helperLayer').one('transitionend', function() {
		typing('.introjs-tooltiptext', "The result is ", function() {
			addition();
			$('.introjs-nextbutton').show();
		})
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

text = "<ul><li id='list1'><span class='ct-green-color'>Hexadecimal System</span> also known as <span class='ct-green-color'>hex</span>,"
	+" is a numbering system which uses base-<span class='ct-green-color'>16</span>.</li>"
	+ "<li id='list2'>Only combinations of <span class='ct-Maroon-color'>0</span>, " 
	+"<span class='ct-Maroon-color'>1</span>, " 
	+"<span class='ct-Maroon-color'>2</span>, <span class='ct-Maroon-color'>3</span>, <span class='ct-Maroon-color'>4</span>, " 
	+"<span class='ct-Maroon-color'>5</span>, <span class='ct-Maroon-color'>6</span>, <span class='ct-Maroon-color'>7</span>, " 
	+"<span class='ct-Maroon-color'>8</span>, <span class='ct-Maroon-color'>9</span>, <span class='ct-Maroon-color'>A</span>, " 
	+"<span class='ct-Maroon-color'>B</span>, <span class='ct-Maroon-color'>C</span>, <span class='ct-Maroon-color'>D</span>, " 
	+"<span class='ct-Maroon-color'>E</span> and <span class='ct-Maroon-color'>F</span> are "
	+"used to represent a value of any magnitude in <span class='ct-green-color'>Hexadecimal System</span>.</li>"
	+"<li>We are converting the hexadecimal value to binary value and then binary value to decimal.</li>"
	typing('#informationdiv', text, function() {
		setTimeout(function () {
			intro.nextStep();
		}, 500);
	});	
	
});

$("#octalValue").keydown(function(e) {
	if (e.which == 46 || (e.which >= 48 && e.which <= 57) || e.which == 8 || e.which == 46 || (e.which >= 65 && e.which <= 70)) {
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
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i],16).toString(2);
		if (finalBinaryVal.length < 4) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "000" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 3) finalBinaryVal = "0" +  finalBinaryVal;
		}
		$("#binaryValuesGet").append("<span id= binary"+i+ " class='box4 opacity00 text-center ct-code-b-black '><span id= binaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
	}
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i],16).toString(2);
		if (finalBinaryVal.length < 4) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "000" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 3) finalBinaryVal = "0" +  finalBinaryVal;
		}
		$("#numbersCombine").append("<span id= combineBinary"+i+ "opacity00 class='text-center ct-code-b-black'><span class='opacity00' id= combineBinaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
	}
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i],16).toString(2);
		if (finalBinaryVal.length < 4) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "000" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 3) finalBinaryVal = "0" +  finalBinaryVal;
			}
		$("#binaryResultValue").append("<span id= binaryresult"+i+ "class='text-center ct-code-b-black '><span id= BinaryDigitsResult"+ i +">"+ finalBinaryVal +"</span></span>");
		}
	
	l = $("#binaryResultValue").text();
	 x = l.length - 1;
	for (var i=0; i<l.length; i++) {
		$("#binary").append("<span id= a"+i+ " class='box3  text-center ct-code-b-black opacity00'><span id= b"+ i +">"+ l[i] +"</span></span>");
	}
	
	for (var i = l.length - 1, j=0; i >= 0; i--, j++) {
		$("#power").append("<span class='box2  text-center ct-code-b-black'>" +
				"<span id= powervalues" +i+ ">" + 2 +"<sup class='ct-code-b-green'>"+ i +"</sup></span></span>");
		
		if (i > 0) {
			$("#powercalculation").append("<span id = 'overall"+i+"'><span id = 'bracket" + i +"' class = 'bracket opacity00'>(</span>"+ 
					"<span id = 'total" + i + "' class='total'>"+ 
					"<span id= c"+j+ " class='ct-code-b-black opacity00'>"+ l[j] +"</span>"+
					"<b id = 'ct-code-b-red" + i +"'class='ct-code-b-red opacity00'> x </b></span> "+ 
					"<span id = 'powerv" + i + "' class= 'ct-code-b-black opacity00'>" + 2 +"<sup class='ct-code-b-green'>"+ i +"</sup></span>" +
					"<span id = 'bracket2" + i +"'  class = 'bracket opacity00'>)</span></span><span id = 'plus" + i + "' class = 'plus opacity00'> + </span>");
       } else {
       	$("#powercalculation").append("<span id = 'overall" + i +"'><span id = 'bracket" + i +"' class = 'bracket opacity00'>(</span>" + 
       			"<span id = 'total" + i +"' class = 'total'><span id= c"+j+ " class='ct-code-b-black opacity00'>"+ l[j] +"</span>" +
       			"<b id = 'ct-code-b-red" + i +"' class='ct-code-b-red opacity00'> x </b></span> "+ 
       			"<span id='powerv" + i +"' class='ct-code-b-black opacity00'>" + 2 +"<sup class='ct-code-b-green'>"+ i +"</sup></span>" +
       			"<span id = 'bracket2" + i +"'class = 'bracket opacity00'>)</span></span>");
       			
       }
	}
	
	for (var i = l.length - 1, j=0; i >= 0; i--, j++) {
		var result = Math.pow(2, i);
		if (i > 0) {
			$("#multiply").append("<span id = 'multiplytotal" + i + "'class = multiplytotal'><span id = 'bracket3" + i + "' class = 'bracket3 opacity00'>(</span><span class= 'onemultiply opacity00' id = 'onemultiply" + i + "'><span id= c"+j+ " class='ct-code-b-black'>"+ l[j] +"</span><span class='box1 text-center' ><b class='ct-code-b-red into' > x </b></span></span>" +
					"<span id = 'd" + i + "'class = 'result opacity00'>" + result + "</span><span id = 'bracket4" + i + "' class = 'bracket4 opacity00'>)</span></span><span id = 'plus1" + i + "' class = 'plus1 opacity00'>  + </span>");
      	} else {
      		$("#multiply").append("<span id = 'multiplytotal" + i + "'class = multiplytotal'><span id = 'bracket3"+ i +"' class = 'bracket3 opacity00'>(</span><span class= 'onemultiply opacity00' id = 'onemultiply" + i + "'><span id= c"+j+ " class='ct-code-b-black'>"+ l[j] +"</span><span class='box1 text-center' ><b class='ct-code-b-red into' > x </b></span></span>" +
					"<span id = 'd" + i + "'class = 'result opacity00'>" + result + "</span><span id = 'bracket4"+ i +"' class = 'bracket4 opacity00'>)</span></span>");
		}
	}
	for (var i = l.length - 1, j=0; i >= 0; i--, j++) {
		var result = Math.pow(2, i);
		var multiply = l[j] * result;
		if (i > 0) {
			$("#multiplytwonos").append("<span id = 'multiplytwo" + i + "' class = 'multiplytwo opacity00'>(<span class='box1 text-center ct-code-b-black' id = m" + i + ">"+multiply+"</span>)</span></span><span id = 'plus2" + i +"'class = 'plus2 opacity00'>  + </span>");		
			
		} else {
			$("#multiplytwonos").append("<span id = 'multiplytwo" + i + "' class = 'multiplytwo opacity00'>(<span class='box1 text-center ct-code-b-black' id = m" + i + ">"+multiply+"</span>)</span></span>");
		}
	}
		var sum = 0;
	for (var i = l.length - 1, j=0; i >= 0; i--, j++) {
		var result = Math.pow(2, i);
		var multiply = l[j] * result;
		sum = sum + multiply;
		if (i == 0) {
			$("#adding").append("<span><span class='box1 text-center' id = r" + i + ">("+sum+")<sub>(<span class='ct-code-b-green'id='radix'>" +10 +"</span>)</sub></span></span>");
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
	
	$('#octalValue').keyup(function() {
        this.value = this.value.toUpperCase();
    });
	
function typing(typingId, typingContent, callbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval":10,
		"cursor_color": "blue"
	}, function() {
		$(typingId).removeClass('typingCursor');
		callbackFunction();
	});
}

function calculate(callBackFunction) {
 	$("#bracket2" + z).removeClass("opacity00");
	$("#powerv" + z).removeClass("opacity00");
	$("#powervalues" + z).effect('highlight',  {color: "#F08080"}, 1000);
	$("#a" + z).effect('highlight',  {color: "#F08080"}, 1000);
	$("#ct-code-b-red" + z).removeClass("opacity00");
	$("#c" + x).removeClass("opacity00");
	$("#bracket" + z).removeClass("opacity00");
	$("#plus" + (z)).removeClass("opacity00");
	
	if (x >= 1 && z < l.length) {
		x--;
		z++;
	   	calculate(callBackFunction);
 	} else {
  		if(typeof callBackFunction === "function") {
  			callBackFunction();
  		}
 	}
}	
var q = 0;
function power(callBackFunction) {
	if (q < l.length) {
		$("#fourthbox").removeClass("visibility-hidden");
		$("#bracket4" + q).removeClass("opacity00");
		$("#d" + q).removeClass("opacity00");
		$("#d" + q).effect('highlight',  {color: "#F08080"}, 1000);
	 	$("#onemultiply" + q).removeClass("opacity00");
	 	$("#total" + q).effect('highlight',  {color: "#F08080"}, 3000);
		$("#bracket3" + q).removeClass("opacity00");
		$(".plus1").removeClass("opacity00");
		q++;
		power(callBackFunction);
	} else {
			if(typeof callBackFunction === "function") {
   			callBackFunction();
   			}
	}
} 

var s = 0;
function poweradd() {
	$("#fifthbox").removeClass("visibility-hidden");
	var l6 = $("#multiplytotal" + s).offset();
    $("#multiplytwo" + s).offset({"top": l6.top,"left": l6.left});
 	$("#multiplytwo" + s).removeClass("opacity00");
 	$("#multiplytotal" + s).effect('highlight',  {color: "#F08080"}, 1000);
	TweenMax.to("#multiplytwo"+ s, 0.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		TweenMax.to("#plus2" + (s+1), 0.2 , {opacity:1, onComplete: function() {
		$(".plus2" + (s+1)).removeClass("opacity00");
		 s++;
  		 if (s < l.length) {
  			poweradd();
       		}
  		}});
	}});
}

var t = 0;
function addition() {
	$("#sixthbox").removeClass("visibility-hidden");
	var l7 = $("#multiplytwonos").offset();
    $("#r" + t).offset({"top": l7.top,"left": l7.left});
 	$("#r" + t).removeClass("opacity00");
	TweenMax.to("#r"+ t, 0.5, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
  		 if (t < l.length) {
		 	t++;
			addition();
       	}
  }});
}

function binary() {
	if (p >= 0 ) {
		var s = $("#binaryDigits" + p).offset();
		$("#combineBinaryDigits" + p).effect('highlight',  {color: "#ff9900"}, 1000);
		$("#combineBinaryDigits" + p).offset({"top": s.top,"left": s.left});
	 	TweenMax.to("#combineBinaryDigits" + p, 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		  if (p >= 0) {
	      	p--;
	 		binary();
	      }
	  	}});
  	}
}

</script>
</html>