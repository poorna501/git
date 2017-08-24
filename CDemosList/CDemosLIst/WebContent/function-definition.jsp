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
	<title>function definition</title>
</head>
<style>
#totaldiv {
	margin-top: 20px;
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

.color-rose {
	color:#8B008B;
	}

#informationdiv {
	background-color: rgb(243, 235, 235);
    border-radius: 2px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 92px;
    margin-top: 20px;
    color: black;
    padding: 10px;
	}

.introjs-tooltip {
    min-width: 241px;
    }
  
 .color-yellow {
 	color: yellow;
 }
 
 .color-green {
 	color: green;
 }
</style>
<body>
<div id ='totaldiv' class='totaldivclass'>
	<div id='title' class='label ct-demo-heading col-xs-offset-5'>
		<span class=''>Function Definition</span>
	</div>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-6 col-xs-offset-3 opacity00'>
	</div>
</div>
<div class='col-xs-12' >
		<div class='col-xs-offset-4  col-xs-4 ' id='declaration2'>
			<pre id='format' style='margin-top: 25px;' class='opacity00'><span id='returnType1' class='color-rose'> <b>return_type </b></span><span id='functionName1'> function_name</span><span id='argument1'> (<b class='color-rose'>parameters</b>)</span><span id='openbrace'> { </span>
     	      <span id='functionBody'><span>declaration part;</span> 
      	      <span id='functionBody1'>executable statements;</span></span>
              <span id='returnValue'>return value </span>;
  }</pre>
	</div>
</div>
	<div class='col-xs-12' id='firstDeclarationdiv'>
		<div class='col-xs-offset-4  col-xs-4 opacity00' id='declaration1'>
			<pre style='margin-top: 25px;'><span id='functionDeclaration'><span id='returnType' class='color-rose'> <b>int </b></span><span id='functionName'> sum</span><span id='argument'> (<b class='color-rose'>int </b>a, <b class='color-rose'> int </b>b)</span></span><span id='openbrace'> { </span>
     <span id='functionBody3'><span><b class='color-rose'> int </b></span> s<span>;</span>
      s = a + b;</span>
     <span id='returnS'><b class='color-rose'> return </b> s;</span>
  }</pre>
		</div>
	</div>
<div class="button col-xs-12 text-center " id="button">
	<button class="btn btn-success glyphicon glyphicon-refresh opacity00" type="button" id='restartBtn' style='margin-top:4px'>Restart</button>
</div>

</body>
<script>
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
		/* 	element :'#title',
			intro :'',
			position:"bottom"
		},{ */
			element :'#informationdiv',
			intro :'',
			position:"bottom"
		},{
			element :'#format',
			intro :'',
			tooltipClass: "hide",
			position:"bottom"
		},{
			element :'#returnType1',
			intro :'',
			position:"bottom"
		},{
			element :'#functionName1',
			intro :'',
			position:"bottom"
		},{
			element :'#argument1',
			intro :'',
			position:"bottom"
		},{
			element :'#functionBody',
			intro :'',
			position:"bottom"
		},{
			element :'#returnValue',
			intro :'',
			position:"bottom"
		},{
			element :'#declaration1',
			intro :'',
			position:"bottom"
		},{
			element :'#functionDeclaration',
			intro :'',
			position:"bottom"
		},{
			element :'#functionBody3',
			intro :'',
			position:"bottom"
		},{
			element :'#returnS',
			intro :'',
			position:"bottom"
	 	},{
			element :'#restartBtn',
			intro :'',
			position:"bottom"
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "format" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#format").removeClass("opacity00");
		  		typing('.introjs-tooltiptext', "let us consider the syntax of function definition.", function() {  
		  			intro.nextStep();
				});
			});
		break;
		case "returnType1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  	typing('.introjs-tooltiptext', "<ul><li><span class='color-yellow'>return_type</span> is type of value returned by function.</li><li>Function is not going to return a value then the <span class='color-yellow'>return_type</span> is <span class='color-yellow'>void</span>.</li></ul>", function() {  
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "functionName1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  	typing('.introjs-tooltiptext', "<ul><li>Any valid identifier is placed as a <span class='color-yellow'>function_name</span>.</li><li>Key words are not used for user defined <span class='color-yellow'>function_names</span>.</li></ul>", function() {  
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "argument1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  	typing('.introjs-tooltiptext', "Parameters contains different variables with those data types.", function() {  
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "functionBody" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  	typing('.introjs-tooltiptext', "The function body contains a collection of statements that define what the function does.", function() {  
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "returnValue" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  	typing('.introjs-tooltiptext', "<ul><li>A <span class='color-yellow'>return</span> statement that return the value evaluated by the function.</li><li>Function will not return a value if  <span class='color-yellow'>return</span> type is <span class='color-yellow'>void</span>.</li></ul>", function() {  
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "declaration1" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  		typing('.introjs-tooltiptext', "Let us consider the example of function definition.", function() {  
				$("#declaration1").removeClass("opacity00");
					$('.introjs-nextbutton').show();
				});
			});
		break;
		case "functionDeclaration" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  	typing('.introjs-tooltiptext', "Here the name of the function is <span class='color-yellow'>sum</span>, it takes two <span class='color-yellow'>int</span> arguments and it will return a specified datatype <span class='color-yellow'>int</span>.", function() {  
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "functionBody3" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  	typing('.introjs-tooltiptext', "Function body contains declaration and statements.", function() {  
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "returnS" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
		  	typing('.introjs-tooltiptext', "Finally returns the value.", function() {  
				$('.introjs-nextbutton').show();
				});
			});
		break;
		case "restartBtn":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			typing('.introjs-tooltiptext', "Click to restart.", function() {
				$("#restartBtn").removeClass("opacity00");
				});
			});
		break;
		}
	});
	
	intro.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-nextbutton').hide();
	$("#informationdiv").removeClass("opacity00");
  	typing('#informationdiv', "<ul><li>A function definition specifies the name of the function, the types and number of parameters it expects to receive, and its return type.</li><li>A function definition includes a function body with the declarations of its local variables, and the statements that determine what the function does.</li>", function() {  
	  	typing('.introjs-tooltiptext',"Let us consider the format of function definition." ,function() {
			$('.introjs-nextbutton').show();
			  	});
			});
	});
	
	function typing(selector, text, callBackFunction) {
		var typingSpeed = 20;
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