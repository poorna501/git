<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Structure of C</title>
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

#animationDiv {
	border: 2px solid gray;
    border-radius: 8px;
    height: 450px;
    margin-top: 15px;
}

#leftDiv, #rightDiv {
    border: 1px solid grey;
    border-radius: 8px;
    height: 410px;
}

.creampretab1 {
    -moz-tab-size: 2;
    background-color: lavender !important;
    font-size: 12px;
    font-style: inherit;
    line-height: 20px;
    overflow-y: auto;
    padding: 13px;
    white-space: pre;
}

.creampretab2 {
    -moz-tab-size: 2;
    background-color: lavender !important;
    font-size: 12px;
    font-style: inherit;
    line-height: 16.3px;
    overflow-y: auto;
    padding: 8px;
    white-space: pre;
}

#totalAnimationDiv {
    height: 415px;
    margin-top: 13px;
}

.introjs-tooltip {
    background-color: white;
    border-radius: 3px;
    box-shadow: 0 1px 10px rgba(0, 0, 0, 0.4);
    max-width: 300px;
    min-width: 225px;
    padding: 10px;
    position: absolute;
    transition: opacity 1.1s ease-out 0s;
    visibility: visible;
}

.user-btn {
	background-color: green;
}

.background-color-yellow {
	background-color: yellow;
}

.color-red {
	color: red;
}
.display-inline-block {
	display: inline-block;
}

.position-relative {
	position: relative;
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
	$('.introjs-nextbutton').keydown(function(e) {
		if (e.which == 13) {
			e.preventDefault();
		}
	});

	$("[contenteditable=true]").keydown(function(e) {
		if (e.which === 13 || e.which === 32) {
			e.preventDefault();
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
			 	element : "#heading",
				intro : "",
				position : "right"
			},{
			 	element : "#dcmntSection",
				intro : "",
				position : "right"
			},{
			 	element : "#linkSection",
				intro : "",
				position : "right"
			},{
			 	element : "#defSection",
				intro : "",
				position : "right"
			},{
			 	element : "#globalDef",
				intro : "",
				position : "right"
			},{
			 	element : "#onlyMain",
				intro : "",
				position : "right"
			},{
			 	element : "#totalMainSec",
				intro : "",
				position : "right"
			},{
			 	element : "#dclrPart",
				intro : "",
				position : "right"
			},{
			 	element : "#excPart",
				intro : "",
				position : "right"
			},{
			 	element : "#usrDefFun",
				intro : "",
				position : "right"
			},{
			 	element : "#totalAnimationDiv",
				intro : "",
				position : "right"
			},{
			 	element : "#restart",
				intro : "",
				position : "right"
			}
		]});
	introjs.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
		case "heading":	
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			var text = "In 'C' language, the program has a structure. The user has to follow the structure line by line for writing any 'C' program.";
			typing(".introjs-tooltiptext", text, function(){
				$('.introjs-nextbutton').show();
			});
		break;
		case "dcmntSection":
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>Documentation Section:</b> consists of a set of comment lines like the"
						+ " name of the program, the author name."
						+ " The comment lines are in between<br> <b class ='ct-code-b-yellow'>/* multiple lines<br> comment */</b> "
						+ " <br> and this part is not an executable part and also we use<br>"
						+ " <b class ='ct-code-b-yellow'>//single line comment </b> <br>in front of single comment line.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});	
		break;
		case "linkSection":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>Link Section:</b><br> provides instructions to the compiler to link functions from system library.<br>"
						+ " <b class ='color-red'>example:</b> <br><b class ='ct-code-b-yellow'>#include&lt;stdio.h&gt;</b>"
						+ " <b class ='ct-code-b-yellow'>#include&lt;conio.h&gt;</b>";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "defSection":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>Definition Section:</b><br> defines all the symbolic constants. <br><b class ='color-red'>example:</b><br>"
					+ " <b class ='ct-code-b-yellow'>#define PI 3.14;</b><br>"
					+ " <b class ='ct-code-b-yellow'>#define Name \"Dennis\";</b>"; 
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "globalDef":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Some variables are used in more than one function, such variables are declared out side of all the functions which is called"
					 + " <b class ='ct-code-b-yellow'>global variable declaration</b> and this declaration, takes place in the declaration section";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "onlyMain":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>main():</b><br>Every 'C' program must have one main() function.<br>"
						+ "Operating System calls the main(), which is the starting point of the execution.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "totalMainSec":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>main() Section:</b><br>"
						+ " This section contains two parts, declaration part and executable part."
						+ " The program execution begins at the opening brace of main() and ends at the closing brace of main().";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "dclrPart":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>Declaration part:</b><br>"
						+ " In every 'C' program must declare the variables in declaration section only.<b class ='color-red'><br>example:</b><br>"
						+ " <b class ='ct-code-b-yellow'>int a;</b><br> <b class ='ct-code-b-yellow'>int b;</b>";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});	
		break;
		case "excPart":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>Execution part:</b><br>"
						+ " This part contains execution.<b class ='color-red'><br>example:</b><br>"
						+ " <b class ='ct-code-b-yellow'>a = 10;</b><br> <b class ='ct-code-b-yellow'>b = 20;</b>";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "usrDefFun":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>Sub-program section:</b><br>contains all the user-defined functions that are called in"
						+ " main() function. User-defined functions are generally placed immediately after the main() function.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-nextbutton").show();
				});
			});
		break;
		case "totalAnimationDiv":
			introjs.refresh();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$('#rightCode').removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "<b class ='ct-code-b-yellow'>All the sections except the main() function section may be optional when they"
						+ " are not required</b>.<br>"
						+ " Now let's see with example code.";
				typing($(".introjs-tooltiptext"), text, function() {
					$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationComment()">Next &#8594;</a>');
				});
			});
		break;
		case "restart":
			introjs.refresh();
			$(".background-color-yellow").removeClass("background-color-yellow");
			$(".user-btn").remove();
			$('.introjs-nextbutton').hide();
			$('.introjs-prevbutton').hide();
			$('#restart').removeClass("opacity00");
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Click restart to see again.";
				typing($(".introjs-tooltiptext"), text)
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
					
function animationComment() {
	$(".user-btn").remove();
	introjs.refresh();
	$(".introjs-tooltiptext ul").empty();
	$("#dcmntSection").addClass("background-color-yellow");
	$("#comment").addClass("background-color-yellow");
	var text = "Here the <b class ='ct-code-b-yellow'>Documentation Section</b> i.e comment lines can be"
			+ " present at any line in 'C' program.";
	typing($(".introjs-tooltiptext"), text, function() {
		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationLinkSection()">Next &#8594;</a>');
	});
}

function animationLinkSection() {
	$(".user-btn").remove();
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".introjs-tooltiptext ul").empty();
	$("#linkSection").addClass("background-color-yellow");
	$("#links").addClass("background-color-yellow");
	var text = "link the two header files <b class ='ct-code-b-yellow'>stdio.h</b><br>"
		+ "<b class ='ct-code-b-yellow'>conio.h</b><br> to the program.";
	typing($(".introjs-tooltiptext"), text, function() {
		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationDefSection()">Next &#8594;</a>');
	});
}

function animationDefSection() {
	$(".user-btn").remove();
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".introjs-tooltiptext ul").empty();
	$("#defSection").addClass("background-color-yellow");
	$("#define").addClass("background-color-yellow");
	var text = "<b class ='ct-code-b-yellow'>#define VALUE 10;</b><br>"
			+ " The symbolic constatnt VALUE is defined with constatnt 10."
			+ " So VALUE is replaced with 10 before compilation process.";
	typing($(".introjs-tooltiptext"), text, function() {
		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationGlobalDef()">Next &#8594;</a>');
	});
}

function animationGlobalDef() {
	$(".user-btn").remove();
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".introjs-tooltiptext ul").empty();
	$("#globalDef").addClass("background-color-yellow");
	$("#globalVariable").addClass("background-color-yellow");
	var text = "The variable total is declared out side of main function so it is treated as global variable and this variable can be accessed from any"
			+ " part of the program.";
	typing($(".introjs-tooltiptext"), text, function() {
		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationMainSectionDef()">Next &#8594;</a>');
	});
}

function animationMainSectionDef() {
	$(".user-btn").remove();
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$(".introjs-tooltiptext ul").empty();
	$("#mainSection").addClass("background-color-yellow");
	$("#totalMainFun").addClass("background-color-yellow");
	$("#totalMain").addClass("background-color-yellow");
	var text = "Every C program must have one <b class ='ct-code-b-yellow'>main()</b> function.";
	typing($(".introjs-tooltiptext"), text, function() {
		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationMainFunction()">Next &#8594;</a>');
	});
}

function animationMainFunction() {
	$(".user-btn").remove();
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#dclrPart").addClass("background-color-yellow");
	$("#excPart").addClass("background-color-yellow");
	$("#defPart").addClass("background-color-yellow");
	$("#dclPart1").addClass("background-color-yellow");
	$("#dclPart2").addClass("background-color-yellow");
	$(".introjs-tooltiptext ul").empty();
	//$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "<ul><li><b class ='ct-code-b-yellow'>main()</b> function contains <b class ='ct-code-b-yellow'>Declaration part</b>"
				+ " and <b class ='ct-code-b-yellow'>Execution part</b>."
				+ " These two parts must appear between the opening and closing braces of main().</li>"
				+ " <li>The VALUE will be replaced with 10 at the time of compilation.</li></ul><br>";
	typing($(".introjs-tooltiptext"), text, function() {
		$(".introjs-tooltiptext").append("<ul><li><div id='tooltipVal1' class='display-inline-block position-relative ct-code-b-yellow'>"
				+ "<div class='display-inline-block ct-code-b-yellow'> a =&nbsp;</div>"
				+ "<div id='totalFlip1' class='display-inline-block ct-code-b-yellow'>"
		 		+ "<div id='tooltipFlipVal1' class='display-inline-block ct-code-b-yellow'> VALUE </div> "
		 		+ "<div class='display-inline-block ct-code-b-yellow'> + </div> "
		 		+ "<div id='tooltip5' class='display-inline-block ct-code-b-yellow'> 5</div></div></div>");
		 var l1 = $("#tooltipVal1").offset();
		 var l2 = $("#dclPart1").offset();
		 var topLength = l2.top - l1.top;
		 var leftLength = l2.left - l1.left;
		 TweenMax.from("#tooltipVal1", 1, {top : topLength, left : leftLength, onComplete:function() {
			 TweenMax.to("#tooltipFlipVal1", 0.5, {rotationX : -90, onComplete:function() {
				$("#tooltipFlipVal1").text("10");
				TweenMax.to("#tooltipFlipVal1", 0.5, {rotationX : 0, onComplete:function() {
					TweenMax.to("#totalFlip1", 0.5, {rotationX : -90, onComplete:function() {
						$("#totalFlip1").text("15");
						TweenMax.to("#totalFlip1", 0.5, {rotationX : 0, onComplete:function() {
							$(".introjs-tooltiptext").append("<ul><li><div id='tooltipVal2' class='display-inline-block position-relative ct-code-b-yellow'>"
									+ "<div class='display-inline-block ct-code-b-yellow'> b =&nbsp;</div>"
									+ "<div id='totalFlip2' class='display-inline-block ct-code-b-yellow'>"
							 		+ "<div id='tooltipFlipVal2' class='display-inline-block ct-code-b-yellow'> VALUE </div> "
							 		+ "<div class='display-inline-block ct-code-b-yellow'> - </div> "
							 		+ "<div id='tooltip5' class='display-inline-block ct-code-b-yellow'> 3</div></div></div>");
							 var l1 = $("#tooltipVal2").offset();
							 var l2 = $("#dclPart2").offset();
							 var topLength = l2.top - l1.top;
							 var leftLength = l2.left - l1.left;
							 TweenMax.from("#tooltipVal2", 1, {top : topLength, left : leftLength, onComplete:function() {
								 TweenMax.to("#tooltipFlipVal2", 0.5, {rotationX : -90, onComplete:function() {
									$("#tooltipFlipVal2").text("10");
									TweenMax.to("#tooltipFlipVal2", 0.5, {rotationX : 0, onComplete:function() {
										TweenMax.to("#totalFlip2", 0.5, {rotationX : -90, onComplete:function() {
											$("#totalFlip2").text("7");
											TweenMax.to("#totalFlip2", 0.5, {rotationX : 0, onComplete:function() {
												$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="animationUsrDefFunction()">Next &#8594;</a>');
											}});
										}});
									}});
								 }});		
							 }});
						}});
					}});
				}});
			 }});		
		 }});
	});
}

function animationUsrDefFunction() {
	$(".introjs-tooltiptext ul li:last-child *").removeAttr("id");
	$(".user-btn").remove();
	introjs.refresh();
	$(".background-color-yellow").removeClass("background-color-yellow");
	$("#usrFun").addClass("background-color-yellow");
	$("#sumFun").addClass("background-color-yellow");
	$(".introjs-tooltiptext ul").empty();
	//$(".introjs-tooltiptext ul").append("<li></li>");
	var text = "The Sub-program section contains all the user-defined functions that are called in main() function."
			+ " User-defined functions are generally placed immediately after the main() function<br>"
			+ " <b class ='color-red'>example:</b><br> <b class ='ct-code-b-yellow'>sum(int a, int b)</b>";
	typing($(".introjs-tooltiptext"), text, function() {
		$(".introjs-tooltipbuttons").append('<a class="introjs-button user-btn" style="display: inline-block;" onclick="introjs.nextStep()">Next &#8594;</a>');
	});
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
</script>
<h3 class="text-center margin-top-20">
		<span class="label label-default ct-demo-heading" id="heading">Basic Structure of C Program</span>
</h3>
<div id="animationDiv" class="col-xs-offset-2 col-xs-8">
<div class="col-xs-12">
<div id="totalAnimationDiv">
  <div class="col-xs-6">
  <div id="leftDiv">
<pre class="creampretab1" id='leftCode'><span id="dcmntSection">Documentation section</span>
<span id="linkSection">Link section</span>
<span id="defSection">Definition section</span>
<span id="globalDef">Global definition section</span>
<span id="totalMainFun"><span id="onlyMain">main()</span> function section
Beginning of the main ( ) section using 
<span id="totalMainSec">{
<span id="dclrPart">Declaration part</span>
<span id="excPart">Execution part</span>	
End of the main ( ) section using 
}</span></span>
<span id="usrDefFun"><span id="usrFun">Sub program section having user defined functions
Function1 ( )
{
-- ---
-----
}</span></span>
		
	</pre>
	</div>
  </div>
  <div class="col-xs-6">
  	<div id="rightDiv">
  	<pre class="creampretab2 opacity00" id='rightCode'><span id="comment">/* C language was 
Develop by Dennis Ritchie. */
//This is a sample C program developed by user.</span>
<span id="links">#include&lt;stdio.h&gt;
#include&lt;conio.h&gt;</span>
<span id="define">#define VALUE 10;</span>
<span id="globalVariable">int total;</span>
int sum(int, int);
<span id="totalMain">int main()
<span id="mainFun">{
	<span id="defPart">int a, b;</span>
	<span id="dclPart1">a = VALUE + 5;</span>
	<span id="dclPart2">b = VALUE - 3;</span>
	printf("This is main function /n");
	total = sum(a, b);
	printf("Total = %d /n", total);
	return 0;
}</span></span>
<span id="sumFun">int sum(int a, int b)
{
	return a + b;
}</span>

  	</pre>
  	</div>
  </div>
  </div>
  </div>
</div>
<div class="col-xs-12 text-center margin-top-20">
<span class="btn btn-warning btn-sm opacity00" id="restart">Restart</span>
</div>
</body>
</html>