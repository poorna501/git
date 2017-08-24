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
    <title>octal to binary</title>
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
    height: 105px;
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
	color: #A0522D;
}

.color-purple {
	color: purple;
}

#calculationTable {
	border: 1px solid black;
	height: 230px;
	margin-top: 30px;
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

</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Octal<sub>(<span id="radix8">8</span>)</sub> to Binary<sub>(<span id="radix2">2</span>)</sub> Conversion</span>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-6 col-xs-offset-3 visibility-hidden'>
	</div>
</div>
<div class="col-xs-12" id="totalbox">
	<table id="numberconversion" class='col-xs-offset-4 col-xs-4 visibility-hidden'>
			    <tr>
			    	<td style= "border:none;"></td>
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
<div id="conversiondiv" class="row text-center col-xs-12">
			<div id="inputDiv" class="col-sm-6 col-sm-offset-3 opacity00" style="margin-top: 25px">
				<span class='font-size-16'><span class='color-purple'>Octal Value</span> <b>:</b></span>&nbsp;&nbsp;&nbsp;<input
					class="index-textbox-size text-center" type="text" name="binaryValue"
					id="octalValue" placeholder="Octal Value" Maxlength='3'  >&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success disabled opacity40" id="convert">
					<i class="fa fa-arrow-right"></i> Convert to Binary </button>
			</div>
		</div>
		
<div id='calculationTable' class='col-xs-12 col-xs-offset-4 col-xs-4 visibility-hidden'>
	<div  id='octalValuesDiv' class='col-xs-12 opacity00' style='margin-top: 25px;'>
		<span class='col-xs-5'  style='font-size: 15px;' id='octalValuesText'><span class='color-lightrose'>Octal Value</span> <b>:</b></span>
		<span class='col-xs-7' style='display: block; height: 32px;' id='octalValuesGet'></span>
	</div>
	
	<div id='binaryValuesDiv' class='col-xs-12 opacity00' style='margin-top: 20px;'>
		<span class='col-xs-5' style='font-size: 15px;' id='binaryValuesText'><span class='color-lightrose'>Binary Digits</span> <b>:</b></span>
		<span class='col-xs-7'  id='binaryValuesGet'></span>
	</div>
	
	<div id='combineBinaryNumbers' class='col-xs-12 opacity00' style='margin-top: 20px'>
		<span style='font-size: 15px;' class='col-xs-6'><span class='color-lightrose'>Combine Binary Digits</span> <b>:</b></span>
		<span id='numbersCombine' class='col-xs-6 opacity00'></span>
	</div>
	
	<div id='binaryResult' class='col-xs-12 opacity00' style='margin-top: 20px'>
		<span class='col-xs-6'><span  class='color-lightrose'>Binary Result</span><b>:</b></span>
		<span id='binaryResultValue' class='col-xs-6 append'></span>
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
		/* },{
			element :'#calculationTable',
			intro :'',
			position:"right"  */
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
		  			"converting each Octal digit into binary of <span class='color-green'>three</span> digits and group them finally</span>.</li><li>To convert Octal to Binary, replace each octal digit by its binary representation.</li></ul>" ,function() {
		  				typing('.introjs-tooltiptext', "Introduction about Octal to Binary Conversion.", function() {  
							$('.introjs-nextbutton').show();
				  			});
					});
				});
		break;
		case "numberconversion" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#numberconversion').removeClass('visibility-hidden');
		  		typing('.introjs-tooltiptext',"This is representation of each Octal digit into Binary form." ,function() { 
					$('.introjs-nextbutton').show();	
				  	});
				});
		break;
		case "inputDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#inputDiv').removeClass('opacity00');
		  		typing('.introjs-tooltiptext',"Enter an octal value and click the 'Convert to Binary' button to see how the octal to binary conversion is done</span>.<br><span class='color-yellow'>Note:</span> Enter a value of maximum length 3." ,function() { 
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
		case "binaryValuesDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#binaryValuesDiv').removeClass('opacity00');
				$('.box1').removeClass('opacity00');
				TweenMax.staggerFrom(".box1", 1.2, {opacity:0, top: -60}, -0.5, function() {
		  		typing('.introjs-tooltiptext',"<ul><li>Convert each Octal digit to a <span class='color-yellow'>three</span> digit binary number.</li>"+
		  				"<li>Divide the binary digits into <span class='color-yellow'>groups of three</span> (<span class='color-yellow'>starting from right</span>).</li></ul>" ,function() { 
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
				binary();
				typing('.introjs-tooltiptext',"Combine all the resulting binary groups (of three digit each) into a <span class='color-yellow'>single binary number</span>." ,function() { 
					$('.introjs-nextbutton').show();	
					 });
			});
		break; 
		case "binaryResult" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#binaryResult').removeClass('opacity00');
				var l = $("#numbersCombine").offset();
				$("#binaryResultValue").effect('highlight',  {color: "#ff9900"}, 1000);
				$("#binaryResultValue").offset({"top": l.top,"left": l.left});
				TweenMax.to("#binaryResultValue", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		  		typing('.introjs-tooltiptext',"Hence, the binary equivalent of the given octal number is <pan class='color-red'>" +  $('#binaryResultValue').html()  + "<sub class='color-yellow'>(<span>2</span>)</sub></span>." ,function() { 
					$('.introjs-nextbutton').show();
		  		 	});
				  }});
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
typing('.introjs-tooltiptext',"Here we are converting a number of the base <span class='color-yellow'>8</span> to the equivalent number of the base <span class='color-yellow'>2</span>.",function() {
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
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i]).toString(2);
		if (finalBinaryVal.length < 3) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "0" +  finalBinaryVal;
		}
		$("#binaryValuesGet").append("<span id= binary"+i+ " class='box1 opacity00 text-center ct-code-b-black '><span id= binaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
	}
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i]).toString(2);
		if (finalBinaryVal.length < 3) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "0" +  finalBinaryVal;
		}
		$("#numbersCombine").append("<span id= combineBinary"+i+ "opacity00 class='text-center ct-code-b-black'><span class='opacity00' id= combineBinaryDigits"+ i +">"+ finalBinaryVal +"</span></span>");
	}
	for (var i=0; i<valuelength.length; i++) {
		var finalBinaryVal = parseInt(valuelength[i]).toString(2);
		if (finalBinaryVal.length < 3) {
			if (finalBinaryVal.length == 1) finalBinaryVal = "00" +  finalBinaryVal;
			else if (finalBinaryVal.length == 2) finalBinaryVal = "0" +  finalBinaryVal;
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

	
	function binary() {
		console.log("p = " + p);
	 if (p >= 0 ) {
		var s = $("#binaryDigits" + p).offset();
		$("#combineBinaryDigits" + p).effect('highlight',  {color: "#ff9900"}, 1000);
		$("#combineBinaryDigits" + p).offset({"top": s.top,"left": s.left});
	 	TweenMax.to("#combineBinaryDigits" + p, 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
	  	console.log("Tweenmax");
		  if (p >= 0) {
			  console.log("p greaterthan zero");
	       p--;
	 		binary();
	      		}
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