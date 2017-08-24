
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File Operations</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/introjs.css" >
<link rel="stylesheet" href="/css/introjs-ct.css" >
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/animate.css">

<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery-ui-all.js"></script>
<script src="/js/intro.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/typewriting.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

<style>

.demo-heading {
	margin-top: 25px;
}

.margin-top-20 {
	margin-top: 20;
}

.margin-top-40 {
	margin-top: 40;
}

pre {
	font-size: 15px;
	border-radius: 15px;
	padding-left: 15px;
	height: 163px;
}

.ct-file {
	font-size: 15px;
	border-radius: 15px;
	padding: 15px;
	height: 163px;
	border: 1px solid #ccc;
}
 
.usr-file-name {
	letter-spacing: 1px;
	font-family: monospace;
	font-weight: bold;
}
 
.blink {
	animation-name: blinking;
	animation-duration: 1s;
	animation-iteration-count: infinite;
}

@keyframes blinking {
	50% {background: yellow;}
}

.ui-effects-transfer {
	border: 1px solid #003399;
	border-radius: 6px;
	position: relative;
	z-index: 9999999;
}

.introjs-fixParent {
	position: relative !important;
}

#typingDiv {
	border: 1px solid gray; 
	border-radius: 11px;
	height: 100px;
	padding: 8px;
	letter-spacing: 1px;
}

.syntax {
	padding-left: 20px;
}

.ct-code-b-red {
	color: red;
	font-family: monospace;
	font-weight: bold;
}

ol, ul {
    margin-bottom: 0;
    margin-top: 0;
    margin-left: 0;
}

[contenteditable=true]:empty:before {
  content: attr(placeholder);
  color: #B8B8A0;
}

.panel-primary > .panel-heading {
    background-color: #337ab7;
    letter-spacing: 1px;
    font-family: monospace;
}

.panel-body {
	color: black;
	padding: 3px;
}

.panel {
	height: 31px;
	border-color: lightgray;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
}

.panel-heading {
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	padding: 3px;
}

#writeText {
	height: 24px;
    padding-left: 5px;
    width: 250px;
}

#lastText {
	height: 24px;
    padding-left: 5px;
    width: 250px;
}
</style>
<script>

var introcode;
var typingInterval = 35;
$(document).ready(function() {
	introGuide();
	
	$('#restart').click(function() {
		location.reload();
	});
	
	var x = Math.floor((Math.random() * 1024) + 2565);
	$(".address").text(x);
	
	$("#writeText").on("keydown keyup", function(e) {
		var max = $(this).attr("maxlength");
		introcode.refresh();
		$(".error-text").remove();
		
		if ($(this).text() == "") {
			$(this).addClass("empty");
			$('.introjs-tooltiptext').append("<span class='ct-code-b-red error-text'><br/>Please enter string.</span>");
		} else {
			$(this).removeClass("empty");
		}
		
		if ($(".empty").length > 0) {
			$(".introjs-nextbutton").hide();
			introcode.refresh();
		} else {
			$(".introjs-nextbutton").show();
		}
		
		if ($.inArray(e.keyCode, [46, 37, 39]) !== -1) {
			return;
		}
  
		if ($(this).text().length >= max) {
			e.preventDefault();
		}
		
		if (e.keyCode == 13 || e.keyCode === 9 || e.keyCode === 27) {
			e.preventDefault();
		} 
	});
	
	$("#lastText").on("keydown keyup", function(e) {
		var max = $(this).attr("maxlength");
		$(".length-error-text").remove();
		if ($.inArray(e.keyCode, [46, 37, 39]) !== -1) {
			return;
		}
		
		if ($(this).text().length >= max) {
			e.preventDefault();
		}
		
		if (e.keyCode == 13 || e.keyCode === 9 || e.keyCode === 27) {
			e.preventDefault();
		} 
	});
});

function introGuide() {
	introcode = introJs();
	introcode.setOptions({
				showStepNumbers : false,
				exitOnOverlayClick : false,
				showBullets : false,
				exitOnEsc : false,
				keyboardNavigation : false,
				steps : [ {
							element: '#heading',
							intro: '',
							position: 'right'
						 }, {
						 	element: '#typingDiv',
							intro: '',
							tooltipClass: 'hide' 
						}, { 
							element: '#readEditor',
							intro: ''
						}, {
							element: '#FileOperation',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#writeOpen',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#usrFile',
							intro: ''
						}, {
							element: '#writeMode',
							intro: ''
						}, {
							element: '#writeOpen',
							intro: ''
						}, {
							element: '#txtFile',
							intro: '',
							tooltipClass: 'hide',
							position: 'top'
						}, {
							element: '#writeText',
							intro: '',
							position: 'top'
						}, {
							element: '#writeClose',
							intro: ''
						}, {
							element: '#txtFile',
							intro: '',
							tooltipClass: 'hide',
						}, {
							element: '#readOpen',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#readMode',
							intro: ''
						}, {
							element: '#readOpen',
							intro: ''
						}, {
							element: '#txtFile',
							intro: '',
							tooltipClass: 'hide',
							position: 'top'
						}, {
							element: '#readClose',
							intro: ''
						}, {
							element: '#txtFile',
							intro: '',
							tooltipClass: 'hide',
						}, {
							element: '#appendOpen',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#appendMode',
							intro: ''
						}, {
							element: '#appendOpen',
							intro: ''
						}, {
							element: '#txtFile',
							intro: '',
							tooltipClass: 'hide',
							position: 'top'
						}, { 
							element: '#appendClose',
							intro: ''
						}, {
							element: '#txtFile',
							intro: '',
							tooltipClass: 'hide'
						}, {
							element: '#restart',
							intro: '',
							position: 'right'
						} ]
	})
	
introcode.onafterchange(function(targetElement) {
	var elementId = targetElement.id;
	switch (elementId) {
	
	case "heading":
		$('.introjs-nextbutton').hide();
		var text = "Let us learn how to <span class='ct-code-b-yellow'>open</span> and <span class='ct-code-b-yellow'>close</span> a <b>file</b> in different <span class='ct-code-b-yellow'>modes</span>";
		typing('.introjs-tooltiptext', text, function() {
			$('.introjs-nextbutton').show();
		});
		break;
	
	case "typingDiv":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			$("#typingDiv").removeClass("opacity00");
			$("#typingDiv").append("<div class='text'></div>");
			var text = "To open a file use <b class='ct-blue-color'>fopen()</b> method, the syntax for fopen()<br>"
						+ "<span class='syntax'>FILE * <span id='openFile'>fopen(<span id='path'>filename</span>, <span id='mode'>mode</span>)</span>;</span><br>"
						+ "To close a file use <b class='ct-blue-color'>fclose()</b> method, the syntax for fclose()<br>"
						+ "<span class='syntax'>int <span id='closeFile'>fclose(FILE *fp)</span>;</span>";
			typing(".text", text, function() {
				$("#path").addClass("blink");
				$('.introjs-tooltip').removeClass("hide");
				var text = "<span class='ct-code-b-yellow'>Filename</span> specifies the complete <span class='ct-code-b-yellow'>path</span> of a file";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='buttonMode' onClick='modeBtn();'>Next &#8594;</a>");
				});
			});
		});
		break;
		
	case "readEditor":
		$("#closeFile").removeClass("blink");
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			$("#readEditor").removeClass("opacity00");
			var text = "Let us learn how to <span class='ct-code-b-yellow'>open</span> and <span class='ct-code-b-yellow'>close</span> a file in <span class='ct-code-b-yellow'>different modes</span>."
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();
			});
		});
		break;
			
	case "FileOperation":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			$("#FileOperation").removeClass("opacity00");
			typing("#FileOperation", $("#FileOperation").html(), function() {
				$("#fileRd").addClass("blink");
				$(".introjs-tooltip").removeClass("hide");
				var text = "FILE contains all the information to control the stream process, where the stream is a flow of data.";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='fPointer' onClick='filePointer();'>Next &#8594;</a>");
				});
			});
		});
		break;
		
	case "writeOpen":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			if (introcode._currentStep == 4) {
				$("#fpRd").removeClass("blink");
				$("#writeOpen").removeClass("opacity00");
				setTimeout(function() {
					introcode.nextStep();
				}, 500);
			} else {
				$('.introjs-tooltip').removeClass("hide");
				var text = "Here we open <span class='ct-code-b-yellow'>codetantra.txt</span> file in <b>write mode</b>";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			}
		});
		break;
			
	case "usrFile":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			var text = "This is a file.";
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();
			});
		});
		break;
		
	case "writeMode":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			var text = "<div>This is <span class='ct-code-b-yellow'>write</span> mode.</div> So the file is opened with in write mode. <div>File with a specified name is created if the file does not "
						+ "exist; the contents are deleted if the file already exists.</div>";
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();
			});
		});
		break;
		
	case "txtFile":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			if (introcode._currentStep == 8) {
				$("#txtFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
					$("#txtFile").removeClass("animated zoomIn");
					//$("#fpDiv").removeClass("opacity00");
					$(".address, .fa, .introjs-tooltip").removeClass("hide");
					var text = "Address will be stored in fp.";
					typing('.introjs-tooltiptext', text, function() {
						$('.address').effect( "transfer", { to: $(".panel-body"), className: "ui-effects-transfer" }, 1000, function() {
							$(".fp-address").text($(".address").text());
							var text = "<div><span class='ct-code-b-yellow'>codetantra.txt</span> file opened in write mode.</div> You can enter any data that text will be stored in <span class='ct-code-b-yellow'>codetantra.txt</span> file.";
							typing('.introjs-tooltiptext', text, function() {
								$("#writeText").removeClass("opacity00");
								$('[contenteditable="false"]').attr('contenteditable', 'true');
								caretAtEnd(document.getElementById('writeText'));
							});
						});
					});
				});
			} else if (introcode._currentStep == 11 || introcode._currentStep == 17 || introcode._currentStep == 23) {
				$("#txtFile").addClass("animated zoomOut").addClass("opacity00").one('animationend', function() {
					$("#txtFile").removeClass("animated zoomOut");
					$("#fpDiv").addClass("opacity00");
					$(".fa, .address").remove();
					setTimeout(function() {
						introcode.nextStep();
					}, 300);
				});
			} else if (introcode._currentStep == 15) {
				$("#txtFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
					$("#txtFile").removeClass("animated zoomIn");
					$("#writeText").removeClass("opacity00");
					$('.introjs-tooltip').removeClass("hide");
					var text = "<div><span class='ct-code-b-yellow'>codetantra.txt</span> file opened in read mode.</div> In this you can read the data .";
					typing('.introjs-tooltiptext', text, function() {
						$('.introjs-nextbutton').show();
					});
				});
			} else {
				$("#txtFile").removeClass("opacity00").addClass("animated zoomIn").one('animationend', function() {
					$("#txtFile").removeClass("animated zoomIn");
					$("#writeText").removeClass("opacity00");
					$('.introjs-tooltip').removeClass("hide");
					var text = "<span class='ct-code-b-yellow'>codetantra.txt</span> file opened in <b>append</b> mode. you can <b>read</b> or <b>write</b> the text.";
					typing('.introjs-tooltiptext', text, function() {
						$('[contenteditable="false"]').attr('contenteditable', 'true');
						caretAtEnd(document.getElementById('lastText'));
						$('.introjs-nextbutton').show();
					});
				});
			}
		});
		break;
		
	case "writeText":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			$(".fp-address").addClass("hide");
			$(".fa, .address").remove();
			$(".null").removeClass("hide");
			$("#writeText").attr('maxlength', '30');
			$('[contenteditable="false"]').attr('contenteditable', 'true');
			caretAtEnd(document.getElementById('writeText'));
			introcode.refresh();
			var text = "You can enter any data that data will be stored in <span class='ct-code-b-yellow'>codetantra.txt</span> file.";
			typing('.introjs-tooltiptext', text, function() {
				$("#readText, #appendText").removeClass("opacity00");
				$(".introjs-nextbutton").show();
			});
		});
		break;
		
		
	case "writeClose":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			$("#writeClose").removeClass("opacity00");
			typing("#writeClose", $("#writeClose").text(), function() {
				var text = "<span class='ct-code-b-yellow'>fclose()</span> function is used to close the file and "
							+ "it automatically <span class='ct-code-b-yellow'>save</span> that file."
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				})
			});
		});
		break;
		
	case "readOpen":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			if (introcode._currentStep == 12) {
				$("#readOpen").removeClass("opacity00");
				setTimeout(function() {
					introcode.nextStep();
				}, 500);
			} else {
				$('.introjs-tooltip').removeClass("hide");
				var text = "Here we open <span class='ct-code-b-yellow'>codetantra.txt</span> file in read mode";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			}
		});
		break;
		
	case "readMode":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			var text = "<div>This is read mode.</div><div>So the file is opened with in read mode.</div>In reading mode, the file is opened with the current contents safe if the file"
						+ "already exists; otherwise an error occurs."
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();		
			});
		});
		break;
		
	case "readClose":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			$("#readClose").removeClass("opacity00");
			var text = "<span class='ct-code-b-yellow'>fclose()</span> function is used to close the file and "
						+ "it automatically <span class='ct-code-b-yellow'>save</span> that file."
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();		
			});
		});
		break;
		
	case "appendOpen":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			if (introcode._currentStep == 18) {
				$("#appendOpen").removeClass("opacity00");
				setTimeout(function() {
					introcode.nextStep();
				}, 500);
			} else {
				$('.introjs-tooltip').removeClass("hide");
				var text = "Here we open <span class='ct-code-b-yellow'>codetantra.txt</span> file in append mode";
				typing('.introjs-tooltiptext', text, function() {
					$('.introjs-nextbutton').show();
				});
			}
		});
		break;
		
	case "appendMode":
		$('.introjs-nextbutton').hide();
		$("#txtFile").addClass("opacity00");
		$(".introjs-helperLayer").one('transitionend', function() {
			$("#appendOpen").removeClass("opacity00");
			var text = "<div>This is append mode.</div><div>So the file opened with in append mode.</div>In <span class='ct-code-b-yellow'>append</span> mode, the file is opened with the current contents safe if the"
						+ "file exist.";
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();		
			});
		});
		break;
		
	case "appendClose":
		$('.introjs-nextbutton').hide();
		$(".introjs-helperLayer").one('transitionend', function() {
			$("#appendClose").removeClass("opacity00");
			var text = "<span class='ct-code-b-yellow'>fclose()</span> function is used to close the file and "
						+ "it automatically <span class='ct-code-b-yellow'>save</span> that file."
			typing('.introjs-tooltiptext', text, function() {
				$('.introjs-nextbutton').show();
			});
		});
		break;
		
	case "restart":
		$(".introjs-nextbutton").hide();
		$(".introjs-helperLayer").one("transitionend", function() {
			$("#restart").removeClass("opacity00");
			var text = "Click to restart.";
			typing(".introjs-tooltiptext", text);
		});
		break;
	}
});

	introcode.start();
	$('.introjs-skipbutton').hide();
	$('.introjs-prevbutton').hide();
}

function typing(typingId, typingContent,callBackFunction) {
	$(typingId).typewriting( typingContent , {
		"typing_interval": typingInterval,
		"cursor_color": 'white',
	}, function() {
		$(typingId).removeClass('typingCursor');
		if (typeof callBackFunction === "function") {
			callBackFunction();
		}
	});
}

function modeBtn() {
	$("#path").removeClass("blink");
	$("#buttonMode").remove();
	$("#mode").addClass("blink");
	$('.introjs-tooltiptext').append('<div class="mode-text"></div>');
	var text = "<div><span class='ct-code-b-yellow'>mode</span> specifies the purpose of <b>opening</b> file</div>"
				+ "<div>i.e., for <b>reading / writing / appending</b>.";
	typing(".mode-text", text, function() {
		$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='buttonOpen' onClick='fOpenBtn();'>Next &#8594;</a>");
	});
}

function fOpenBtn() {
	$("#buttonOpen").remove();
	$("#mode").removeClass("blink");
	$("#openFile").addClass("blink");
	$('.introjs-tooltiptext').append('<div class="open-text"></div>');
	var text = "<span class='ct-code-b-yellow'>fopen()</span> function is used to <span class='ct-code-b-yellow'>open</span> an existing or a new file.";
	typing(".open-text", text, function() {
		$('.introjs-tooltipbuttons').append("<a class='introjs-button introjs-nextbutton' id='buttonClose' onClick='fCloseBtn();'>Next &#8594;</a>");
	});
}

function fCloseBtn() {
	$("#buttonClose").remove();
	$("#openFile").removeClass("blink");
	$("#closeFile").addClass("blink");
	$('.introjs-tooltiptext').append('<div class="close-text"></div>');
	var text = "<span class='ct-code-b-yellow'>fclose()</span> function is used to <span class='ct-code-b-yellow'> save</span> the operations done on file and <span class='ct-code-b-yellow'>close</span> the file."
	typing(".close-text", text, function() {
		$('.introjs-nextbutton').show();
	});
}

function filePointer() {
	$("#fPointer").remove();
	$("#fileRd").removeClass("blink");
	$("#fpRd").addClass("blink");
	$('.introjs-tooltiptext').append('<div class="pointer-text"></div>');
	var text = "fp is a <span class='ct-code-b-yellow'>File pointer</span> that contains the address of the structure <span class='ct-code-b-yellow'>FILE</span>.";
	typing('.pointer-text', text, function() {
		$('#FileOperation').effect( "transfer", { to: $("#fpDiv"), className: "ui-effects-transfer" }, 1000, function() {
			$("#fpDiv").removeClass("opacity00");
			$('.introjs-nextbutton').show();
		});
	});
}

function caretAtEnd(element) {
	element.focus();
	if (typeof window.getSelection != "undefined" && typeof document.createRange != "undefined") {
		var range = document.createRange();
		range.selectNodeContents(element);
		range.collapse(false);
		var sel = window.getSelection();
		sel.removeAllRanges();
		sel.addRange(range);
	}
}
</script>
</head>
<body>
	<div class="demo-heading text-center">
		<h4 class="label ct-demo-heading" id="heading">File Operations</h4>
	</div>
	<div class="col-xs-12">
		<div class="col-xs-12 margin-top-20">
			<div class="col-xs-6 col-xs-offset-3 opacity00" id="typingDiv"></div>
		</div>
		 <div class="col-xs-12 margin-top-40">
		 	<div class="col-xs-4 col-xs-offset-1">
<pre id="readEditor" class="opacity00 margin-top-20"><span id="FileOperation" class="opacity00"><span id="fileRd">FILE</span> *<span id="fpRd">fp</span>;</span>
<span id="writeOpen" class="opacity00">fp = fopen(<span id="usrFile">"codetantra.txt"</span>, <span id="writeMode">"w"</span>);</span>
<span id="writeClose" class="opacity00">fclose(fp);</span>
<span id="readOpen" class="opacity00">fp = fopen("codetantra.txt", <span id="readMode">"r"</span>);</span>
<span id="readClose" class="opacity00">fclose(fp);</span>
<span id="appendOpen" class="opacity00">fp = fopen("codetantra.txt", <span id="appendMode">"a"</span>);</span>
<span id="appendClose" class="opacity00">fclose(fp);</span></pre>
			</div>
			<div class="col-xs-7">
				<div id="fpDiv" class="col-xs-2 col-xs-offset-1 panel-primary opacity00 margin-top-40">
					<div class="file-name panel-heading text-center">fp</div>
					<div class="panel panel-body text-center">
						<div class="fp-address"></div>
						<div class="null hide">NULL</div>
					</div>
				</div>
			<div class="col-xs-6 col-xs-offset-1 opacity00" id="txtFile">
				<div class="text-center usr-file-name">codetantra.txt</div>
				<div class="ct-file">
					<div id="writeText" contenteditable="false" spellcheck="false" maxlength="1" placeholder=" "></div>
					<div class="fa fa-arrow-up hide"></div>
					<div><span class="address hide">1024</span></div>
					<div id="readText" class="opacity00">Opens file for reading only</div>
					<div id="appendText" class="opacity00">Opens file for reading and writing</div>
					<div id="lastText" contenteditable="false" spellcheck="false" maxlength="30" placeholder=" "></div>
				</div>
			</div>
		</div>
		</div>	
		<div class="col-xs-12 text-center margin-top-20">
			<span id="restart" class="opacity00 btn btn-warning">Restart</span>
		</div>
	</div>
</body>
</html>