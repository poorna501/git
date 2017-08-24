<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Operator.jsp</title>
<style type="text/css">
.box-border {
	border-radius: 12px;
	border: 2px solid gray;
}

.buttons-div {
	margin-top: 20px;
	margin-bottom: 5px;
	text-align: center;
}

#operatiorsDefinity {
    height: 120px;
}

.margin-top {
    height: 610px;
    margin-top: 4px;
}

.margintop {
	margin-top: 5px;
}

.margin {
    margin-top: 18px;
}


.padding0 {
    padding-left: 0;
    padding-right: 0;
}

.operatorsList {
    margin-left: 172px;
}

.btn-color {
	background-color: green !important;
}

.operators-heading {
    background: "";
    border-radius: 4px;
    font-weight: bold;
    margin-top: 3px;
}

#nextBtn {
    display: inline-block;
    margin-left: 332px;
    margin-top: -26px;
    position: relative;
}

.z-index1000000 {
	position: relative;
	background-color: white;
	z-index: 10000000 !important;
}

.size {
    font-size: 12px;
}

.nextBtn {
    display: inline-block;
    margin-left: 110px;
    margin-top: -24px;
    position: relative;
}

.ct-code-b-red {
	font-weight: bold;
	font-family: monospace;
	color: rgb(252, 66, 66);
}
.ct-code-b-green {
	font-weight: bold;
	font-family: monospace;
	color: green;
}

.ct-code-b-blue {
	font-weight: bold;
	font-family: monospace;
	color: blue;
}
</style>
</head>
<body>
	<div class="ct-box-main">
		 <div class="text-center">
			<h1 class = "label ct-demo-heading text-center">Types of operators</h1>
		</div> 
		<div class ="col-xs-10 col-xs-offset-1 margin" id = "operatorsDiv">
			<div class = "col-xs-12 box-border" id = "operatiorsDefinity">
	  			<span id = "operatorDefinity"></span>
	  		</div>
			<div class = "col-xs-12 padding0 margin-top" id = "unaryDiv">
				<div class = "col-xs-12 margintop">
					<div class = "col-xs-3 col-xs-offset-4 text-center visibility-hidden operators-heading" id = "unary">Unary Operator</div>
						<div id="unaryOperatorText" class="col-xs-12 padding0 margintop"></div>
							<div class = "col-xs-12 margintop">
								<div class = "col-xs-3" id = "unaryOperators0">
									<ul class = "unaryOperatorsList">
										<li class = "visibility-hidden unary-operator1"><span class = "ct-code-b-red">++</span>  (<b>Increment</b>)</li>
									  	<li class = "visibility-hidden unary-operator2"><span class = "ct-code-b-red">--</span>  (<b>Decrement</b>)</li>
								  	</ul>
								</div>
								<div class = "col-xs-3" id = "unaryOperators1">
									<ul class = "unaryOperatorsList">
								  		<li class = "visibility-hidden unary-operator3"><span class = "ct-code-b-red opr1">&</span>  (<b>Address-of</b>)</li>
								  		<li class = "visibility-hidden unary-operator4"><span class = "ct-code-b-red opr2">*</span>  (<b>Pointer dereference</b>)</li>
								  	</ul>
								</div>
								<div class = "col-xs-3" id = "unaryOperators2">
									<ul class = "unaryOperatorsList">
								  		<li class = "visibility-hidden unary-operator5"><span class = "ct-code-b-red opr3">+</span>  (<b>Unary Plus</b>)</li>
								  		<li class = "visibility-hidden unary-operator6"><span class = "ct-code-b-red opr4">-</span>  (<b>Unary minus</b>)</li>
									</ul>
								</div>
								<div class = "col-xs-3" id = "unaryOperators3">
									<ul class = "unaryOperatorsList">
								  		<li class = "visibility-hidden unary-operator7"><span class = "ct-code-b-red">~</span>  (<b>Once's Complement</b>)</li>
										<li class = "visibility-hidden unary-operator8"><span class = "ct-code-b-red">!</span>  (<b>Logical NOT</b>)</li>
								  		<li class = "visibility-hidden unary-operator9"><span class = "ct-code-b-red">()</span>  (<b>Cast</b>)</li>
									</ul>
								</div>
								<div id ="syntax" class = "margintop"></div>
						<div class = "col-xs-12 margintop" id = "binaryDiv">
						<div class = "col-xs-3 col-xs-offset-4 text-center visibility-hidden operators-heading" id = "binary">binary Operator</div>
						<div id="binaryOperatorText" class="col-xs-12 padding0 margintop"></div>
							<div class = "col-xs-12 margintop">
								<div class = "col-xs-3" id = "binaryOperators0">
									<ul class = "binaryOperatorsList">
										<li class = "visibility-hidden binary-operator1"><span class = "ct-code-b-red opr5">+</span>  (<b class ="size">Addition</b>)</li>
									  	<li class = "visibility-hidden binary-operator2"><span class = "ct-code-b-red opr6">-</span>  (<b class ="size">Subtraction</b>)</li>
									  	<li class = "visibility-hidden binary-operator3"><span class = "ct-code-b-red opr7">*</span>  (<b class ="size">Multiplication</b>)</li>
									  	<li class = "visibility-hidden binary-operator4"><span class = "ct-code-b-red">/</span>  (<b class ="size">Division</b>)</li>
									  	<li class = "visibility-hidden binary-operator5"><span class = "ct-code-b-red">%</span>  (<b class ="size">Modulus</b>)</li>
									  	<li class = "visibility-hidden binary-operator6"><span class = "ct-code-b-red">||</span>  (<b class ="size">Logical OR</b>)</li>
									  	<li class = "visibility-hidden binary-operator7"><span class = "ct-code-b-red">&&</span>  (<b class ="size">Logical AND</b>)</li>
									  	<li class = "visibility-hidden binary-operator8"><span class = "ct-code-b-red">=</span>  (<b class ="size">Assignment-of</b>)</li>
								  	</ul>
								</div>
								<div class = "col-xs-3" id = "binaryOperators1">
									<ul class = "binaryOperatorsList">
										<li class = "visibility-hidden binary-operator9"><span class = "ct-code-b-red">==</span>  (<b class ="size">Equality</b>)</li>
										<li class = "visibility-hidden binary-operator10"><span class = "ct-code-b-red">&gt;</span>  (<b class ="size">Greater than</b>)</li>
									  	<li class = "visibility-hidden binary-operator11"><span class = "ct-code-b-red">&lt;</span>  (<b class ="size">Less than</b>)</li>
									  	<li class = "visibility-hidden binary-operator12"><span class = "ct-code-b-red">&lt;&lt;</span>  (<b class ="size">Left shift</b>)</li>
									  	<li class = "visibility-hidden binary-operator13"><span class = "ct-code-b-red">&gt;&gt;</span>  (<b class ="size">Right shift</b>)</li>
								  		<li class = "visibility-hidden binary-operator14"><span class = "ct-code-b-red opr8">&</span>  (<b class ="size">Bitwise AND</b>)</li>
								  		<li class = "visibility-hidden binary-operator15"><span class = "ct-code-b-red">^</span>  (<b class ="size">Exclusive OR</b>)</li>
								  		<li class = "visibility-hidden binary-operator16"><span class = "ct-code-b-red">!=</span>  (<b class ="size">Inequality</b>)</li>
								  	</ul>
								</div>
								<div class = "col-xs-3" id = "binaryOperators2">
									<ul class = "binaryOperatorsList">
										<li class = "visibility-hidden binary-operator17"><span class = "ct-code-b-red">+=</span>  (<b class ="size">Addition assignment</b>)</li>
								  		<li class = "visibility-hidden binary-operator18"><span class = "ct-code-b-red">-=</span>  (<b class ="size">Subtraction assignment</b>)</li>
								  		<li class = "visibility-hidden binary-operator19"><span class = "ct-code-b-red">/=</span>  (<b class ="size">Division assignment</b>)</li>
								  		<li class = "visibility-hidden binary-operator20"><span class = "ct-code-b-red">%=</span>  (<b class ="size">Modulus assignment</b>)</li>
								  		<li class = "visibility-hidden binary-operator21"><span class = "ct-code-b-red">&gt;=</span>  (<b class ="size">Greater than or equal to</b>)</li>
										<li class = "visibility-hidden binary-operator22"><span class = "ct-code-b-red">&lt;&lt;=</span>  (<b class ="size">Left shift assignment</b>)</li>
										<li class = "visibility-hidden binary-operator23"><span class = "ct-code-b-red">&gt;&gt;=</span>  (<b class ="size">Right shift assignment</b>)</li>
										<li class = "visibility-hidden binary-operator24"><span class = "ct-code-b-red">&lt;=</span>  (<b class ="size">Less than or equal to</b>)</li>
									</ul>
								</div>
								<div class = "col-xs-3" id = "binaryOperators3">
									<ul class = "binaryOperatorsList">
								  		<li class = "visibility-hidden binary-operator25"><span class = "ct-code-b-red">&=</span>  (<b class ="size">Bitwise AND assignment</b>)</li>
										<li class = "visibility-hidden binary-operator26"><span class = "ct-code-b-red">*=</span>  (<b class ="size">Multiplication assignment</b>)</li>
										<li class = "visibility-hidden binary-operator27"><span class = "ct-code-b-red">^=</span>  (<b class ="size">Exclusive OR assignment</b>)</li>
										<li class = "visibility-hidden binary-operator28"><span class = "ct-code-b-red">|=</span>  (<b class ="size">Bitwise inclusive OR assignment</b>)</li>
									</ul>
								</div>
								<div class ="col-xs-12 syntax margintop"></div>
							</div>
						</div>
						
						<div class = "col-xs-12 margintop" id = "ternaryDiv">
						<div class = "col-xs-3 col-xs-offset-4 text-center visibility-hidden operators-heading" id = "ternary">Ternary Operator</div>
						<div id="ternaryOperatorText" class="col-xs-12 padding0 margintop"></div>
							<div class = "col-xs-12 margintop">
								<div class = "col-xs-3" id = "binaryOperators0">
									<ul class = "ternaryOperatorsList">
										<li class = "visibility-hidden ternary-operator1"><span class = "ct-code-b-red">? :</span>  (<b class ="size">Ternary operator</b>)</li>
								  	</ul>
								</div>
								
								<div class ="col-xs-12 syntax-ternary margintop"></div>
							</div>
						</div>
							</div>
						</div>
				</div>
			</div>
			<div class = 'buttons-div'>
				<button type = "button" class = "btn btn-warning visibility-hidden" id = "restartBtn">Restart</button>
			</div>
		</div>
	
<script type="text/javascript">
var introcode;
var typingInterval = 4;
var tl = new TimelineLite();

	$(document).ready(function(){
		introcode = introJs();
		introcode.setOptions({
			showStepNumbers : false,
			exitOnOverlayClick : false,
			showBullets : false,
			exitOnEsc : false,
			keyboardNavigation : false,
				steps : [{
							element :'#operatiorsDefinity',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#unaryDiv',
							intro :'',
							tooltipClass : "hide"
						},{
							element :'#restartBtn',
							intro :'',
							tooltipClass : "hide"
						}]
		});
		introcode.onafterchange(function(targetElement) {
		var elementId = targetElement.id;
			switch (elementId) {
				case "operatiorsDefinity" :
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					text = 'An <span class = "ct-code-b-red">Operator</span> is a special symbol used to perform '+
							' <span class = "ct-code-b-red">logical</span> and <span class = "ct-code-b-red">'+
							'mathematical</span> operations.'+
							'<br>Types of Operators are: '+
							'<br><ul class = "operatorsList"><li><span id = "unaryOperator"><span class = "ct-code-b-red">Unary</span> operator</span></li>'+
 							'<li><span id = "binaryOperator"><span class = "ct-code-b-red">Binary</span> operator</span></li>'+
							'<li><span id = "ternaryOperator"><span class = "ct-code-b-red">Ternary</span> operator</span></li>'+
							'</ul><span id = "nextBtn">';
					typing('#operatorDefinity', text, typingInterval, 'white', function(){
						$("#nextBtn").append("<button class='introjs-button btn-color custom-button'>Next&#8594;</button>");
						$(".custom-button").click(function(){
							$(".custom-button").remove();
							introcode.nextStep();
						});
					});
				break;
				case "unaryDiv" :
					$("#operatiorsDefinity").addClass("z-index1000000");
					$('.introjs-nextbutton, .introjs-prevbutton, .introjs-skipbutton').hide();
					$('.introjs-helperLayer').one('transitionend', function() {
						$("#unaryDiv").addClass("box-border");
						var l1 = $("#unaryOperator").offset();
						$("#unary").offset({top:l1.top, left:l1.left-40});
						$("#unary").removeClass("visibility-hidden");
						$("#unaryOperator").effect( "highlight",{color: 'lightgreen'}, 500);
						tl.to("#unary", 1, {top :0, left:0, onComplete:function(){
							$("#unary").css({background:'none repeat scroll 0 0 highlight'});
						  	text = 'The operator that uses a <span class = "ct-code-b-red">single operand</span> is'+
						  			' called an <span class = "ct-code-b-red">unary operator</span>.<br>'+
						  			'Unary operators are:';
							typing('#unaryOperatorText', text, typingInterval, 'white', function(){
								textView(1,10,"unary-operator");
								setTimeout(function(){
									text = 'Syntax for Unary Operator: <span class = "ct-code-b-green">Operator</span>'+
											' <span class = "ct-code-b-red">Operand</span> <span class = "nextBtn"></span>';
									typing('#syntax', text, typingInterval, 'white', function(){
										$(".nextBtn").append("<button class='introjs-button btn-color custom-button'>Next&#8594;</button>");
										$(".custom-button").click(function(){
											$(".custom-button").remove();
											binaryOperator();
										});
									});
								},2000);
							}); 
						}});
					});
				break;
				case "restartBtn" :
					$("#operatiorsDefinity").removeClass("z-index1000000");
					$('.introjs-helperLayer').one('transitionend', function () {
						$("#restartBtn").removeClass('visibility-hidden');
						$('.introjs-tooltip').hide();
						$('#restartBtn').click(function() {
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
	});
	
	function binaryOperator() {
		var l1 = $("#binaryOperator").offset();
		$("#binary").offset({top:l1.top, left:l1.left-40});
		$("#binary").removeClass("visibility-hidden");
		$("#binaryOperator").effect( "highlight",{color: 'lightgreen'}, 500);
		tl.to("#binary", 1, {top :0, left:0, onComplete:function(){
			$("#binary").css({background:'none repeat scroll 0 0 highlight'});
			text = 'The operator that uses a <span class = "ct-code-b-red">Two operand</span> is'+
  				' called an <span class = "ct-code-b-red">binary operator</span>.<br>'+
  				'binary operators are:';
			typing('#binaryOperatorText', text, typingInterval, 'white', function(){
				textView(1,29,"binary-operator");
				setTimeout(function(){
				text = 'Syntax for binary Operator: <span class = "ct-code-b-red">Operand1</span> '+
						'<span class = "ct-code-b-green">Operator</span>'+
						' <span class = "ct-code-b-red">Operand2</span><br>'+
						'<span id = "note"><b>Note :</b><span class = "ct-code-b-blue"> +, -, *, & </span> are both '+
						'<span class = "ct-code-b-red">Unary</span> and <span class = "ct-code-b-red">Binary</span> Operators.'+
						'</span><span class = "nextButton"></span>';
				typing('.syntax', text, typingInterval, 'white', function(){
					$(".opr1, .opr2, .opr3, .opr4, .opr5, .opr6, .opr7, .opr8").css({"color" : "blue"});
					$(".nextButton").append("<button class='introjs-button btn-color custom-button'>Next&#8594;</button>");
					$(".custom-button").click(function(){
						$(".custom-button").remove();
						ternaryOperator();
					});
				});
				},5800);
			});
		}});
	}
	
	function ternaryOperator() {
		var l1 = $("#ternaryOperator").offset();
		$("#ternary").offset({top:l1.top, left:l1.left-40});
		$("#ternary").removeClass("visibility-hidden");
		$("#ternaryOperator").effect( "highlight",{color: 'lightgreen'}, 500);
		tl.to("#ternary", 1, {top :0, left:0, onComplete:function(){
			$("#ternary").css({background:'none repeat scroll 0 0 highlight'});
			text = 'The operator that uses a <span class = "ct-code-b-red">Three operands</span> is'+
  				' called an <span class = "ct-code-b-red">ternary operator</span>. This operator is frequently used as a shortcut for the if statement.<br>'+
  				'ternary operators are:';
			typing('#ternaryOperatorText', text, typingInterval, 'white', function(){
				textView(1,2,"ternary-operator");
				setTimeout(function(){
				text = 'Syntax for ternary Operator: <span class = "ct-code-b-red">Condition</span> ?  '+
						'<span class = "ct-code-b-green">Expression_1</span> :'+
						' <span class = "ct-code-b-green">Expression_2 </span> <span class = "nextButton1"></span>';
				typing('.syntax-ternary', text, typingInterval, 'white', function(){
					$(".nextButton1").append("<button class='introjs-button btn-color custom-button'>Next&#8594;</button>");
					$(".custom-button").click(function(){
						$(".custom-button").remove();
						introcode.nextStep();
					});
				});
				},800);
			});
		}});
	}
	
	//text with flipInX effcect
	function textView(start, end, id) {
		var start = 1;
		var setinterval = setInterval(function(){
			$("."+id + start).removeClass("visibility-hidden").addClass("animated flipInX");
			start++;
		  if (start == end) {
		  clearInterval(setinterval);
		  }
		},200);
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
	
</body>
</html>