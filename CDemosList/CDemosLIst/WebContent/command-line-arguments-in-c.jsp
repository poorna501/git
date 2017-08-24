
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/introjs.css" >
<link rel="stylesheet" href="/css/introjs-ct.css" >
<link rel="stylesheet" href="/css/animate.css">
<script src="/js/jquery-latest.js"></script>
<script src="/js/intro.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<title>Command Line Arguments in Action</title>

<style>

.introjs-tooltip {
	min-width: 250px;
}

.box-main {
	margin: 10px;
	padding: 10px;
}

.padding0 {
	padding: 0px;
}

.margin-top {
    margin-top: 17px;
}

.ct-demo-heading {
	background: highlight none repeat scroll 0 0;
    border-radius: 10px;
    font-size: 18px;
    position: relative;
    z-index: 1000000;
}

.buttons-div {
	margin-top: 20px;
	text-align: center;
}

.box-border {
	border: 1px solid grey;
	border-radius: 8px;
	padding: 10px;
}

.creamPreTab4 {
	-moz-tab-size: 6;
    background-color: #fffae6;
    border-radius: 8px;
    font-size: 11px;
    margin: 5px;
    padding: 10px;
    white-space: pre;
}

table {
	margin-top: 30px;
	text-align: center;
}
td {
    padding: 10px;
    width: 25%;
}

.td-border {
	border: 2px solid;
}

ol, ul {
	margin-bottom: 0;
    margin-left: -15px;
}

.center {
	display: block;
    margin-left: auto;
    margin-right: auto;
}

.output-console {
	width: 300px;
}

.opacity00 {
	opacity: 0;
}

.position-absolute {
	position: absolute;
}

.position-relative {
	position: relative;
}

.img-responsive {
	display: inline-block;
	max-height: 75px;
}

.arrow1 {
	margin-top: 65px;
	color : green;
}

.ui-effects-transfer {
    border: 1px solid #003399;
    position: relative;
    z-index: 9999999;
}

.height-width {
	height: 44px;
	width: 290px;
}

.args-circle {
	border: 1px solid;
    border-radius: 50%;
    padding: 2px;
    position: relative;
    z-index: 9999999;
}

.introjs-duplicate-nextbutton {
	background-color: green;
}

.faa-passing {
    position: relative;
    animation-name: example;
    animation-duration: 2s;
    animation-iteration-count: infinite;
}

/* Standard syntax */
@keyframes example {
      0%   { left:0px; top:0px;}
    100%  {top:0px; left:20px;}
}

.loading:after {
    overflow: hidden;
    display: inline-block;
    vertical-align: bottom;
    -moz-animation: ellipsis 2s infinite;
    content: "\2026"; /* ascii code for the ellipsis character */
}
@-moz-keyframes ellipsis {
    from {
        width: 0px;
    }
    to {
        width: 12px;
    }
}

.pulse {
	animation: pulse 1s linear 2;
}

@-moz-keyframes pulse {
 0% {
   -moz-transform: scale(0.6);
   transform: scale(0.8);
 }

 100% {
   -moz-transform: scale(1);
   transform: scale(1);
   font-weight: bold;
 }

}
</style>

<script>
	
var typingInterval = 10;
var intro;
var indexCount = 0;

$(document).ready(function() {

	intro = introJs();
	
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [{
			element : "#program",
			intro	: "",
			position : "bottom"
		},{
			element : "#savingFileStep",
			intro:'Saving to <span class="ct-code-b-yellow">example.c</span> file.',
			position : "bottom"
		},{
			element : "#compilation",
			intro	: '',
			position : "bottom",
			tooltipClass : "hide"
		},{
			element : "#commandLineValues",
			intro	: '',
			position : "bottom",
			tooltipClass : "hide"
		},{
			element : "#mainMethod",
			intro	: '',
			position : "bottom",
			tooltipClass : "hide"
		},{
			element : "#argcCount",
			intro 	: "",
			position : "bottom"
		},{
			element : "#argsLine",
			intro :"",
			position : "bottom"
		},{
			element : "#animationBox",
			tooltipClass : "hide",
			animateStep: "arraySize"
		},{
			element : "#sopArgsLength",
			intro	: "",
			position : "bottom",
			tooltipClass : "hide"
		},{
			element : "#animationBox",
			tooltipClass : "hide",
			animateStep: "arrayLength"
		},{
			element : ".output-console",
			tooltipClass : "hide"
		},{
			element : "#sopAgrsOf0",
			intro : "",
			position : "bottom",
			tooltipClass : "hide",
			animateStep: "sopArgsZero"
		},{
			element : "#animationBox",
			tooltipClass : "hide",
			animateStep: "indexZero"
		},{
			element : ".output-console",
			tooltipClass : "hide"
		},{
			element : "#sopAgrsOf1",
			intro : "",
			position : "bottom",
			tooltipClass : "hide",
			animateStep: "sopAgrs"
		},{
			element : "#animationBox",
			tooltipClass : "hide",
			animateStep: "indexZero"
		},{
			element : ".output-console",
			tooltipClass : "hide"
		},{
			element : "#sopAgrsOf2",
			intro : "",
			position : "bottom",
			tooltipClass : "hide",
			animateStep: "sopAgrs"
		},{
			element : "#animationBox",
			tooltipClass : "hide",
			animateStep: "indexZero"
		},{
			element : ".output-console",
			tooltipClass : "hide"
		},{
			element : "#sopAgrsOf3",
			intro : "",
			position : "bottom",
			tooltipClass : "hide",
			animateStep: "sopAgrs"
		},{
			element : "#animationBox",
			tooltipClass : "hide",
			animateStep: "indexZero"
		},{
			element : ".output-console",
			tooltipClass : "hide"
		},{
			element : "#restartBtn",
			intro : "Click to Restart",
			position : "right"
		}]
	});
	intro.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
		switch (elementId) {
			case "program" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-tooltip').removeClass('hide');
				text = 'Here we will learn how the <span class="ct-code-b-yellow">command line arguments</span>  works.';
				typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
					$('.introjs-nextbutton').show();
				});	
			break;
			case "savingFileStep" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					setTimeout(function() {
						saveFile();
					},200);
				});
			break;
			case"compilation" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					$("#compilation").removeClass("opacity00");
					text = $("#compilation").html();
					typing('#compilation', text, typingInterval, 'white', function() {
						text = "<ul><li><span class='ct-code-b-yellow'>gcc</span> is a compiler used to"+
								" compile the given program.</li><li><span class='ct-code-b-yellow'>example</span> is an "+
								"executable file which is created only when <span class='ct-code-b-yellow'>example.c</span>"+
								" is successfully compiled.</li><li><span class='ct-code-b-yellow'>example.c</span>"+
								" is our file name.</li>";
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
				break;
			case "commandLineValues" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					$("#commandLineValues").removeClass("opacity00");
					text = $("#commandLineValues").html();
					typing('#commandLineValues', text, typingInterval, 'white', function() {
						text = "After successfull compilatin<ul><li><span class='ct-code-b-yellow'>./example</span> is an executable file "+
								"which contains <span class='ct-code-b-yellow'>c</span> program."+
								"</li><li>Arguments are passed to the program from the command line those "+
								"arguments are called as <span class='ct-code-b-yellow'>command line arguments"+
								"</span>.</li><li>Each argument "+
								"must be separated by a space.</li><li>In c <span class='ct-code-b-yellow'>./example</span>"+
								" is also take it as one argument.</li>"+
								"</ul><br>We have <span class='ct-code-b-yellow'>4</span>"+
								" arguments in this line.";
						typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
			break;
			case "mainMethod" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = "This is the main method whose receives the command line arguments.";
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "argcCount" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = "<ul><li><span class='ct-code-b-yellow'>argc</span> is the argument count which store the"+
							" total number of arguments passed to the main method.</li><li>"+
							"That can be accessed using the reference <span class='ct-code-b-yellow'>argc</span>.</li></ul>";
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "argsLine" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = "<ul><li><span class='ct-code-b-yellow'>argv</span> is a vector which contain all the commad line arguments.</li><li>"+
							"They can be accessed using the reference <span class='ct-code-b-yellow'>argv</span>.</li></ul>";
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "animationBox" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "arraySize" :
							animateArrayWith(0);
						break;
						case "arrayLength" :
							animateLengthWith(0);
						break;
						case "indexZero" :
							animateArrayIndexWith(indexCount);
						break;
					}
				});
			break;
			case "sopArgsLength" :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					text = "<ul><li>This statement prints the length of the array referenced by "+
							"<span class='ct-code-b-yellow'>argc</span>.</li></ul>";
					typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
						$('.introjs-nextbutton').show();
					});
				});
			break;
			case "sopAgrsOf"+indexCount :
				$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
				$('.introjs-helperLayer').one('transitionend', function() {
					$('.introjs-tooltip').removeClass('hide');
					var animateStep = intro._introItems[intro._currentStep].animateStep;
					switch(animateStep) {
						case "sopArgsZero" :
							text = "<ul><li>In C array elements are stored depending on <span class='ct-code-b-yellow'>subscript</span> or "+
									"<span class='ct-code-b-yellow'>index</span>."+
									"<li>The above statement accesses the element present at index <span class='ct-code-b-yellow'>0</span>"+
									" in the Character array referenced by <span class='ct-code-b-yellow'>argv</span>.</li></ul>";
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
								$('.introjs-nextbutton').show();
							});
						break;
						case "sopAgrs" :
							$('.introjs-tooltip').removeClass('hide');
							text = "The above statement accesses the element present at index <span class='ct-code-b-yellow'>"+ indexCount +"</span>"+
									" in the Character array referenced by <span class='ct-code-b-yellow'>argv</span>.";
							typing('.introjs-tooltiptext', text, typingInterval, 'white', function() {
								$('.introjs-nextbutton').show();
							});
						break;
					}
				});
			break;
		}
	});
	intro.start();
	$('.introjs-nextbutton').hide();
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	$('.introjs-bullets').hide();

	$('body').keypress(function(e) {
		if (e.which == 13) {
			e.preventDefault();
		}
	});
	
	$('#restartBtn').click(function() {
		location.reload();
	});
});
	
	//save file animation
	function saveFile() {
		$('.arrow1').append('<i class="fa fa-arrow-right faa-passing animated"></i>');
		$('#dotJavaFileAboveText').show(1000).text('Saving').addClass('loading');
		$('.dotJavaFile').fadeTo(3000,1,function() {
			$('.arrow1 i').removeClass('faa-passing')
			$('#dotJavaFileAboveText').text('Saved').removeClass('loading');
			$("#className").text('example'),$("#extention").text('.c'),
			$('#dotJavaFileBelowText').addClass('pulse').on('animationend',function() {
				$('.introjs-nextbutton').show();
			});
		});
	}

	function animateArrayWith(index) {
		$("#value" + index).effect( "transfer", { to: $("#td" + index), className: "ui-effects-transfer" }, 1000, function() {
			$('#td' + index).addClass('td-border');
			if (index < 3) {
				animateArrayWith(index + 1);
			} else {
				$('.introjs-tooltip').removeClass('hide');
				$('.introjs-tooltiptext').addClass('height-width');
				$('.introjs-tooltiptext').typewriting("An array of size <span class='ct-code-b-yellow'>4</span> "+
						"is created for storing the <span class='ct-code-b-yellow'>4</span> arguments.", {
					"typing_interval": 30,
					"cursor_color": 'white'
					}, function() {
						$('.introjs-tooltiptext').removeClass('typingCursor, height-width');
						$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-duplicate-nextbutton' onclick='animateValueWith(0)'>" + 
						"Next &#8594;</a>");
					});
			}
		});
	}
	
	function animateValueWith(index) {
		$(".introjs-duplicate-nextbutton").remove();
		$('#tdValue' + index).removeClass('opacity00');
		var l1 = $('#value' + index).offset();
		var l2 = $('#tdValue' + index).offset();
		var topLength = l1.top-l2.top;
		var leftLength = l1.left-l2.left;
		TweenLite.from($('#tdValue' + index), 1.5, {top: topLength, left: leftLength, onComplete: function() {
			if (index < 3) {
				animateValueWith(index + 1);
			} else {
					intro.nextStep();
					$('.introjs-nextbutton').show();
			}
		}});
	}

	//Find argument length
	function animateLengthWith(index) {
		$('#td' + index).effect("highlight", {color: '#003399'}, 1300);
		$('#tdLength' + index).fadeTo(1300, 1, function() {
			if (index < 3) {
				animateLengthWith(index + 1);
			} else {
				intro.nextStep();
				setTimeout(function() {
					$('#outputArgsLength').typewriting("length of the arguments : 4", {
						"typing_interval": 100,
						"cursor_color": 'white'
						}, function() {
							$('#outputArgsLength').removeClass('typingCursor');
							setTimeout(function() {
								intro.nextStep();
								$('.introjs-nextbutton').show();
								$('#tdLength0, #tdLength1, #tdLength2, #tdLength3').addClass('visibility-hidden');
							}, 1300);
						});
				}, 1300);
			}
		});
	}
	
	function animateArrayIndexWith(index) {
		var l1 = $('#args' + index).offset();
		var l2 = $('#tdIndex' + index).offset();
		var topLength = l1.top-l2.top;
		var leftLength = l1.left-l2.left;
		$('#args' + index).addClass('args-circle');
		$('#args' + index).effect("highlight", {color: '#FFFFFF'}, 1000, function() {
			$('#args' + index).removeClass('args-circle');
			$('#tdIndex' + index).removeClass('opacity00');
			TweenLite.from($('#tdIndex' + index), 1.5, {top: topLength, left: leftLength, onComplete: function() {
				$('#td' + index).effect("highlight", {color: '#003399'}, 1300, function() {
					intro.nextStep();
					setTimeout(function() {
						$('#outputArgsOf' + index).typewriting("argv[" + index + "] : " + $('#tdValue' + index).text(), {
							"typing_interval": 100,
							"cursor_color": 'white'
							}, function() {
								$('#outputArgsOf' + index).removeClass('typingCursor');
								indexCount++;
								setTimeout(function() {
									intro.nextStep();
									$('#tdIndex' + index).addClass('opacity00');
									if (intro._currentStep == 23) {
										setTimeout(function() {
											$('#restartBtn').removeClass('visibility-hidden');
										},800);
									} else {
										$('.introjs-nextbutton').show();
									}
								}, 1300);
							});
					}, 1300);
				});
			}});

		});
	}
	
	//typing function
	function typing(typingId, typingContent, typingInterval, cursorColor, typingCallbackFunction) {
		$(typingId).typewriting(typingContent, {
			"typing_interval" : typingInterval,
			"cursor_color" : cursorColor
		}, function() {
			$(typingId).removeClass("typingCursor");
			typingCallbackFunction();
			$('.introjs-tooltip').show();
		});
	}

</script>

</head>
<body>

<div class='box-main'>
	<div class='text-center'>
		<h1 class='label ct-demo-heading'>Command Line Arguments in Action</h1>
	</div>
	<div class='buttons-div'>
		<button type="button" class="btn btn-warning visibility-hidden" id="restartBtn">Restart</button>
	</div>
	<div>
		<div class='row'>
		<div class='col-sm-5 col-xs-offset-1 box-border' id = "savingFileStep">
			<div class= 'col-xs-9 padding0'>
<pre class='creamPreTab4' id = "program">
#include &lt;stdio.h&gt;
<span id = "mainMethod">int main(<span id = "argcCount" >int argc</span>, <span id='argsLine'>char *argv[]</span>)</span> {
	<span id='sopArgsLength'>printf("length of the arguments : %d\n" , argc);</span>
	<span id='sopAgrsOf0'>printf("argv[0] : %d\n",  argv[<span id='args0'>0</span>]);</span>
	<span id='sopAgrsOf1'>printf("argv[1] : %d\n",  argv[<span id='args1'>1</span>]);</span>
	<span id='sopAgrsOf2'>printf("argv[2] : %d\n",  argv[<span id='args2'>2</span>]);</span>
	<span id='sopAgrsOf3'>printf("argv[3] : %d\n",  argv[<span id='args3'>3</span>]);</span>
<span id='mainMethodCloseBrace'>}</span>
</pre></div>
	<div class="col-xs-1 arrow1">
		<!-- <i class="fa fa-arrow-right faa-passing animated"></i> -->
	</div>
			<div class="col-xs-2 text-center margin-top">
				<div>
					<span id="dotJavaFileAboveText"></span>
				</div>
				<div>
					<i class="img-responsive dotJavaFile fa fa-file-text-o fa-4x opacity00"></i>
				</div>
				<div>
					<span id="dotJavaFileBelowText"><span id = "className"></span><span id ="extention"></span></span>
				</div>
			</div>
		</div>
		<div class = "col-xs-5">
			<div class='col-sm-12 box-border' id='animationBox'>
				<div>
				<span>&gt;&gt; <span id='compilation' class = "opacity00">gcc -o example <b>example.c</b></span></span>
				</div>	
				<div>
					<span>&gt;&gt; <span id='commandLineValues' class = "opacity00"><span id='value0'><b>./example</b></span> <span id='value1'>Ganga</span> <span id='value2'>501</span> <span id='value3'>Gold</span></span></span>
				</div>
				<div>
					<table align="center">
						<tr>
							<td><span id='tdIndex0' class='opacity00 position-relative'>0</span></td>
							<td><span id='tdIndex1' class='opacity00 position-relative'>1</span></td>
							<td><span id='tdIndex2' class='opacity00 position-relative'>2</span></td>
							<td><span id='tdIndex3' class='opacity00 position-relative'>3</span></td>
						</tr>
						<tr>
							<td id='td0'><span id='tdValue0' class='opacity00 position-relative'>./Example</span></td>
							<td id='td1'><span id='tdValue1' class='opacity00 position-relative'>Ganga</span></td>
							<td id='td2'><span id='tdValue2' class='opacity00 position-relative'>501</span></td>
							<td id='td3'><span id='tdValue3' class='opacity00 position-relative'>Gold</span></td>
						</tr>
						<tr>
							<td><span id='tdLength0' class='opacity00'>1</span></td>
							<td><span id='tdLength1' class='opacity00'>2</span></td>
							<td><span id='tdLength2' class='opacity00'>3</span></td>
							<td><span id='tdLength3' class='opacity00'>4</span></td>
						</tr>
					</table>
				</div>
				<div class="output-console center">
					<div class="output-console-title-bar">
						<span>Output</span>
					</div>
	        		<div class="output-console-body">
<span id='outputArgsLength'></span>
<span id='outputArgsOf0'></span>
<span id='outputArgsOf1'></span>
<span id='outputArgsOf2'></span>
<span id='outputArgsOf3'></span>
	        		</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	
</div>
</body>
</html>