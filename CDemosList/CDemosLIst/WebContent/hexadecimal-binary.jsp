<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>hexadecimal to binary</title>
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
    height: 90px;
    margin-top: 20px;
    color: black;
}

#numberconversion {
    border: 1px solid Black;
    margin-top: 20px;
    text-align: left;
}

.numberconversiontitle {
	border: 1px solid Black;
    font-size: 15px;
    text-align: center;
    margin-top: 20px;
}
.binvalue0 {
	font-size :14px;
}
.color-brown {
	color: #A0522D;
}

.color-purple {
	color: purple;
}
.z-index9999999 {
	z-index: 9999999;
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

#calculationTable {
	border: 1px solid black;
	height: 180px;
	margin-top: 20px;
	border-radius: 6px;
	background-color: #dcdcdc;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3); 
}

.box {
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

.box1 {
	background-color: #33ff99;
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

.padding0 {
	padding : 0;
}
</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Hexadecimal<sub>(<span id="radix16">16</span>)</sub> to Binary<sub>(<span id="radix2">2</span>)</sub> Conversion</span>
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
			<div id="inputDiv" class="col-sm-6 col-sm-offset-3 opacity00" style="margin-top: 25px">
				<span class='font-size-16'><span class='color-purple'>Hexadecimal Value</span> <b>:</b></span>&nbsp;&nbsp;&nbsp;<input
					class="index-textbox-size text-center" type="text" name="binaryValue"
					id="octalValue" placeholder="hexadecimal Value" Maxlength='3'  >&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success disabled opacity40" id="convert">
					<i class="fa fa-arrow-right"></i> Convert to Binary </button>
			</div>
		</div>
		
<div id='calculationTable' class='col-xs-12 col-xs-offset-4 col-xs-4 padding0 visibility-hidden'>
	<div  id='octalValuesDiv' class='col-xs-12 opacity00' style='margin-top: 25px;'>
		<span class='col-xs-5 padding0'  style='font-size: 14px;' id='octalValuesText'><span class='color-lightrose'>Hexadecimal Value</span> <b>:</b></span>
		<span class='col-xs-7 padding0' style='display: block; height: 32px;' id='octalValuesGet'></span>
	</div>
	
	<div id='binaryValuesDiv' class='col-xs-12 opacity00' style='margin-top: 20px;'>
		<span class='col-xs-5 padding0' style='font-size: 14px;' id='binaryValuesText'><span class='color-lightrose'>Binary Digits</span> <b>:</b></span>
		<span class='col-xs-7 padding0'  id='binaryValuesGet'></span>
	</div>
	
	<div id='combineBinaryNumbers' class='col-xs-12 opacity00' style='margin-top: 20px'>
		<span style='font-size: 14px;' class='col-xs-6 padding0'><span class='color-lightrose'>Binary Result</span> <b>:</b></span>
		<span id='numbersCombine' class='col-xs-6 padding0 opacity00'></span>
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
		  		typing('.introjs-tooltiptext',"Enter an hexadecimal value and click the 'Convert to Binary' button to see how the hexadecimal to binary conversion is done</span>.<br><span class='color-yellow'>Note:</span> Enter a value of maximum length 3." ,function() { 
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
				TweenMax.staggerFrom(".box", 1.2, {opacity:0, top: -60}, -0.5, function() {
					$('.introjs-tooltip').removeClass("hide");
					typing('.introjs-tooltiptext',"Consider each hexadecimal digit as a seperate digit.<br>Then, convert each hexadecimal digit to a <span class='color-yellow'>four</span> digit binary number.</li></ul>" ,function() { 
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
					},1000);
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
				typing('.introjs-tooltiptext',"The result is  ",function() { 
					$('.introjs-nextbutton').show();	
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
	+ "<li id='list3'>In the <span class='ct-green-color'>Hexadecimal System,</span> the values " 
	+"<span class='ct-green-color'>10</span>, " 
	+"<span class='ct-green-color'>11</span>, <span class='ct-green-color'>12</span>, <span class='ct-green-color'>13</span>, " 
	+"<span class='ct-green-color'>14</span> and <span class='ct-green-color'>15</span> are represented as " 
	+"<span class='ct-green-color'>A</span>, <span class='ct-green-color'>B</span>, <span class='ct-green-color'>C</span>, " 
	+"<span class='ct-green-color'>D</span>, <span class='ct-green-color'>E</span> and <span class='ct-green-color'>F</span>.</li>"
	+"<li id='list4'>Binary numbers can only be <span class='ct-green-color'>1</span> and <span class='ct-green-color'>0</span>.</li></ul>" 
	typing('#informationdiv', text, function() {
		$("#informationdiv").addClass('z-index9999999');
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
		$("#binaryValuesGet").append("<span id= binary"+i+ " class='box1 opacity00 text-center ct-code-b-black '><span id= binaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
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
function typing(typingId, typingContent, callbackFunction) {
	$(typingId).typewriting(typingContent, {
		"typing_interval":10,
		"cursor_color": "blue"
	}, function() {
		$(typingId).removeClass('typingCursor');
		callbackFunction();
	});
}

</script>
</html>