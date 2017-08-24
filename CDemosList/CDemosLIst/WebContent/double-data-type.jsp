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
<title>double data-type</title>
<style>

.margin4 {
	margin-top : 5px;
}
.margin10 {
	margin-top : 10px;
}

 #firstDiv {
	margin-left : -15px !important;
}
.introjs-nextbutton, .nextBtn, .nextBtn1, .restart,#divisionBtn {
	background-color : green !important;
}

.Z-Index {
	z-index: 9999999;
	position: relative;
}
.margin20 {
	margin-top : 20px;
}

.padding10 {
	padding-top : 15px;
}

#mainDiv {
	height : 320px;
	position :absolute;
}

.border-box {
	border: 1px solid black;
    display: -moz-stack;
    height: 14px !important;
    margin-left: 2px;
    width: 10px !important;
}
.borderless-box {
    display: -moz-stack;
    height: 14px !important;
    margin-left: 3px;
    width: 18px !important;
}
.bord-box {
   display: -moz-stack;
   height: 14px !important;
   margin-left: 3px;
   width: 15px !important;
}
.byte-div {
	margin-left : 2px;
}
#addDiv {
	margin-left : 18px;
}
#firstDiv {
	margin-left : 17px;
}
#secondDiv , #second2Div {
	margin-left : 18px;
}

#thirdDiv {
	margin-left : 180px !important;
}

#third3Div {
	margin-left : 230px !important;
}

.padding3 {
	padding : 2px;
}
.padding5 {
	padding : 3px 5px;
}
#spanDiv {
	margin-top : 6px;
}
#binaryValue > span {
    border: 1px solid blue;
    float: right;
    padding: 8px 6px;
}
#FractionalBinaryValue > span {
    border: 1px solid blue;
    padding: 0px 3px; 
}
.color-pink {
	background-color : pink;
}
.color-blue {
	background-color: #D9FFCC;
}
#box0 {
	background-color : red;
}
#boxDiv1 {
	text-align : center;
	color : red;
}
.box-border {
	border: 1px solid grey;
	border-radius: 8px;
	margin: 2px 0 0 5px;
} 
#finalDivtext {
	height : 30px;
}
#numDiv {
	z-index : 9999999;
	position: relative;
	background-color: #fffae6;
}
.marginleft20 {
	margin-left : -10px;
}
#floatBox {
	height : 20px;
	width : 30px;
	border : 2px solid;
	border-radius : 3px;
	text-align: center;
	margin-left : 15px !important;
}
#floatDiv {
	height : 20px;
}

 #fdec {
	display : flex;
}

#floatVar {
	margin-left : 40px;
}

.marginleft4 {
	margin-left : 4px; 
}
.box-color-blue {
	color : blue;
}
.box-color-green {
	color : green;
}
.sign-color-red {
	color : red;
}
#fspan31 {
	margin-left : 50px;
} 

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}
</style>
</head>
<body>
<script>
var cell = 32;
var dataStep = 1;
var rightVal = 625;
var leftVal = 12;
var index = 1;
var quotient;
var remainder;
var divisionStep  = 1;
var rightDec;
function introGuide() {
	introcode = introJs();
	introcode.setOptions({
	showStepNumbers : false,
	exitOnOverlayClick : false,
	showBullets : false,
	exitOnEsc : false,
	keyboardNavigation : false,
	steps :[
	        {
				element : '#mainDiv',
				position : 'bottom',
				tooltipClass : 'hide',
				intro : ''
	        },
	        {
				element : "#restartBtn",
				intro : "Click to Restart",
				tooltipClass: "introjs-tooltip-min-width-custom",
				position : "right"
			}
	        ]
	});
	introcode.onbeforechange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "mainDiv":
			$('.introjs-nextbutton').hide();
			typingContent = '<ul><li><b>double data</b> represents real numbers with a precision of 14-17 decimal places.</li><li>It occupies <b>8 bytes(64 bits)</b> of memory to a double variable.</li><span id = "typing11"></span>'
			typing('#typing1',typingContent,function() {
				typingContent = '<li><b>double </b> value does not store in a normal integer format, it stores in <b>IEEE 754 standard</b> format.</li><span id = "typing111"></span></ul>'
				typing('#typing11',typingContent,function() {
					typingContent = '<ul><li><b>IEEE 754 standard</b> specifies the memory given for a double variable as </li></ul>'
					typing('#typing111',typingContent,function() {
						for(var i = 1; i < 12; i++) {
							$('#boxDiv').append('<div class = "border-box color-pink opacity00" id = box'+i+'></span>');
						}
						for(var i = 13; i < 64; i++) {
							$('#boxDiv').append('<div class = "border-box color-blue opacity00" id = box'+i+'></span>');
						}
						for(var i = 64; i > 25; i--) {
							$('#spanDiv').append('<div class = "borderless-box" id = span'+i+'>'+i+'</div>');
						}
						for(var i = 25; i >= 16; i--) {
							$('#spanDiv').append('<div class = "borderless-box padding1" id = span'+i+'>'+i+'</div>');
						}
						for(var i = 15; i >= 10; i--) {
							$('#spanDiv').append('<div class = "borderless-box" id = span'+i+'>'+i+'</div>');
						}
						for(var i = 9; i >= 0; i--) {
							$('#spanDiv').append('<div class = "bord-box" id = span'+i+'>'+i+'</div>');
						}
						$('#box0').fadeTo(1000,1,function() {
							$('#floatsignDiv').css({'opacity' : '1'});
							$('#firstDiv').css({'opacity' : '1'});
							$('#floatnumDiv').css({'opacity' : '1'});
							$('#first1Div').css({'opacity' : '1'});
							$("#box0").effect( "highlight",{color: 'yellow'}, 500,function() {
							$('.introjs-tooltip').removeClass("hide");
							typingContent = '<b>Sign bit</b> stores the sign of a given double in 1 bit.'
							typing('.introjs-tooltiptext',typingContent,function() {
								$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn'>Next &#8594;</a>"); 
								$('.animation-nextbtn').click(function() { 
									$('.introjs-tooltip').addClass("hide");
									$('.animation-nextbtn').remove();	
									$('.color-pink').fadeTo(1000,1);
									$('#secondDiv').css({'opacity' : '1'});
									$('#second2Div').css({'opacity' : '1'});
									$('.introjs-tooltip').removeClass("hide");
									typingContent = '<b>Exponent bit</b> of the scientific notation is achieved by shifting the <b>radix</b> or decimal point to number of positions.It occupies 11 bits.</li>'
									typing('.introjs-tooltiptext',typingContent,function() {
										$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn'>Next &#8594;</a>"); 
										$('.animation-nextbtn').click(function() { 
											$('.introjs-tooltip').addClass('hide');
											$('.animation-nextbtn').remove();
											$('.color-blue').fadeTo(1000,1);
											$('#thirdDiv').css({'opacity':'1'});
											$('#third3Div').css({'opacity':'1'});
											$('.introjs-tooltip').removeClass("hide");
											typingContent = '<b>Mantissa</b> is the right side of radix or decimal point after exponent is achieved.It occupies 52 bits.'
											typing('.introjs-tooltiptext',typingContent,function() {
												$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn'>Next &#8594;</a>"); 
												$('.animation-nextbtn').click(function() { 
													$('.animation-nextbtn').remove();	
													$('.introjs-tooltip').addClass('hide');
													$('#floatdec').css({'opacity':'1'});
													$('#inputDiv').fadeTo(1000,1,function() {
														setTimeout(function() { 
															$('#floatVar').fadeTo(1000,1,function() {
																$('#floatBox').fadeTo(1000,1,function() {
																	$('.byte-div').fadeTo(1000,1,function() {
																		$('#addDiv').fadeTo(1000,1,function() {
																			$('.introjs-tooltip').removeClass('hide');
																			typingContent = 'The double variable is converted to binary and stored in memory.'
																			typing('.introjs-tooltiptext',typingContent,function() { 
																				$('.introjs-nextbutton').show();
																			 });
																		});
																	});
																});
															});
														 },1000); 
													});
												});
											});
										}); 
									}); 
								});
							});
						});
					});
		 		});
			});
		});
		break;
		case "restartBtn":
			$('.introjs-nextbutton').hide();
			$('.introjs-helperLayer').one('transitionend', function () {
				$("#restartBtn").removeClass('visibility-hidden');
				$("#restartBtn").click(function() {
					location.reload();
				});
			});
		break;
		} 
	});
	introcode.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	
	
}
$(document).ready(function() {
	introGuide();
});


function typing(typingId,typingContent,callbackFunction) {
$(typingId).typewriting(typingContent, {
	"typing_interval":10,
	"cursor_color": "blue"
}, function() {
	$(typingId).removeClass('typingCursor');
	callbackFunction();
});
}

	
</script>
<div class = 'ct-box-main'>
	<div class = 'text-center'>
		<h1 class = 'label ct-demo-heading first-heading'>double data type</h1>	
	</div>
	<div class = 'buttons-div'>
		<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
	</div> 
		<div class = 'col-xs-offset-2 col-xs-8 main-div padding10' id = 'mainDiv'>
			<span id = 'typing1' class = 'padding10'></span>
			<div class = 'box-div col-xs-12 ' id = 'boxDiv'>
				<div class = "border-box opacity00 padding2" id = "box0"></div>
			</div>
			
			<div class = 'floatsign-div col-xs-12 opacity00 margin4' id = 'floatsignDiv'>
				<span id = 'firstDiv' class = 'opacity00 margin10'>sign bit</span><span id = 'secondDiv' class = 'opacity00 margin10'>exponent bits</span><span id = 'thirdDiv' class = 'opacity00 margin10'>mantissa</span>
			</div>
			<div class = 'floatnum-div col-xs-12 opacity00 margin4' id = 'floatnumDiv'>
				<span id = 'first1Div' class = 'opacity00 margin10'>1 bit</span><span id = 'second2Div' class = 'opacity00 margin10'>11 bits</span><span id = 'third3Div' class = 'opacity00 margin10'>52 bits</span>
			</div>
			<div class = "input-main-div col-xs-12" id = 'inputmainDiv'>
			 	<br><span id = 'floatdec' class = 'opacity00 margin10'>A <b>double</b> is declared and initialised as</span>
				<br><div id="inputDiv" class="col-xs-offset-2 col-xs-7 opacity00 margin10">double&nbsp;&nbsp;&nbsp;&nbsp; d&nbsp;&nbsp;&nbsp;&nbsp; = &nbsp;&nbsp;&nbsp;&nbsp<b>2.54</b>;
						<br><br><span id = "floatVar" class = 'opacity00 margin10'> d <span class ="fa fa-arrow-right marginleft4"></span>&nbsp;&nbsp;&nbsp;variable</span>
						<br><div id = 'fdec'><div id = 'floatBox' class = 'opacity00 margin10'>2.54</div><span class = 'opacity00 byte-div margin4 marginleft4'><span class ="fa fa-arrow-right margin4 marginleft4"></span>&nbsp;&nbsp;8 bytes</span></div>
						<div id = 'addDiv' class = 'opacity00 margin10'>1289 <span class ="fa fa-arrow-right marginleft4"></span>&nbsp;&nbsp;&nbsp;address</div>
					</div>
			</div>
		</div>
</div> 

</body>
</html>