<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
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
<title>constants-in-c</title>
<style>
.margin2 {
	margin-top : 2px !important;
}
.margin5 {
	margin-top : 5px;
}
.margin20 {
	margin-top : 20px;
}
.margin10 {
	margin-top : 10px;
}

.marginleft5 {
	margin-left : 10px !important;
}
.ct-code-b-red {
	font-family: monospace;
	font-weight: bold;
	color: rgb(252, 66, 66);
}

.box-border {
	border : 1px solid;
}

#intDiv, #charDiv, #floatDiv, #stringDiv {
	display : none;
}

#mainDiv {
	height : 420px;
}

#typingbox {
	padding-top : 10px!important;
	height : 40px;
}

#stateDiv {
	padding-top : 5px!important;
	height : 80px;
}

#constanttypeDiv {
	padding-top : 5px!important;
	height : 320px;
}

#simpletextDiv {
	padding-top : 5px!important;
	height : 320px;
}

#conheading {
	color: red;
	height : 20px;
	font-size : 15px;
}

.color-red {
	color: red;
}
.color-green {
	color: green;
}
.color-yellow {
	color : yellow;
}

.height15 {
	height : 25px;
	text-align : center;
}

.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 1000000 !important;
}

</style>
</head>
<body>
<script>
var simple;
function introGuide() {
	introcode = introJs();
	introcode.setOptions({
		showStepNumbers : false,
		exitOnOverlayClick : false,
		showBullets : false,
		exitOnEsc : false,
		keyboardNavigation : false,
		steps : [ 
		{
			element : '#typingbox',
			intro : '',
			position : 'right',
			tooltipClass : "hide"
		},
		{
			element : '#constanttypeDiv',
			intro : '',
			position : 'right',
			tooltipClass : "hide"
		}
		]
	});
	introcode.onbeforechange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) 
		{
		case "typingbox":
		$('.introjs-nextbutton').hide();
		typingContent = '</li></ul><span id = "typing6" class = "margin5"></span>'; 
		typing('#typingbox', typingContent,function() { 
			typingContent = 'Constants are the fixed values which remain '
				+'unchanged during the execution of a C program.'; 
			typing('#typing6', typingContent,function() { 	
				setTimeout (function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = 'Let us see the different types of constants.'; 
					typing('.introjs-tooltiptext', typingContent,function() {
						$('.introjs-nextbutton').show();
						$('#constanttypeDiv').removeClass('visibility-hidden');
					});
				},1000);
		 	}); 
		});
		break;
		case "constanttypeDiv":
			$("#typingbox").addClass('z-index1000000');
			$("#constanttypeDiv").removeClass('z-index1000000');
			$('#intDiv').attr('disabled',false);
			$('#floatDiv').attr('disabled',false);
			$('#charDiv').attr('disabled',false);
			$('#stringDiv').attr('disabled',false);
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			if(introcode._currentStep == 1) {
				$('.type-name').fadeTo(1000,1,function() {
					$("#intDiv").slideDown('slow',function() {
						$("#floatDiv").slideDown('slow',function() {
							$("#charDiv").slideDown('slow',function() {
								$("#stringDiv").slideDown('slow',function() {
									$('.introjs-tooltip').removeClass("hide");
									typingContent = 'Click on any of these buttons to know about the different types of constants'; 
									typing('.introjs-tooltiptext', typingContent,function() {
									});
								});
							});
						});
					});
				});		
			} else {
			 	$('#defDiv').empty();
			 	$('#examDiv').empty();
			 	$('#defDiv').removeClass('margin2');
				$('#examDiv').removeClass('margin2');
			 	for(var i = 0;i <= 5;i++) {
				 	$('#exampleDiv'+i).removeClass('z-index1000000');
				 	$('#exampleDiv'+i).empty();
				 	$('#exampleDiv'+i).removeClass('color-red');
				 	$('#exampleDiv'+i).removeClass('color-green');
				 	$('#exampleDiv'+i).addClass('margin10');
					$('#exampleDiv'+i).css({'height' : '25'});
			 	}
				$('.introjs-tooltip').removeClass("hide");
				typingContent = 'Click on any of these buttons to know about the different types of constants'; 
				typing('.introjs-tooltiptext', typingContent,function() {
				});
			}
		});
		break;
		
		case "simpletextDiv":
			$('#intDiv').attr('disabled',true);
			$('#floatDiv').attr('disabled',true);
			$('#charDiv').attr('disabled',true);
			$('#stringDiv').attr('disabled',true);
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			var action =  introcode._introItems[introcode._currentStep].action;
			if (action == 'integer') {
				$('#defDiv').addClass('margin2');
				$('#examDiv').addClass('margin2');
				typingContent = '<div class = "col-xs-offset-4 col-xs-4" id = "conheading">integer constant</div>'
				typing('#defDiv', typingContent,function() {
					typingContent = 'An integer constant is a sequence of digits with out decimal point representing a value.<br>'
					+'An integer constant can be of three different types <ul><li><b>decimal integer constant</b></li><li><b>Octal integer constant</b></li><li><b>hexadecimal integer constant</b></li></ul><span class = "opacity00 ex-div margin2">Examples:</span>'
					typing('#examDiv', typingContent,function() {
						typingContent = 'Let us consider examples'; 
						typing('.introjs-tooltiptext', typingContent,function() {
							$('.ex-div').fadeTo(500,1,function(){
								setTimeout(function() {
									introcode.nextStep();
								},1000);
							});
						});
					});						
				});	
			} else if (action == 'float') {
				typingContent = '<div class = "col-xs-offset-3 col-xs-6" id = "conheading"><h4>floating point constant</h4></div>'
				typing('#defDiv', typingContent,function() {
					typingContent = 'Any number with a decimal point is called a floating point constant or a Single Precision Constant.<br>It can be written in the exponential form(<b>e</b> or <b>E</b> followed by positive or negative integer).<span class = "opacity00 ex-div margin5"><br>Examples:<br></span>'
					typing('#examDiv', typingContent,function() {
						typingContent = 'Let us consider examples'; 
						typing('.introjs-tooltiptext', typingContent,function() {
							$('.ex-div').fadeTo(500,1,function(){
								setTimeout(function() {
									introcode.nextStep();
								},1000);
							});
						});
					});						
				});	
			} else if (action == 'char') {
				typingContent = '<div class = "col-xs-offset-4 col-xs-4" id = "conheading"><h4>character constant</h4></div>'
				typing('#defDiv', typingContent,function() {
					typingContent = 'A character written with in single quotes is called a <span class = "color-red">character constant</span>.<span class = "opacity00 ex-div margin5"><br>Examples:<br></span>'
					typing('#examDiv', typingContent,function() {
						typingContent = 'Let us consider examples'; 
						typing('.introjs-tooltiptext', typingContent,function() {
							$('.ex-div').fadeTo(500,1,function(){
								setTimeout(function() {
									introcode.nextStep();
								},1000);
							});
						});
					});						
				});	
			} else if (action == 'string') {
				typingContent = '<div class = "col-xs-offset-4 col-xs-4" id = "conheading"><h4>string constant</h4></div>'
				typing('#defDiv', typingContent,function() {
					typingContent = 'A <span class = "color-red">string constant</span> is a sequence of zero or more characters enclosed with in double quotes.<br>'
						+'A string constant is also known as a <span class = "color-red">string literal</span>.<span class = "opacity00 ex-div margin5"><br>Examples:<br></span>'
					typing('#examDiv', typingContent,function() {
						typingContent = 'Let us consider examples'; 
						typing('.introjs-tooltiptext', typingContent,function() {
							$('.ex-div').fadeTo(500,1,function(){
								setTimeout(function() {
									introcode.nextStep();
								},1000);
							});
						});
					});						
				});	
			}
		});
		break;
		case "exampleDiv1":
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			var action =  introcode._introItems[introcode._currentStep].action;
			if (action == 'integer') {
				$('#exampleDiv1').addClass('margin2');
				$('#exampleDiv1').css({'height' : '35'});
				introcode.refresh();
				typingContent = '<span id = "comma1">25</span><br><span id = "comma11" class = "opacity00">4, 3</span>'
				typing('#exampleDiv1', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because an <span class = "color-yellow">integer constant </span>can contain integers within maximum and minimum bits limit for a int datatype.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						$('#comma1').addClass('color-green');
						$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn1'  onclick='nextBtn1()'>Next &#8594;</a>");
					});						
				});	
			} else if (action == 'float') {
				typingContent = '<span id = "comma1">.25</span>'
				typing('#exampleDiv1', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because a <span class = "color-yellow">floating point constant </span>can have either a integral part or fractional part.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv1').addClass('color-green');
						},1000);
					});						
				});	
			} else if (action == 'char') {
				typingContent = '<span id = "comma1">\'C\'</span>'
				typing('#exampleDiv1', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because a single character should be enclosed in <span class = "color-yellow">single quotes</span.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv1').addClass('color-green');
						},1000);
					});						
				});	
			} else if (action == 'string') {
				typingContent = '<span id = "comma1">\'C\'</span>'
				typing('#exampleDiv1', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is an <span class = "color-red">invalid</span> constant because a string constant should be enclosed in <span class = "color-yellow">double quotes</span.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv1').addClass('color-red');
						},1000);
					});						
				});	
			}
		});
		break;
		case "exampleDiv2":
			$('#exampleDiv1').addClass('z-index1000000');
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			var action =  introcode._introItems[introcode._currentStep].action;
			if (action == 'integer') {
				$('#exampleDiv2').addClass('margin2');
				$('#exampleDiv2').css({'height' : '35'});
				introcode.refresh();
				typingContent = '<span id = "comma2">53UL</span><br><span id = "comma21" class = "opacity00">64.5</span>'
				typing('#exampleDiv2', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because a <span class = "color-yellow">decimal integer constant </span>may end with <b>u</b> or <b>U</b> representing <span class = "color-yellow">unsigned int</span>'
					+' <b>l</b> or <b>L</b> representing <span class = "color-yellow">long int</span> or <b>UL</b> representing <span class = "color-yellow">unsigned long int</span>.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						$('#comma2').addClass('color-green');
						$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn2' onclick='nextBtn2()'>Next &#8594;</a>");
					});						
				});	
			} else if (action == 'float') {
				typingContent = '<span id = "comma2">527.415F</span>'
				typing('#exampleDiv2', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because <span class = "color-yellow">floating point constant</span> can end with <span class = "color-yellow">f or F</span>.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv2').addClass('color-green');
						},1000);
					});						
				});	
			} else if (action == 'char') {
				typingContent = '<span id = "comma2">\'r</span>'
				typing('#exampleDiv2', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is an <span class = "color-red">invalid</span> constant because <span class = "color-yellow">single quotes</span> are not on both sides.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv2').addClass('color-red');
						},1000);
					});						
				});	
			} else if (action == 'string') {
				typingContent = '<span id = "comma2">"ganga is a holy river"</span>'
				typing('#exampleDiv2', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because a <span class = "color-yellow">string constant</span> can have zero or more characters with double quotes.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv2').addClass('color-green');
						},1000);
					});						
				});	
			}
		});
		break;
		case "exampleDiv3":
			$('#exampleDiv2').addClass('z-index1000000');
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			var action =  introcode._introItems[introcode._currentStep].action;
			if (action == 'integer') {
				$('#exampleDiv3').addClass('margin2');
				$('#exampleDiv3').css({'height' : '35'});
				introcode.refresh();
				typingContent = '<span id = "comma3">023</span><br><span id = "comma31" class = "opacity00">028</span>'
				typing('#exampleDiv3', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because an <span class = "color-yellow">octal integer constant </span>must start with <b>0</b>.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						$('#comma3').addClass('color-green');
						$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn3' onclick='nextBtn3()'>Next &#8594;</a>");
					});						
				});	
			} else if (action == 'float') {
				typingContent = '<span id = "comma3">6</span>'
				typing('#exampleDiv3', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is an <span class = "color-red">invalid</span> constant because for a <span class = "color-yellow">floating point</span> constant either a decimal or an exponent must be present.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv3').addClass('color-red');
						},1000);
					});						
				});	
			} else if (action == 'char') {
				typingContent = '<span id = "comma3">\'+\'</span>'
				typing('#exampleDiv3', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because <span class = "color-yellow">special characters</span> are allowed.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv3').addClass('color-green');
						},1000);
					});						
				});	
			} else if (action == 'string') {
				typingContent = '<span id = "comma3">Program</span>'
				typing('#exampleDiv3', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is an <span class = "color-red">invalid</span> constant because a <span class = "color-yellow">string literal</span> should be enclosed in double quotes.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv3').addClass('color-red');
						},1000);
					});						
				});	
			}
		});
		break;
		case "exampleDiv4":
			$('#exampleDiv3').addClass('z-index1000000');
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			var action =  introcode._introItems[introcode._currentStep].action;
			if (action == 'integer') {
				$('#exampleDiv4').addClass('margin2');
				$('#exampleDiv4').css({'height' : '35'});
				introcode.refresh();
				typingContent = '<span id = "comma4">0X23</span><br><span id = "comma41" class = "opacity00">0A8</span>'
				typing('#exampleDiv4', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because an <span class = "color-yellow">hexadecimal integer constant </span>must start with <b>0X</b> or <b>0x</b>.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						$('#comma4').addClass('color-green');
						$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn4' onclick='nextBtn4()'>Next &#8594;</a>");
					});						
				});	
			} else if (action == 'float') {
				typingContent = '<span id = "comma4">–0.008e-4</span>'
				typing('#exampleDiv4', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because an exponent e or E can have a positive or negative integer.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv4').addClass('color-green');
						},1000);
					});						
				});	
			} else if (action == 'char') {
				typingContent = '<span id = "comma4">\"C\"</span>'
				typing('#exampleDiv4', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is an <span class = "color-red">invalid</span> constant because <span class = "color-yellow">character</span> should be in <span class = "color-yellow">single quotes</span>.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv4').addClass('color-red');
						},1000);
					});						
				});	
			} else if (action == 'string') {
				typingContent = '<span id = "comma4">"123"</span>'
				typing('#exampleDiv4', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because a <span class = "color-yellow">string constant</span> can contain integers and blank spaces.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv4').addClass('color-green');
						},1000);
					});						
				});	
			}
		});
		break;
		case "exampleDiv5":
			$('#exampleDiv4').addClass('z-index1000000');
			$('.introjs-helperLayer').one('transitionend', function() {
			$('.introjs-nextbutton').hide();
			var action =  introcode._introItems[introcode._currentStep].action;
			$('#exampleDiv1').addClass('introjs-showElement');  
			if (action == 'integer') {
				$('#exampleDiv5').addClass('margin2');
				$('#exampleDiv5').css({'height' : '35'});
				introcode.refresh();
				typingContent = '<span id = "comma5">0XA57</span><br><span id = "comma51" class = "opacity00">0xA.8</span>'
				typing('#exampleDiv5', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because an <span class = "color-yellow">hexadecimal integer constant </span>can be represented by numbers 0 to 9 and A to F.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						$('#comma5').addClass('color-green');
						$('.introjs-tooltipbuttons').append("<a style='background-color:green' class='introjs-button animation-nextbtn5' onclick='nextBtn5()'>Next &#8594;</a>");
					});						
				});	
			} else if (action == 'float') {
				typingContent = '<span id = "comma5">5,4 e8.5</span>'
				typing('#exampleDiv5', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is an <span class = "color-red">invalid</span> constant because <span class = "color-yellow">blank spaces, commas</span> are not allowed and the exponent should be an integer quantity.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv5').addClass('color-red');
						},1000);
					});						
				});	
			} else if (action == 'char') {
				typingContent = '<span id = "comma5">\' \'</span>'
				typing('#exampleDiv5', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because <span class = "color-yellow">blank spaces</span> are allowed.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv5').addClass('color-green');
						},1000);
					});						
				});	
			} else if (action == 'string') {
				typingContent = '<span id = "comma5">"2,4&f"</span>'
				typing('#exampleDiv5', typingContent,function() {
					$('.introjs-tooltip').removeClass("hide");
					typingContent = '<span>This is a valid constant because <span class = "color-yellow">special characters</span> are allowed.</span>'
					typing('.introjs-tooltiptext', typingContent,function() {
						setTimeout(function() {
							$('.introjs-nextbutton').show();
							$('#exampleDiv5').addClass('color-green');
						},1000);
					});						
				});	
			}
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
	$('#intDiv').click(function() {
		action = "integer";
		$('#simpletextDiv').removeClass('visibility-hidden');
		dynamicSteps("integer");
		introcode.nextStep();
		$("#constanttypeDiv").addClass('z-index1000000'); 
	});
	$('#floatDiv').click(function() {
		action = "float";
		$('#simpletextDiv').removeClass('visibility-hidden');
		dynamicSteps("float");
		introcode.nextStep();
		 $("#constanttypeDiv").addClass('z-index1000000');
	});
	$('#charDiv').click(function() {
		action = "char";
		$('#simpletextDiv').removeClass('visibility-hidden');
		dynamicSteps("char");
		introcode.nextStep();
		$("#constanttypeDiv").addClass('z-index1000000');
	});
	$('#stringDiv').click(function() {
		action = "string";
		$('#simpletextDiv').removeClass('visibility-hidden');
		dynamicSteps("string");
		introcode.nextStep();
		$("#constanttypeDiv").addClass('z-index1000000');
	});
});

function dynamicSteps(action) {
	var dynamicStep = {
			"element" : "#simpletextDiv",
		    "position" : "right",
		    "intro" : "",
		    
		    action :action,
		}
	introcode.insertOption(introcode._currentStep + 1, dynamicStep); 	
	var dynamicStep = {
			"element" : "#exampleDiv1",
		    "position" : "right",
		    "intro" : "",
		    tooltipClass : "hide",
		    action :action,
		}
	introcode.insertOption(introcode._currentStep + 2, dynamicStep);
	var dynamicStep = {
			"element" : "#exampleDiv2",
		    "position" : "right",
		    "intro" : "",
		    tooltipClass : "hide",
		    action :action,
		}
	introcode.insertOption(introcode._currentStep + 3, dynamicStep); 
	var dynamicStep = {
			"element" : "#exampleDiv3",
		    "position" : "right",
		    "intro" : "",
		    tooltipClass : "hide",
		    action :action,
		}
	introcode.insertOption(introcode._currentStep + 4, dynamicStep);
	var dynamicStep = {
			"element" : "#exampleDiv4",
		    "position" : "right",
		    "intro" : "",
		    tooltipClass : "hide",
		    action :action,
		}
	introcode.insertOption(introcode._currentStep + 5, dynamicStep); 
	var dynamicStep = {
			"element" : "#exampleDiv5",
		    "position" : "right",
		    "intro" : "",
		    tooltipClass : "hide",
		    action :action,
		}
	introcode.insertOption(introcode._currentStep + 6, dynamicStep); 
	var dynamicStep = {
	    "element" : "#constanttypeDiv",
	    "position" : "right",
	    "tooltipClass" : "hide",
	}
    $('.introjs-nextbutton').hide();
    introcode.insertOption(introcode._currentStep + 7, dynamicStep);
}

function nextBtn1() {
	$('.animation-nextbtn1').remove(); 
	$('#comma11').fadeTo(1000,1,function() {
		typingContent = '<span>This is an invalid constant because an <span class = "color-yellow">integer constant </span>cannot contain blank spaces or commas.</span>'
		typing('.introjs-tooltiptext', typingContent,function() {
			$('#comma11').addClass('color-red');
			setTimeout(function() {
				$('.introjs-nextbutton').show();
			},1000);
		});
	});
}

function nextBtn2() {
	$('.animation-nextbtn2').remove(); 
	$('#comma21').fadeTo(2000,1,function() {
		typingContent = '<span>This is an <span class = "color-red">invalid </span>constant because an <span class = "color-yellow">decimal integer constant </span>cannot contain <b>decimal point</b>.</span>'
		typing('.introjs-tooltiptext', typingContent,function() {
			$('#comma21').addClass('color-red');
			setTimeout(function() {
				$('.introjs-nextbutton').show();
			},1000);
		});
	});
}

function nextBtn3() {
	$('.animation-nextbtn3').remove(); 
	$('#comma31').fadeTo(2000,1,function() {
		typingContent = '<span>This is an <span class = "color-red">invalid </span>constant because an <span class = "color-yellow">octal integer constant </span>can contain only numbers <b>0 to 7</b>.</span>'
		typing('.introjs-tooltiptext', typingContent,function() {
			$('#comma31').addClass('color-red');
			setTimeout(function() {
				$('.introjs-nextbutton').show();
			},1000);
		});
	});
}

function nextBtn4() {
	$('.animation-nextbtn4').remove(); 
	$('#comma41').fadeTo(2000,1,function() {
		typingContent = '<span>This is an <span class = "color-red">invalid </span>constant because an <span class = "color-yellow">hexadecimal integer constant </span>must start with <b>0x or 0X</b>.</span>'
		typing('.introjs-tooltiptext', typingContent,function() {
			$('#comma41').addClass('color-red');
			setTimeout(function() {
				$('.introjs-nextbutton').show();
			},1000);
		});
	});
}

function nextBtn5() {
	$('.animation-nextbtn5').remove(); 
	$('#comma51').fadeTo(2000,1,function() {
		typingContent = '<span>This is an <span class = "color-red">invalid </span>constant because an <span class = "color-yellow">hexadecimal integer constant </span>cannot contain decimal point, commas and special characters.</span>'
		typing('.introjs-tooltiptext', typingContent,function() {
			$('#comma51').addClass('color-red');
			setTimeout(function() {
				$('.introjs-nextbutton').show();
			},1000);
		});
	});
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
<div class='ct-box-main'>
	<div class='text-center'>
		<h1 class='label ct-demo-heading'>Constants in C</h1>
	</div>
<br>
	<div class = "main-div col-xs-offset-2 col-xs-8" id = 'mainDiv' >
		<div class = 'row'>
			<div class = "typing-box col-xs-offset-2 col-xs-8 box-border" id = "typingbox">
			</div>
		</div>
		<div class = 'row margin5'>
			<div class = "constant-div col-xs-3 visibility-hidden margin10" id = 'constanttypeDiv'>
				<div class='text-center margin20'>
					<h4 class='label ct-demo-heading type-name opacity00'>Types of constants</h4>
				</div>
				<div class = 'text-center'>
					<div class = 'int-div'>
					<button type="button" class="btn btn-warning margin20" id="intDiv">integer constant</button>
					</div>
					<div class = 'float-div'>
					<button type="button" class="btn btn-warning margin20" id="floatDiv">floating point constant</button>
					</div>
					<div class = 'char-div'>
					<button type="button" class="btn btn-warning margin20" id="charDiv">character constants</button>
					</div>
					<div class = 'string-div'>
					<button type="button" class="btn btn-warning margin20" id="stringDiv">    string constants    </button>
					</div>
				</div>
			</div>
			<div class = 'col-xs-8  visibility-hidden margin10 marginleft5' id = 'simpletextDiv'>
				<div class = 'col-xs-12 margin5' id = 'defDiv'></div><br>
				<div class = 'col-xs-12 margin20' id = 'examDiv'></div><br>
				<div class = 'col-xs-offset-2 col-xs-5 height15 margin10' id = 'exampleDiv1'></div>
				<br>
				<div class = 'col-xs-offset-2 col-xs-5 height15 margin10' id = 'exampleDiv2'></div>
				<br>
				<div class = 'col-xs-offset-2 col-xs-5 height15 margin10' id = 'exampleDiv3'></div><br>
				<div class = 'col-xs-offset-2 col-xs-5 height15 margin10' id = 'exampleDiv4'></div><br>
				<div class = 'col-xs-offset-2 col-xs-5 height15 margin10' id = 'exampleDiv5'></div><br>
			</div>
		</div>
	</div>	
</div>
</body>
</html>