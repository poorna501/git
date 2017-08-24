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
	<script src="/js/gs/TweenMax.min.js"></script>
	<script src='/js/intro.js'></script>
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<script src="/js/typewriting.min.js"></script>
	<script src="/js/jquery-ui-latest.js"></script>
	<link rel="/css/animate.css"/>
	<title>Binary to Decimal</title>
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

.position-relative {
	position: relative;
}

.z-index9999999 {
	z-index: 9999999;
}

#informationDiv {
	background-color: rgb(243, 235, 212);
    border-radius: 0px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 110px;
    margin-top: 30px;
    color: black;
}


.bit {
	margin-left: 113px;
}

#tableheading {
	margin-top: 1%;
	margin-left: 19.5%;
	font-size: 16px;
}

#numberconversion {
    border: 1px solid Black;
    margin-top: 1%;
    text-align: left;
}

#numberconversiontitle {
	border: 1px solid Black;
    width: 50px;
    font-size: 15px;
    text-align: center;
    margin-top: 1%;
}

.font-size-16{
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


#calculationtable {
    border-radius: 10px;
    box-shadow: 0 0 30px rgba(0, 0, 0, 0.3);
    box-sizing: border-box;
    height: 300px;
    margin-top: 2%;
    border: 1px solid black;
}

#tablecal {
	color: green;
	font-size: 16px;
	text-decoration: underline;
	font-weight: bold;
	margin-bottom: 5%;
}

.box {
	background-color: #AFEEEE;
	width:30px;
    position:relative;
    display:inline-block;
    height:30px;
    box-shadow: 0 0 9px rgba(0, 0, 0, 0.3);
    border-radius: 2px; 
    margin-left: 10px;
    padding: 7.2px;
    margin-top: 0px;
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
</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
	<span id='title' class='label ct-demo-heading'>Binary<sub>(<span id="radix">2</span>)</sub> to Decimal<sub>(<span id="radix">10</span>)</sub> Conversion</span>
</div>

<div class='col-xs-12'>
	<div id="informationDiv" class='col-xs-8 col-xs-offset-2'>
		<ul class='text' id='text'></ul>
	</div>
</div>
	
<div class="col-xs-12 visibility-hidden" id="totalbox">
	<table class='col-xs-6 col-xs-offset-3' id="numberconversion">
			    <tr>
					<td class="numberconversiontitle" style="background-color: #2e8b57; color: white; border:1px solid black; text-align: center"><b>MSB</b></td>
					<td class="numberconversiontitle" colspan="6" style="background-color: #8fbc8f; border:1px solid black; color: white; text-align: center"><b>Binary Digit</b></td>
					<td class="numberconversiontitle" style="background-color: #2e8b57; color: white;  border:1px solid black; text-align: center"><b>LSB</b></td>
				</tr>
				<tr >
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>7</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>6</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>5</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>4</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>3</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>2</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>1</b></span></td>
					<td id="numberconversiontitle"><span class='ct-demo-number'><b>0</b></span></td>
				</tr>
				<tr >
					<td id="numberconversiontitle">2<sup>7</sup></td>
					<td id="numberconversiontitle">2<sup>6</sup></td>
					<td id="numberconversiontitle">2<sup>5</sup></td>
					<td id="numberconversiontitle">2<sup>4</sup></td>
					<td id="numberconversiontitle">2<sup>3</sup></td>
					<td id="numberconversiontitle">2<sup>2</sup></td>
					<td id="numberconversiontitle">2<sup>1</sup></td>
					<td id="numberconversiontitle">2<sup>0</sup></td>
				</tr>
				<tr>
					<td id="numberconversiontitle">128</td>
					<td id="numberconversiontitle">64</td>
					<td id="numberconversiontitle">32</td>
					<td id="numberconversiontitle">16</td>
					<td id="numberconversiontitle">8</td>
					<td id="numberconversiontitle">4</td>
					<td id="numberconversiontitle">2</td>
					<td id="numberconversiontitle">1</td>
				</tr>
	</table>
</div>

<div id="conversiondiv" class="col-xs-12 row text-center ">
			<div id="inputDiv" class="col-sm-6 col-sm-offset-3 visibility-hidden" style="margin-top: 1%">
				<span class='font-size-16' style='color: purple'>Binary Value:</span>&nbsp;&nbsp;&nbsp;<input
					class="index-textbox-size" type="text" name="binaryValue"
					id="binarylValue" placeholder="Binary Value" Maxlength='8'  >&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-success disabled opacity40" id="convert">
					<i class="fa fa-arrow-right"></i> Convert to Decimal </button>
			</div>
</div>
<div  class=" col-xs-12" >
	<div id="calculationtable" class='col-xs-offset-2 col-xs-8 visibility-hidden'>
			<div class='col-xs-12'>
				<div id="tablecal" class="col-xs-offset-3 col-xs-6">Conversion of Binary to Decimal </div>
			</div>
   			<div class="visibility-hidden col-xs-12" id="firstbox">
				<span id="get"  class="col-xs-4  color-lightrose">Binary Digits<b>:</b></span> <span class='col-xs-8' ><span style='height: 31px; display: inline-block;position: relative;' id="binary"></span></span>
			</div>
			
			<div class="visibility-hidden col-xs-12" style='margin-top: 15px;' id="secondbox">
				<span id="get"  class="col-xs-4  ct-code-b-green "></span><span class='col-xs-8'><span style='height: 31px; display: inline-block;position: relative;' id="power" ></span></span>
			</div>
			
			<div class="visibility-hidden col-xs-12" style='margin-top: 15px;' id="thirdbox">
				<span id="get" class="color-lightrose col-xs-4" >Conversion<b>:</b></span><span class='col-xs-8'><span id="powecalculation"></span></span>
			</div>
			
			<div class="col-xs-12 visibility-hidden" style='margin-top: 15px;'  id="fourthbox">
				<span id="get"  class="col-xs-4 color-lightrose"></span><span class='col-xs-8'><span id="multiply"></span></span>
			</div>
			
			<div class="col-xs-12 visibility-hidden" style='margin-top: 15px;' id="fifthbox">
				<span id="get" class="col-xs-4"></span><span class='col-xs-8'><span id="multiplytwonos"></span></span>
			</div>
			
			<div class="col-xs-12 visibility-hidden" style='margin-top: 10px;' id="sixthbox">
				<span id="get"   class=" col-xs-4 color-lightrose">Result<b>:</b></span><span  class ='col-xs-8'><span id="adding"></span></span>
			</div>
			
			<div class="button  col-xs-12 text-center" id="button">
				<button class="btn btn-success glyphicon glyphicon-refresh opacity00" type="button" id='restartBtn' style='margin-top: 15px'>Restart</button>
			</div>
		</div>
	</div>
	</body>
<script>
var intro;
var l;
var x;
$(document).ready(function() {
	$('#restartBtn').click(function() {
		location.reload();
	});
	intro = introJs();
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
			steps : [{
						element :'#informationDiv',
						intro :'',
						tooltipClass: "hide",
						position:"bottom"
					},{
						element :'#numberconversion',
						intro :'',
						position:"right"
					},{
						element :'#inputDiv',
						intro :'',
						position:"right"
					 },{
						element :'#calculationtable',
						intro :'',
						position:"right"
					}, {
						element :'#binary',
						intro :'',
						position:"right"
					}, {
						element :'#power',
						intro :'',
						position:"right"
					}, {
						element :'#powecalculation',
						intro :'',
						position:"right"				
					}, {
						element :'#multiply',
						intro :'',
						position:"right"
					}, {
						element :'#multiplytwonos',
						intro :'',
						position:"right"	
					}, {
						element :'#adding',
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
				case "informationDiv" :
				break;
				case "numberconversion":
						$('.introjs-nextbutton').hide();
						$("#totalbox").removeClass("visibility-hidden");
						$(".introjs-helperLayer").one("transitionend", function() {
							typing('.introjs-tooltiptext', "Rrepresentation of Binary to Decimal.", function() {
								$('.introjs-nextbutton').show();
							});
						});
				break;
				case "inputDiv":
						$('.introjs-nextbutton').hide();
						$("#inputDiv").removeClass("visibility-hidden");
						$(".introjs-helperLayer").one("transitionend",  function() {
						$('.introjs-nextbutton').hide();
							typing('.introjs-tooltiptext', "Enter a binary value and click the 'Convert to Decimal' button to see how the binary to decimal conversion is done</span>.<br><span class='ct-code-b-yellow'>Note:</span> Enter a value of maximum length 8.", function() {
								});
						});
				break;
				case "calculationtable":
						$('.introjs-nextbutton').hide();
						$('.introjs-helperLayer').one('transitionend', function() {
						$("#calculationtable").removeClass("visibility-hidden");
							typing('.introjs-tooltiptext', "Let us consider the binary value.", function() {
								$('.introjs-nextbutton').show();
							});
						})
				break;	
				case "binary":
						$('.introjs-nextbutton').hide();
						$('.introjs-helperLayer').one('transitionend', function() {
						$("#firstbox").removeClass("visibility-hidden");
						$(".box").removeClass("opacity00");	
						TweenMax.staggerFrom(".box", 1.2, {opacity:0, top: -60}, -0.5, function() {
							typing('.introjs-tooltiptext', "This is the given binary value.", function() {
								$('.introjs-nextbutton').show();
							}); 
						});
					 })
				break;
				case "power":
						$('.introjs-nextbutton').hide();
						$('.introjs-helperLayer').one('transitionend', function() {
						$("#secondbox").removeClass("visibility-hidden");
						TweenMax.staggerFrom(".box2", 1, {opacity:0, top: -60}, -0.5, function() {
							typing('.introjs-tooltiptext', "In the binary number system the power of each digit increased by a factor of <span class='ct-code-b-yellow'>2</span>, then the first digit starts from the power of <span class='ct-code-b-yellow'>2<sup>0</sup></span>.", function() {
								$('.introjs-nextbutton').show();
							}); 
						});
					 })
				break;
				case "powecalculation":
						$('.introjs-nextbutton').hide();
						$('.introjs-helperLayer').one('transitionend', function() {
						$("#thirdbox").removeClass("visibility-hidden");
							calculate(function() {
							 	typing('.introjs-tooltiptext', "Multiply your binary values with in respective position with <span class='ct-code-b-yellow'>2</span> to the power of there position, which is starts from <span class='ct-code-b-yellow'>Zero</span>. ", function() {
								 	$('.introjs-nextbutton').show();
								});
							});
					 	})
				break;
				case "multiply":
						console.log("multiply");	
						$('.introjs-nextbutton').hide();
						$('.introjs-helperLayer').one('transitionend', function() {
					 		power(function() {
					 			console.log("poewerfunction");
					 			typing('.introjs-tooltiptext', "multiply the powers for example: <span class='ct-code-b-yellow'>2<sup>3</sup> = 2x2x2 = 8</span>.", function() {
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
					 	 		typing('.introjs-tooltiptext', "By <span class='ct-code-b-yellow'>adding</span> together all the decimal number values from <span class='ct-code-b-yellow'>right</span> to <span class='ct-code-b-yellow'>left</span> we can form a <span class='ct-code-b-yellow'>decimal number</span>.", function() {
						 			$('.introjs-nextbutton').show();
					 			});
						 } else {
							 typing('.introjs-tooltiptext', "By adding together all the decimal number values from right to left we can form a decimal number.", function() {
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
				case "adding":
					$('.introjs-nextbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						typing('.introjs-tooltiptext', "After convertion the decimal value is <pan class='color-red'>" +  $('#adding').html()  + "</span>.", function() {
							addition();
							$('.introjs-nextbutton').show();
					})
				});
				break;
				case "restartBtn":
						$('.introjs-nextbutton').hide();
						$(".introjs-helperLayer").one("transitionend",  function() {
						$("#restartBtn").removeClass("opacity00");
						$('.introjs-nextbutton').hide();
						typing('.introjs-tooltiptext', "click to restart", function() {
							});
							$('.introjs-nextbutton').hide();
							$('#binarylValue').val("");
							});
				break;
			}
		}); 
		intro.start();
   		$('.introjs-skipbutton').hide();
		$('.introjs-prevbutton').hide();
		$('.introjs-nextbutton').hide();
		   typing('.text', "<li>Conversion of binary to decimal (<span class='ct-demo-green'>base-2 to base-10</span>) numbers is an important "+
				"concept to understand as the binary numbering system forms the basis for all "+
				"computer and digital systems.</li>"+
				"<li> A binary number such as <span class='ct-demo-green'>101100101</span> is expressed with a string of “<span class='ct-demo-green'>1</span>’s” and “<span class='ct-demo-green'>0</span>’s” "+
				"with each digit along the string from right to left.</li>"+
				"<li>Binary number with the right-hand most bit being the Least Significant Bit or <span class='ct-demo-green'>LSB</span>, and the left-hand "+
				"most bit being the Most Significant Bit or<span class='ct-demo-green'>MSB</span>, and we can represent this as: </li>", function() { 
					typing('.introjs-tooltiptext', "", function() {   
						$('.introjs-nextbutton').hide();
						intro.nextStep();
					});	
				});
		$("#binarylValue").keydown(function(e) {
		if (e.which == 46 || e.which == 48 || e.which == 8 || e.which == 49 || e.which == 96 || e.which == 97 ) {
			return true;
		} else {
			e.preventDefault();
			}
		});
	
	$("#convert").click(function() {
		if ($('#convert').hasClass('disabled')) {
			return;
		}
		$('.introjs-nextbutton').click();
		l = $("#binarylValue").val();
		 x = l.length - 1;
		for (var i=0; i<l.length; i++) {
			$("#binary").append("<span id= a"+i+ " class='box  text-center ct-code-b-black opacity00'><span id= b"+ i +">"+ l[i] +"</span></span>");
		}
		
		for (var i = l.length - 1, j=0; i >= 0; i--, j++) {
			$("#power").append("<span class='box2  text-center ct-code-b-black'>" +
					"<span id= powervalues" +i+ ">" + 2 +"<sup class='ct-code-b-green'>"+ i +"</sup></span></span>");
			
			if (i > 0) {
				$("#powecalculation").append("<span id = 'overall"+i+"'><span id = 'bracket" + i +"' class = 'bracket opacity00'>(</span>"+ 
						"<span id = 'total" + i + "' class='total'>"+ 
						"<span id= c"+j+ " class='ct-code-b-black opacity00'>"+ l[j] +"</span>"+
						"<b id = 'ct-code-b-red" + i +"'class='ct-code-b-red opacity00'> x </b></span> "+ 
						"<span id = 'powerv" + i + "' class= 'ct-code-b-black opacity00'>" + 2 +"<sup class='ct-code-b-green'>"+ i +"</sup></span>" +
						"<span id = 'bracket2" + i +"'  class = 'bracket opacity00'>)</span></span><span id = 'plus" + i + "' class = 'plus opacity00'> + </span>");
	        } else {
	        	$("#powecalculation").append("<span id = 'overall" + i +"'><span id = 'bracket" + i +"' class = 'bracket opacity00'>(</span>" + 
	        			"<span id = 'total" + i +"' class = 'total'><span id= c"+j+ " class='ct-code-b-black opacity00'>"+ l[j] +"</span>" +
	        			"<b id = 'ct-code-b-red" + i +"' class='ct-code-b-red opacity00'> x </b></span> "+ 
	        			"<span id='powerv" + i +"' class='ct-code-b-black opacity00'>" + 2 +"<sup class='ct-code-b-green'>"+ i +"</sup></span>" +
	        			"<span id = 'bracket2" + i +"'class = 'bracket opacity00'>)</span></span>");
	        			
	        }
		}
		
		for (var i = l.length - 1, j=0; i >= 0; i--, j++) {
			var result = Math.pow(2, i);
			console.log(result);
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
				$("#adding").append("<span><span class='box1 text-center ' id = r" + i + ">("+sum+")<sub>(<span class=''id='radix'>" +10 +"</span>)</sub></span></span>");
				}
			}
		});

	$("#binarylValue").keyup(function() {
		var yourInput = $(this).val();
		re = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi;
		var isSplChar = re.test(yourInput);
		if(isSplChar)
		{
			var no_spl_char = yourInput.replace(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, '');
			$(this).val(no_spl_char);
		}
		if ($("#binarylValue").val().length > 0) {
			$("#convert").removeClass("disabled").removeClass("opacity40");
		} else {
			$("#convert").addClass("disabled").addClass("opacity40");
			}
		});
	
	});
		
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

	var p = 0;
function calculate(callBackFunction) {
	var l1 = $("#b" + x).offset();
 	var l2 = $("#c" + x).offset();
 	var toplen = l1.top - l2.top;
 	var leftlen = l1.left- l2.left;
 	var l3 = $("#powervalues" + p).offset();
    $("#powerv" + p).offset({"top": l3.top,"left": l3.left});
 	TweenMax.to("#bracket2" + p, 0.4 , {opacity:1, onComplete: function() {
 	$("#bracket2" + p).removeClass("opacity00");
	$("#powerv" + p).removeClass("opacity00");
	$("#powervalues" + p).effect('highlight',  {color: "#F08080"}, 3000);
	TweenMax.to("#powerv"+ p, 0.7, {Color:"blue", opacity:1, top: 0, left: 0, onComplete:function() {
	 	TweenMax.to("#ct-code-b-red" + p, 0.4 , {opacity:1, onComplete: function() {
	 		$("#ct-code-b-red" + p).removeClass("opacity00");
	 			$("#c" + x).removeClass("opacity00");
	 			TweenMax.from("#c"+ x, 0.7, {backgroundColor:"#7FFFD4", opacity:1, top: toplen, left: leftlen, onComplete:function() {
	 				TweenMax.to("#bracket" + p, 0.4 , {opacity:1, onComplete: function() {
 		 				$("#bracket" + p).removeClass("opacity00");
	 					TweenMax.to("#plus" + (p+1), 0.5, {opacity:1, onComplete: function() {
	 		 				$("#plus" + (p+1)).removeClass("opacity00");
		 					if (x >= 1 && p < l.length) {
			 		  			x--;
				 	  			p++;
			 		  	    	calculate(callBackFunction);
	 		  	    		} else {
		 		  	    		if(typeof callBackFunction === "function") {
		 		  	    			callBackFunction();
		 		  	    		}
	 		  	    		}
	 					}});
	 				}});
	 			}});
	 		}});		

  		}});
	}});
}	
var q = 0;
function power(callBackFunction) {
	if (q < l.length) {
		$("#fourthbox").removeClass("visibility-hidden");
		var l4 = $("#total" + q).offset();
	    $("#onemultiply" + q).offset({"top": l4.top,"left": l4.left});
	    var l5 = $("#powerv" + q).offset();
	    $("#d" + q).offset({"top": l5.top,"left": l5.left});
	 	TweenMax.to("#bracket4" + q, 0.4 , {opacity:1, onComplete: function() {
		$("#bracket4" + q).removeClass("opacity00");
		$("#d" + q).removeClass("opacity00");
		$("#d" + q).effect('highlight',  {color: "#F08080"}, 1000);
		TweenMax.to("#d"+ q, 0.7, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
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
	$("#fifthbox").removeClass("visibility-hidden");
	var l6 = $("#multiplytotal" + s).offset();
    $("#multiplytwo" + s).offset({"top": l6.top,"left": l6.left});
 	$("#multiplytwo" + s).removeClass("opacity00");
 	$("#multiplytotal" + s).effect('highlight',  {color: "#F08080"}, 1000);
	TweenMax.to("#multiplytwo"+ s, 0.7, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		TweenMax.to("#plus2" + (s+1), 0.4 , {opacity:1, onComplete: function() {
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
 	$("#multiplytwonos").effect('highlight',  {color: "#F08080"}, 1000);
	TweenMax.to("#r"+ t, 1, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
  		 if (t < l.length) {
		 t++;
			addition();
       	}
  }});
}

</script>
</html>