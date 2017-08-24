<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>#include</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css">
<link rel="stylesheet" href="/css/introjs-ct.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/jquery-ui-latest.js"></script>
<script type="text/javascript" src="/js/intro.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script type="text/javascript" src="/js/gs/TweenMax.min.js"></script>
<style type="text/css">
.margin-top-20 {
	margin-top: 20px;
}

.margin-top-10 {
	margin-top: 10px;
}

#totalDiv {
	border: 1px solid gray;
	border-radius: 8px;
	height: 185px;
	padding: 10px;
}

.creampretab {
	background-color: #f5f5f5;
	border: 1px solid #ccc;
	border-radius: 4px;
	color: #333;
	display: block;
	font-size: 12px;
	line-height: 1.42857;
	margin-bottom: 0;
	padding: 7px;
	border: 1px solid gray;
	border-radius: 6px;
}

#outputDiv {
	margin-top: 20px;
	padding: 0;
	z-index: 9999999;
}

.output-console-title-bar {
	border-top-left-radius: 6px;
	border-top-right-radius: 6px;
}

.output-console-body {
	border-bottom-left-radius: 6px;
	border-bottom-right-radius: 6px;
	font-size: 13px;
	height: 185px;
	padding: 10px;
	white-space: inherit;
}

.color-red {
	color: red;
}

.warning-color {
	color: #990000;
}

.note-color {
	color: #66ffc2;
}
</style>
</head>
<body>
<script type="text/javascript">
var putElement;
var introjs;
var timelineLite = new TimelineLite();	
var typingSpeed = 5;

$(document).ready(function() {
	introGuide();
	 $("[contenteditable=true]").on("click keydown keyup", function(e) {
		$(".errMsg").remove();
		if ($(this).text() == "") {
			$(this).addClass("empty");
		} else {
			$(this).removeClass("empty");
		}
		introjs.refresh();
		
	 	if ($(".empty").length > 0) {
			$(".introjs-nextbutton").hide();
		} else {
			$(".introjs-nextbutton").show();
		}
		
	 	if (((e.shiftKey) || (e.keyCode < 48 || e.keyCode > 57)) && ((e.keyCode < 96) || (e.keyCode > 105))) {
			e.preventDefault();
		}
		
		if((e.keyCode >= 65 && e.keyCode <= 90)){
			return;
		}
	});
	 $("#restart").click(function(){
		 location.reload();
	});
});

function introGuide() {
	introjs = introJs();
	introjs.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [{
			 		element : "#totalDiv",
					intro : "",
					position : "bottom"
				},{
			 		element : "#code1",
					intro : "",
					position : "right"
				},{
			 		element : "#main",
					intro : "",
					position : "right"
				},{
			 		element : "#printf1",
					intro : "",
					tooltipClass : "hide"
				},{
			 		element : "#outputDiv",
					intro : "",
					position : "top"
				},{
			 		element : "#include1",
					intro : "",
					position : "right"
				},{
			 		element : "#printf1",
					intro : "",
					tooltipClass : "hide"
				},{
			 		element : "#outputDiv",
					intro : "",
					position : "top"
				},{
			 		element : "#code2",
					intro : "",
					position : "right"
				},{
			 		element : "#printf2",
					intro : "",
					tooltipClass : "hide"
				},{
			 		element : "#outputDiv",
					intro : "",
					position : "top"
				},{
			 		element : "#include2",
					intro : "",
					position : "right"
				},{
			 		element : "#printf2",
					intro : "",
					tooltipClass : "hide"
				},{
			 		element : "#outputDiv",
					intro : "",
					position : "top"
				},{
			 		element : "#restart",
					intro : "",
					position : "right"
				}
			]});
	
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "totalDiv":
			$('.introjs-nextbutton').hide();
			$("#totalDiv").css({"height" : $("#totalDiv").outerHeight()});
			var text = $("#typingDiv1").html();
			typing("#typingDiv1", text, function() {
				$("#syntax").removeClass("opacity00");
				var text = "Let's see  sample 'C' programs in below.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "code1":
			$('.introjs-nextbutton').hide();
			$("#code1").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Let's consider a sample 'C' program "
						+ "<ul><li>Let us know <b class ='ct-code-b-yellow'>#include</b> directive is not included.</li>"
						+ "<li>See what the output to be display.</li></ul>";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "main":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			introjs.refresh();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Compilation start from first line of the program to last line. Let us see how many compilation errors occured.";
				typing($(".introjs-tooltiptext"), text, function() {
					introjs.refresh();
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "printf1":
			if (introjs._currentStep == 3) {
				$('.introjs-nextbutton').hide();
				$('.introjs-prevbutton').hide();
				introjs.refresh();
				$(".introjs-helperLayer").one("transitionend", function() {
					setTimeout(function() {
						introjs.nextStep()
					}, 1000);
				});
			} else if (introjs._currentStep == 6) {
				$('.introjs-nextbutton').hide();
				$('.introjs-prevbutton').hide();
				introjs.refresh();
				$(".introjs-helperLayer").one("transitionend", function() {
					setTimeout(function() {
						introjs.nextStep()
					}, 1000);
				});
			}
		break;
		case "outputDiv":
			if (introjs._currentStep == 4) {
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$('.introjs-tooltiptext').css({"max-height" : "233px", "overflow" : "auto"});
			introjs.refresh();
			$("#outputDiv").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				$(".introjs-tooltiptext").append("<div>These are the errors occurred why because <b class ='ct-code-b-yellow'>printf()</b> is unknown to the compiler.</div>");
				var text = "test.c:2:2: <b class='warning-color'>error</b>: implicit declaration of function <b>'printf'</b> [-Wimplicit-function-declaration]<br>"
					  		+ "printf("+"CodeTantra"+");<br>"
							+ "test.c:2:2: <b class='warning-color'>error</b>: incompatible implicit declaration of built-in function <b>'printf'</b><br>"
							+ "test.c:2:2: <b class='note-color'>note</b>: include <b>'&lt;stdio.h&gt;'</b> or provide a declaration of <b>'printf'</b>";
				$("#outputBody").append("<div></div>");
				typing($("#outputBody > div:last-child"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		 } else if (introjs._currentStep == 7) {
			 $('.introjs-nextbutton').hide();
			 $('.introjs-prevbutton').hide();
			 introjs.refresh();
			 $(".introjs-helperLayer").one("transitionend", function() {
				 $(".introjs-tooltiptext").append("<div>This is the result.</div>")
				 var text = "<b>CodeTantra</b><br><br>";
				 typing($("#outputBody > div:last-child"), text, function() {
					 $(".introjs-nextbutton").show();
				});
			});
		 } else if (introjs._currentStep == 10) {
			 $('.introjs-nextbutton').hide();
			 $('.introjs-prevbutton').hide();
			 introjs.refresh();
			 $(".introjs-helperLayer").one("transitionend", function() {
				 $(".introjs-tooltiptext").append("<div>These are the errors occurred why because <b class ='ct-code-b-yellow'>printf()</b> and "
						 						+ "<b class ='ct-code-b-yellow'>sqrt()</b> are unknown to the compiler.</div>");
				 var text = "test.c:2:2: <b class='warning-color'>error</b>: implicit declaration of function <b>'printf'</b> [-Wimplicit-function-declaration]<br>"
			  	 	 + "printf("+"CodeTantra"+");<br>"
					 + "test.c:2:2: <b class='warning-color'>error</b>: incompatible implicit declaration of built-in function <b>'printf'</b><br>"
					 + "test.c:2:2: <b class='note-color'>note</b>: include <b>'&lt;stdio.h&gt;'</b> or provide a declaration of <b>'printf'</b><br>"
					 + "test.c:7:47: <b class='warning-color'>error</b>: implicit declaration of function <b>'sqrt'</b> [-Wimplicit-function-declaration]<br>"
					 + "printf('Square root of %lf is %lf\n', 4.0, sqrt(4.0) );<br>"
					 + "test.c:7:47: <b class='warning-color'>error</b>: incompatible implicit declaration of built-in function <b>'sqrt'</b><br>"
					 + "hello.c:7:47: <b class='note-color'>note</b>: include <b>'&lt;math.h&gt;'</b> or provide a declaration of <b>'sqrt'</b>";
				 typing($("#outputBody > div:last-child"), text, function() {
					 $(".introjs-nextbutton").show();
				 });
			 });
		 } else if (introjs._currentStep == 13){
			 $('.introjs-nextbutton').hide();
			 $('.introjs-prevbutton').hide();
			 introjs.refresh();
			 $(".introjs-helperLayer").one("transitionend", function() {
				 $(".introjs-tooltiptext").append("<div>This is the result.</div>");
				 var text = "<b>Square root of 4.000000 is 2.000000</b><br><br>";
				 typing($("#outputBody > div:last-child"), text, function() {
					 $(".introjs-nextbutton").show();
				});
			});
		 }
		break;
		case "include1":
			$('.introjs-nextbutton').hide();
			$("#include1").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Now add <b class ='ct-code-b-yellow'>#include</b> directive and see the output.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "code2":
			$('.introjs-nextbutton').hide();
			$("#code2").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Let's consider another sample 'C' program and run  without <b class ='ct-code-b-yellow'>#include</b> directives.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "printf2":
			if (introjs._currentStep == 9) {
				$('.introjs-nextbutton').hide();
				$('.introjs-prevbutton').hide();
				introjs.refresh();
				$(".introjs-helperLayer").one("transitionend", function() {
					setTimeout(function() {
						introjs.nextStep()
					}, 1000);
				});
			} else if (introjs._currentStep == 12) {
				$('.introjs-nextbutton').hide();
				$('.introjs-prevbutton').hide();
				introjs.refresh();
				$(".introjs-helperLayer").one("transitionend", function() {
					setTimeout(function() {
						introjs.nextStep()
					}, 1000);
				});
			}
		break;
		case "include2":
			$('.introjs-nextbutton').hide();
			$("#include2").removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "add  <b class ='ct-code-b-yellow'>#include</b> directives and see the output.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "restart":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$('#restart').removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Click restart to see again.";
				typing($(".introjs-tooltiptext"), text);
			});
		break;
		}
	});
	
	introjs.start();
	$('.introjs-nextbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();
}

function typing(selector, text, callBackFunction) {
	$(selector).typewriting(text, {
		"typing_interval" : typingSpeed,
		"cursor_color" : 'white',
	}, function() {
		$(selector).removeClass("typingCursor");
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function stepsTyping(text, nextBtnAction) {
	$(".introjs-tooltiptext > ul").append("<li class='opacity00'>" + text + "</li>");
	var container = $('.introjs-tooltiptext');
	scrollTo = $('.introjs-tooltiptext > ul > li:last-child');
		container.animate({
		scrollTop: scrollTo.offset().top - container.offset().top  + container.scrollTop()
	}, function() {
		TweenMax.to($(".introjs-tooltiptext > ul li:last-child"), 1, {opacity : 1, onComplete:function() {
			$(".introjs-tooltiptext > ul li:last-child").removeClass("opacity00");
		}});
	});
}

</script>
	<div class='text-center margin-top-20'>
		<h4 class='label ct-demo-heading' id='demoTitle'>#include</h4>
	</div>
	<div class="col-xs-offset-1 col-xs-10">
		<div class="margin-top-20" id="totalDiv">
			<div id="typingDiv1">
				<ul>
					<li>Definitions and declarations of common objects shared by many programs may be
						available in one or more files. These files are known as header files.
					</li>
					<li>
						<b>#include</b> directive includes different header files into our program.
					</li>
					<li>
						There are two forms of <b>#include</b> directive. They are
						<ol>
							<li>
								<b>#include "filename"</b>: The preprocessor searches the directory that contains the
						source file (i.e. home directory) first.
							</li>
							<li>
								<b>#include &lt;filename&gt;</b>: The preprocessor searches the file
						specified only in the implementation defined locations.
							</li>
						</ol>
					</li>
					<b class="color-red">Example:</b><br/>
					(i) <b>#include&lt;stdio.h&gt;</b><br/>
					(ii) <b>#include "c\XYZ\Ritchie\abc.c"</b>
 				</ul>
 				
			</div>
		</div>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-offset-1 col-xs-5 margin-top-20">
			<div id="code1" class="opacity00">
			<pre class="creampretab"><span class="opacity00" id="include1">#include&lt;stdio.h&gt;</span>
<span id="main">main ()</span> {
  <span id="printf1">printf("CodeTantra");</span>
}	
</pre>
			</div>
			<div id="code2" class="margin-top-20 opacity00">
			<pre class="creampretab"><span class="opacity00" id="include2">#include&lt;stdio.h&gt;
#include&lt;math.h&gt;</span>
main() {
  <span id="printf2">printf("Square root of %f is %f\n", 4.0, sqrt(4.0));</span>
}
</pre>
			</div>
		</div>
		<div class="col-xs-5">
			<div id="outputDiv" class="opacity00">
				<div class="output-console-title-bar">
					<span class="title">Output</span>
				</div>
				<div class="output-console-body" id="outputBody"></div>
			</div>
		</div>
	</div>
	<div class="col-xs-12 text-center margin-top-20">
		<span class="btn btn-warning btn-sm opacity00" id="restart">Restart</span>
	</div>
</body>
</html>