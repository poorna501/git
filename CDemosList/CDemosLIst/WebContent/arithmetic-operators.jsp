<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="/js/jquery-latest.js"></script>
<script src="/js/jquery-ui-latest.js"></script>
<link rel="stylesheet" href="/css/jquery-ui.css">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/font-awesome-animation.min.css" rel="stylesheet">
<script src="/js/bootstrap.min.js"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/alertify.js"></script>
<link rel="stylesheet" href="/css/alertify/alertify.bootstrap.css"/>
<link rel="stylesheet" href="/css/alertify/alertify.core.css"/>
<link rel="stylesheet" href="/css/alertify/alertify.default.css"/>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<script src="/js/gs/TimelineLite.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.border {
	border: 2px solid gray;
	border-radius: 15px;
	min-height: 140px;
}

.border > ul {
	margin-top: 10px;
}

.animation-div-border {
	height: 320px;
	font-family: monospace;
}

.table-border {
	border: 2px solid gray;
	padding: 4px 6px;
}

.background-color {
	background-color: lavender;
}

.margin-top20 {
	margin-top: 20px;
}

.margin-top06 {
	margin-top: 6px;
}

.input-text {
	/* width: 40px; */
	border: 2px solid orange;
	text-align: center;
	border-radius: 5px;
	width: 18%;
}

.line-div {
	border: 1px solid gray;
}

.nextButton {
	background-color: green;
}


th {
	text-align: center;
}

table {
	table-layout: fixed;
	text-align: center;
	width: 100%;
}

td, th {
    padding: 2px;
    width: 2%;
}

.reveal-right {
	position: relative;
	overflow: hidden;
	-moz-animation: reveal-right 1s ease;
	-moz-animation-fill-mode: forwards; 
}

.inputBox {
	height: 26px;
	width: 9%;
}

.inputWidth {
	width: 19%;
	text-align: center;
}


@-moz-keyframes reveal-right {
	0%   {width: 0%;}
	100% {width: 100%;}
}

.position-relative {
	position: relative;
	display: inline-block;
}

.next-button {
	background-color: green !important; 
	border: 1px solid #d4d4d4;
    border-radius: 0.2em;
    /* color: #333;*/
    cursor: pointer; 
    display: inline-block;
    font: 11px sans-serif;
    padding: 3px;
}
.blinking-circle {
	border: 1px solid red;
	border-radius : 50%;
	padding: 2px 3px;
}

.padding0 {
	padding: 0;
}

#animationDiv {
	background-color: #eeeefe;
}

#operatorAnimation {
	background-color: #fffbf5;
}

#selectList {
	color: #FF308F;
	text-align: center;
}

.length-error-text {
	color: red;
}

.zIndex9999999 {
	z-index: 9999999;
	position: relative;
}

.ct-code-b-green {
	color: green;
    font-family: monospace;
    font-weight: bold;
}

.ct-code-b-red {
	color: red;
    font-family: monospace;
    font-weight: bold;
}
</style>
<script type="text/javascript">
var tl = new TimelineLite();
var firstVal = 0;
var secondVal = 0;
var next = 1;
var first;
var second;
$(document).ready(function() {
	
	$(".inputWidth").on("keydown", function(e) {
		var max = $(this).attr("maxlength");
		
		if ( e.which == 8 || e.which == 37 || e.which == 39) {
			$('.length-error-text').remove();
			return true;
		}
		
		if($(this).val().length >= max) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Max length was restricted to "+ max +" characters only.</div>");
			//e.preventDefault();
			return false;
		} 
		
		
		 if ($("#selectType").val() == "int") {
			 //$('.length-error-text').remove();
			 if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
				$('.length-error-text').remove();	
			} 
			
			if((e.shiftKey) || (e.keyCode > 8 && e.keyCode < 48) || (e.keyCode > 57 && e.keyCode < 96) || (e.keyCode > 105)) {
				$('.length-error-text').remove();
				$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only the integers.</div>");
				e.preventDefault();
			} 
		
		} 
		 
		 if ($("#selectType").val() == "float") {
				if (e.keyCode == 190 || e.keyCode == 110) {
					$('.length-error-text').remove();
					return true;
				}
				
				if ((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)) {
					$('.length-error-text').remove();	
				} 
				
				if((e.shiftKey) || (e.keyCode > 8 && e.keyCode < 48) || (e.keyCode > 57 && e.keyCode < 96) || (e.keyCode > 105)) {
	
					$('.length-error-text').remove();
					$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only the Float.</div>");
					e.preventDefault();
				}
		} 
		
		
		 if ($("#selectType").val() == "char") {
			 
				if((e.shiftKey) || (e.keyCode > 8 && e.keyCode < 48) || (e.keyCode > 106)) {
					$('.length-error-text').remove();
					$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter only the 1 Character.</div>");
					e.preventDefault();
				}
				
		} 
		 
	})
	
	
	$("#selectType").on("change", function() {
		console.log(" select option changed..");
		$("#charStep > li").remove();
		$(".inputWidth").val("");
		var type = $("#selectType").val();
		$("#dataType").text(type);
		if (type === "int") {
			$("#typeChange").text("integer");
			$(".inputWidth").attr("maxlength","2");
		} else if (type === "char") {
			$("#typeChange").text("char");
			$(".inputWidth").attr("maxlength","1");
		} else if (type === "float") {
			$("#typeChange").text("float");
			$(".inputWidth").attr("maxlength","3");
		}
	})
	
	$("#selectList").on("change", function() {
	//	$("#selectList").val("0").change();
		var value = $(this).val();
		if ($("#selectList").val() == "0") {
			console.log(" in the if condition of change.. ");
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Select the relational operator from the menu.</div>");
			$("#submit").attr("disabled", "disabled");
		} else {
			$('.length-error-text').remove();
			//$("#selectSub").html(options[value]);
			$("#submit").removeAttr("disabled");
		}
		
	})
	
	var count1 = 0;
	
	$(".inputWidth").bind("keyup", function(e) {
		var select = $("#selectList option:selected").val();
		
		if ($("#firstNum").val().startsWith('.') || $("#firstNum").val().endsWith('.')) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter valid Float value.</div>");
			//e.preventDefault();
			return false;
		}
		
		if ($("#secondNum").val().startsWith('.') || $("#secondNum").val().endsWith('.')) {
			$('.length-error-text').remove();
			$(".introjs-tooltiptext").append("<div class='length-error-text'>Enter valid Float value.</div>");
			return false;
		}
		
		if (($("#firstNum").val().length != 0) && ($("#secondNum").val().length != 0)) {
			if (intro._currentStep == 1) {
				$(".introjs-nextbutton").show();
			} else if (select !==0){
				$("#submit").removeAttr("disabled");
			}
		} else {
			$(".introjs-nextbutton").hide();
			$("#submit").attr("disabled", "disabled");
		}
		
	})
	
	intro =  introJs();
	intro.setOptions({
		showStepNumbers: false,
		exitOnOverlayClick: false,
		showBullets: false,
		exitOnEsc: false,
		keyboardNavigation: false,
		steps : [
					{
						element : "#informationDiv",
						intro : "",
						position : "bottom",
						tooltipClass: "hide"
					},
					{
						element : "#initialize",
						intro : "",
						position : "right"
					},
					{
						element : "#selectDiv",
						intro : "",
						position : "right"
					},
					{
						element : "#operatorAnimation",
						intro : "",
						position : "right"
					},
					{
						element : "#animationDiv",
						intro : "",
						position : "right"
					}
				]
	})
	intro.onafterchange(function(targetElement) {
		var ElementId = targetElement.id;
		switch (ElementId) {
		case "initialize":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#animationDiv").removeClass("visibility-hidden");
				var text = "Enter the <span id='typeChange' class='ct-code-b-yellow'>integer</span> values.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
				})
			});
		break;
		case "selectDiv":
			$(".introjs-nextbutton").hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "Select the type of <span class='ct-code-b-yellow'>arithmetic</span> operator and click on evaluation button.";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
					$(".introjs-tooltipbuttons").append('<span class="next-button visibility-hidden">Next →</span>');
					nextClick();	
				})
			});
		break;
		case "operatorAnimation":
			$(".introjs-helperLayer").one("transitionend", function() {
				$('.introjs-nextbutton').hide();
				var text = "In the evaluation process...<ul><span id='charStep'></span></ul>";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').hide();
					relationalAnimation();
				});
			});
		break;
		case "animationDiv":
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				var text = "To know working of another operator select <span class='ct-code-b-yellow'>relational</span> again.<br/>"
					+" <div class='text-center'>(or)</div> Click <span class='ct-code-b-yellow'>restart</span> button to restart the session.<ul><span id='charStep'></span></ul>";
				typing(".introjs-tooltiptext", text, function() {
					$(".introjs-nextbutton").hide();
					$("#restart").removeClass("opacity00");
					$("#restart").addClass("zIndex9999999");
				})
			});
		break;
		}
	})
	intro.start();
	$("button").attr('disabled','disabled');
	$('.introjs-prevbutton').hide();
	$('.introjs-skipbutton').hide();
	
		
					var text = "<ul><li>The operands acted upon by <span class='ct-code-b-green'>arithmetic</span> operators must"
								+" represent numeric values, such as <span class='ct-code-b-green'>integer</span>, "
								+"<span class='ct-code-b-green'>float</span> and <span class='ct-code-b-green'>character</span> quantities.</li>" 
								+"<li>The <span class='ct-code-b-green'>remainder operator(%)</span> requires that the both operands be "
								+"<span class='ct-code-b-green'>integers</span> and the second operand be <span class='ct-code-b-green'>non-zero"
								+"</span>.</li><li>The <span class='ct-code-b-green'>remainder operator(%)</span> does not work for "
								+"<span class='ct-code-b-green'>float</span> variables.</li><li>The <span class='ct-code-b-green'>division "
								+"operator(/)</span> requires that the <span class='ct-code-b-green'>second</span>"
								+" operand be <span class='ct-code-b-green'>non-zero</span>.</li></ul>";	
					typing("#informationDiv", text, function() {
						$("#informationDiv").addClass("zIndex9999999");
						intro.nextStep();
					})
	
					
	$("#submit").click(function() {
		$("#charStep > li").remove();
		if (next > 1) {
			relationalAnimation();
		}
		if (next == 1) {
			console.log(" in the next step " + next)
			next = 2;
			intro.nextStep();
		}
	});
					
	$("#restart").click(function() {
		location.reload(true);
	})				
})



	function nextClick() {
	$(".next-button").click(function() {
		$("#charStep > li").remove();
		 
			$(".next-button").hide();
			$("#operatorAnimation > div div:nth-child(2)").removeClass('visibility-hidden');
			
			var firstNum = $("#firstNum").val();
			var secondNum = $("#secondNum").val();
			
			if ($("#selectType").val() === "float") {
				 if (firstNum.indexOf('.') === -1) {
					 firstNum = firstNum + ".00";
				 }
				 
				 if (secondNum.indexOf('.') === -1) {
					 secondNum = secondNum + ".00";
				 }
				 
			 } 
			
			flipEffect("#num1Val", firstNum, function() {
				flipEffect("#num2Val", secondNum, function() {
					$("#result").removeClass("length-error-text");
					if ($("#selectList").val() === "%" && $("#selectType").val() === "float") {
						console.log(" in the % and float...")
								$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
								$(".length-error-text").remove();
								var text = "<span class='length-error-text'>Error : </span><span class='ct-code-b-yellow'>%</span> operator is not applicable for"
											+" <span class=''>float</span> values."; 
								typing(".introjs-tooltiptext", text, function() {
									$("#result").text("Error").addClass("length-error-text");
								})
					} else if (Math.floor(secondNum) === 0 && $("#selectType").val() !== "char") {
								if ($("#selectList").val() === "%" || $("#selectList").val() === "/") {
										$(".length-error-text").remove();
										var text = "<span class='ct-code-b-red'>Error : The second operand of division(/)"
												+" operator must be non-zero.</span>";
										typing(".introjs-tooltiptext", text, function() {
										})
								} else  {
									handlingExceptionAnimation()
								}
					} else {
						handlingExceptionAnimation();
					}					
				});	
			});
		
	});
	}


function handlingExceptionAnimation() {
	if ($("#selectType").val() === "char") {
		var text = "<li>Here we convert the character to the <span class='ct-code-b-yellow'>ASCII</span> value.</li>";
		$(".introjs-nextbutton").hide();
		typing("#charStep", text, function() {
			$(".introjs-nextbutton").hide();
			flipEffect("#num1Val", $("#num1Val").text().charCodeAt(0), function() {
				flipEffect("#num2Val", $("#num2Val").text().charCodeAt(0), function() {
					operatorEvaluationAnimaton(function() {
						var text = "<li>The result value of the <span class='ct-code-b-yellow'>char</span>"
								+" will convert into <span class='ct-code-b-yellow'>ASCII</span> code and"
								+" stores in a variable <span class='ct-code-b-yellow'>result</span>.</li>";
								$(".introjs-nextbutton").hide();
								typing("#charStep", text, function() {
									$(".introjs-nextbutton").show();
								});
					});
				})
			})
		});
	} else if ($("#selectType").val() === "float") {
		operatorEvaluationAnimaton();
	}  else if ($("#selectType").val() === "int") {
		operatorEvaluationAnimaton();
	} 
}


function relationalAnimation() {
	$("#operatorAnimation").empty();
	$("button").attr('disabled','disabled');
	$('.length-error-text').remove();
	
	var dataType = $("#selectType").val();
	$("#operatorAnimation").append("<div class='col-xs-offset-3'><div><span class=''><b id='dataType'>"+ dataType +"</b></span> <span>result</span> = (<span id='exp1'>num1</span><span class='select-operator'></span><span id='exp2'>num2</span>)</div>"+
			"<div class='visibility-hidden'><span class='visibility-hidden'>int</span> <span class='visibility-hidden'>result  </span> = (<span id='num1Val' class='position-relative'>num1</span><span class='select-operator'></span><span id='num2Val' class='position-relative'>num2</span>)</div>"+
			"<div class='visibility-hidden'><span class='visibility-hidden'>int</span> <span class='visibility-hidden'>result  </span> = <span></span><span id='result' class='position-relative'></span></div></div>");
	var operator = $("#selectList option:selected").text();
	$(".select-operator").text(operator);
	var firstVal = $("#firstNum").val();
	var secondVal = $("#secondNum").val();
	$(".next-button").click();
}

function operatorEvaluationAnimaton(callBackFunction) {
	
	var operator = $("#selectList option:selected").text().trim();
	/*  if ($("#selectType").val() === "float") {
		 
	 }  */
	 first = $("#num1Val").text().trim();
	 second = $("#num2Val").text().trim();
	if ($("#selectType").val() === "float") {
		if (operator === "+") {
			console.log(" in the " + operator);
			$("#result").text(Number(first) + Number(second));
		} else if (operator === "-") {
			$("#result").text(Number(first) - Number(second));
		} else if (operator === "%") {
			$("#result").text(Number(first) % Number(second));
		} else if (operator === "/") {
			$("#result").text((Number(first) / Number(second)).toFixed(6));
		} else if (operator === "*") {
			$("#result").text(Number(first) * Number(second));
		}
	} else {
		if (operator === "+") {
			console.log(" in the " + operator);
			$("#result").text((Number(first) + Number(second)));
		} else if (operator === "-") {
			$("#result").text(Number(first) - Number(second));
		} else if (operator === "%") {
			$("#result").text(Math.floor(Number(first) % Number(second)));
		} else if (operator === "/") {
			$("#result").text(Math.floor(Number(first) / Number(second)));
		} else if (operator === "*") {
			$("#result").text(Number(first) * Number(second));
		}
		
	}
	if ($("#selectType").val() === "float") {
		
		if ($("#result").text().indexOf('.') === -1) {
			$("#result").text($("#result").text() + '.00');
			$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
		} else {
			$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
		}
	} else {
		$("#operatorAnimation > div div:nth-child(3)").removeClass('visibility-hidden');
	}
	
	$("button").removeAttr('disabled');
	if (next == 2) {
		$('.introjs-nextbutton').show();
		next++;
	}
	if (typeof callBackFunction === "function") {
		callBackFunction();
	}
}

function typing(selector, text, callBackFunction) {
		var typingSpeed = 40;
		$(selector).typewriting( text , {
			"typing_interval": typingSpeed,
			"cursor_color": 'white',
		}, function() {
			$(selector).removeClass("typingCursor");
			$(".introjs-nextbutton").show();
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		})
	}
	
function flipEffect(selector, val, callBackFunction) {
	TweenMax.to($(selector), 0.5, {rotationX : -90, onComplete:function() {
		$(selector).text(val);
		TweenMax.to($(selector), 0.5, {rotationX : 0, onComplete:function() {
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		}});
	}});
}	

</script>
</head>
<body>
	<div class="col-xs-12">
		<h2 class="text-center">
			<span class="label label-default ct-demo-heading">Arithmetic Operators</span>
		</h2>
		<div id="informationDiv" class="col-xs-offset-2 col-xs-8 border margin-top20 background-color padding0"></div>
		<div class="col-xs-offset-3 col-xs-5 border margin-top20 visibility-hidden" id="animationDiv">
		<div class="col-xs-12 padding0">
			<div class="col-xs-12 padding0">
				<div class="col-xs-12">
					<div class="margin-top06" id="initialize"><!-- <span class='opacity00'>int&nbsp;</span> -->
					<span>
						<select id='selectType'>
					 				<!-- <option value="0" selected>--select--</option> -->
									<option value="int">int</option>
									<option value="char">char</option>
									<option value="float">float</option>
								</select>
					</span>
					<span>number1</span> = <span><input maxlength=2 type="text" placeholder="Number" id='firstNum' class='inputWidth'></span>,
				 	<span>number2</span> = <span><input maxlength=2 type="text" id='secondNum' placeholder="Number" class='inputWidth'></span>;</div>
				 </div>
				 <div class="col-xs-12 margin-top06" id="selectDiv">
					<div class="col-xs-12 margin-top06"><span>Arithmetic Operator:</span>
				 		<span>
					 			<select id='selectList'>
					 				<option value="0" selected>--select--</option>
									<option value="+"> + </option>
									<option value="-"> - </option>
									<option value="%"> % </option>
									<option value="/"> / </option>
									<option value="*"> * </option>
									<!-- <option value="!="> != </option> -->
								</select>
							</span>
					</div>
					<div class='col-xs-12 text-center' style="margin-top: 4px; margin-left: 15px;"><button type="button" id='submit'>&nbsp;evaluation&nbsp;</button></div>
				</div>
				</div>
				<div class="col-xs-12">
					<div id='operatorAnimation' class='margin-top20' style='height:135px;border:1px solid gray;margin-bottom: 10px;border-radius: 10px;'></div>
				</div>	
			</div>
		</div>
		<div class="col-xs-12 margin-top20 text-center">
			<span class="btn btn-warning opacity00" id="restart">Restart</span>
		</div>
	</div>
</body>
</html>
