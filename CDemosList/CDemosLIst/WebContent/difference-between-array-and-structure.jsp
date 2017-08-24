<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link href="/css/tablesorter/jquery-ui.css" rel="stylesheet">
<link href="/css/introjs.css" rel="stylesheet">
<link href="/css/animate.css" rel="stylesheet">

<link href="/css/introjs-ct.css" rel="stylesheet">
<link href="/css/data-structures-css.css" rel="stylesheet">

<script src="/js/jquery-latest.js"></script>
<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-ui-all.js" type="text/javascript"
	charset="utf-8"></script>
<script src="/js/intro.js" type="text/javascript"></script>
<script src="/js/typewriting.min.js" type="text/javascript"></script>
<script src="/js/gs/TweenMax.min.js"></script>
<title>difference between array and structure</title>
<style>
.div-border {
	border: 2px solid gray;
	border-radius: 15px;
}

.border-div {
	border: 2px solid gray;
	border-radius: 11px;
}

.margin-top20 {
	margin-top: 20px;
}

.margin-bottom20 {
	margin-bottom: 20px;
}

.table-border {
	border: 2px solid gray;
	text-align: center;
	width: 16%;
	height: 26px;
}

.nextButton {
	background-color: green;
}

.introjs-fixParent {
	position: relative !important;
}

.blinking {
	animation-name: blink;
	animation-duration: 1s;
	animation-iteration-count: 3;
	animation-direction: alternate;
}

@
keyframes blink { 50% {
	background: yellow;
}

}
.z-index-class {
	position: relative;
	z-index: 9999999;
	background-color: white;
}

.declaration-of-structure {
	position: relative;
	display: inline-block;
}

.margin-left20 {
	margin-left: 20px;
}

.green-color {
	color: green;
}

.red-color {
	color: red;
}
</style>
</head>
<body>
	<script>
var intro;
var typingInterval = 5;
$(document).ready(function() {
	$(".line").hide();
	$(document).keydown(function(objEvent) {
	    if (objEvent.keyCode == 9) {  //tab pressed
	        objEvent.preventDefault(); // stops its action
	    }
	});
	$("#restart").click(function() {
		location.reload(); 
	});
		intro = introJs();
		intro.setOptions({
			showStepNumbers: false,
			exitOnOverlayClick: false,
			showBullets: false,
			exitOnEsc: false,
			keyboardNavigation: false,
			steps : [ {
				element : "#heading",
				intro : "",
				position:"right"
			},{
				element : "#declarationOfArray",
				intro : "",
				position:"right"
			},{
				element : "#onlyDeclarationOfStructure",
				intro : "",
				position:"right"
			},{
				element : "#declarationOrInitialization",
				intro : "",
				position:"right"
			},{
				element : "#definitionOfStructure",
				intro : "",
				position:"right"
			},{
				element : "#firstinitializationOfArray",
				intro : "",
				position:"right"
			},{
				element : "#totalInitializationOfArray",
				intro : "",
				position:"right"
			},{
				element : "#initializationOfStructure",
				intro : "",
				position:"right"
			},{
				element : "#totalInitializationOfStructure",
				intro : "",
				position:"right"
		 	},{
				element : "#memoryOfArray",
				intro : "",
				position:"right"
			},{
				element : "#memoryOfStructure",
				intro : "",
				position:"left"
			},{
				element : "#totalInitializationOfArray",
				intro : "",
				position:"left"
			},{
				element : "#memoryOfArray",
				intro : "",
				position:"right"
			},{
				element : "#totalInitializationOfStructure",
				intro : "",
				position:"left"
			},{
				element : "#memoryOfStructure",
				intro : "",
				position:"left"
			},{
				element : "#arrayAccess",
				intro : "",
				position:"left"
			},{
				element : "#structureAccess",
				intro : "",
				position:"top"
			},{
				element : "#restart",
				intro : "",
				position:"right",
			}
			]});
		
			intro.onafterchange(function(targetElement) {
			var elementId = targetElement.id;
			switch (elementId) {
			case "heading":
				$('.introjs-nextbutton').hide();
				var text = "let us see the difference between the arrays and structures.";
				typing(".introjs-tooltiptext", text, function() {
					$('.introjs-nextbutton').show();
				});
				break;
			
			case "declarationOfArray":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#array").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$("#declarationOfArray").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							var text = "This is the <span class='ct-code-b-yellow'>declaration</span> of an array, which will" 
							+ " store all the <span class='ct-code-b-yellow'>similar datatype</span> items.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						});
					});
				});
				break;
			case "onlyDeclarationOfStructure":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#structure").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						$("#onlyDeclarationOfStructure").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							var text = "<ul><li>This is the <span class='ct-code-b-yellow'>declaration</span> of a " 
									+ "structure which will store <span class='ct-code-b-yellow'>different datatype</span> items.</li>" 
									+ "<li>Here we use a <span class='ct-code-b-yellow'>keyword</span>" 
									+ " <span class='ct-code-b-yellow'>struct</span> which is used to declare the structure," 
									+ " as the array does not have.</li></ul>";
							typing(".introjs-tooltiptext", text, function() {
									$('.introjs-nextbutton').show();
							});
						});
					});
				});
				break;
			case "declarationOrInitialization":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "In array we don't have any <span class='ct-code-b-yellow'>definition</span> part, at the time" 
							+ " of declaration itself the memory will be allocated for an array.";
					typing(".introjs-tooltiptext", text, function() {
						$("#declarationOrInitialization").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
				break;
			case "firstinitializationOfArray":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "Initialization of an array can be done at declaration time.";
					typing(".introjs-tooltiptext", text, function() {
						$("#initializationOfArray").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							$("#initializationOfArray").removeClass("animated zoomIn");
							$('.introjs-nextbutton').show();
						});
					});
				});
				break;
			case "definitionOfStructure":
				$('.introjs-nextbutton').hide(); 
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#definitionOfStructure").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						var text = "<ul><li>This is the <span class='ct-code-b-yellow'>definition</span> part of structure. Which " + 
							"will allocate memory to the structure variable.</li><li>In structure declaration part does not allocate " 
							+ "any memory space, the declaration part specifies a new user defined datatype only.</li></ul>";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				});	
				break;
			case "totalInitializationOfArray":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
						if (intro._currentStep == 11) {
							var text = "The values in the array will store in the <span class='ct-code-b-yellow'>sequence</span> order.";
							typing(".introjs-tooltiptext", text, function() {
								$('.introjs-nextbutton').show();
							});
						} else {
							$("#totalInitializationOfArray").removeClass("opacity00");
							$("#anotherInitializationOfArray").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
								var text = "An array can also be initialized with <span class='ct-code-b-yellow'>subscript</span> " 
									+ "or <span class='ct-code-b-yellow'>indices</span>.";
								typing(".introjs-tooltiptext", text, function() {
									$("#anotherInitializationOfArray").removeClass("animated zoomIn");
									$('.introjs-nextbutton').show();
								});
							});
						}
				});
				break;
			case "initializationOfStructure":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#initializationOfStructure").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						var text = "Initialization of an structure variable can be done at definition part.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});
					});
				});
				break;
			case "totalInitializationOfStructure":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					if (intro._currentStep == 13) {
						var text = "Here based on the <span class='ct-code-b-yellow'>members</span> in the strcture the values will store in the memory.";
						typing(".introjs-tooltiptext", text, function() {
							$('.introjs-nextbutton').show();
						});				
					} else {
						$("#initializationOfStructure").removeClass("opacity00");
						$("#anotherInitializationOfStructure").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							var text = "An initialization can also be done with structure <span class='ct-code-b-yellow'>variable</span>," 
								+ " <span class='ct-code-b-yellow'>dot</span> operator and <span class='ct-code-b-yellow'>member</span> of the structure.";
							typing(".introjs-tooltiptext", text, function() {
								$("#anotherInitializationOfStructure").removeClass("animated zoomIn");
								$('.introjs-nextbutton').show();
							});
						});
					}
				});
				break;
			case "memoryOfArray":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					if (intro._currentStep == 12) {
						var text = "Let us see how the array values will store in the memory.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'moveValues(0);'>Next &#8594;</a>");
						}); 
					} else {
						$("#memoryOfArray").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							$("#table1").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
								var text = "<ul><li>This is memory allocation of array variable a[5].</li><li>The array name a" 
									+ " represents <span class='ct-code-b-yellow'>base address</span> of the entire" 
									+ " array i.e, <span class='ct-code-b-yellow'>2024</span>.</li></ul>";
								typing(".introjs-tooltiptext", text, function() {
									intro.refresh();
									$("#memoryOfArray").removeClass("animated zoomIn");
									$("#arrayAddress1").effect( "highlight",{color: 'yellow'}, 1500,function(){
										$('.introjs-nextbutton').show();
									});
								});
							});
						});
					}
				});
				break;
			case "onlyDeclaration":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					var text = "At the time of declaration the memory will not be allocated.";
					typing(".introjs-tooltiptext", text, function() {
						$("#declarationOfArray").removeClass('z-index-class');
						$('.introjs-nextbutton').show();
					});
				});
				break;
			case "memoryOfStructure":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer").one('transitionend', function() {
					if (intro._currentStep == 14) {	
						var text = "Let us see how the structure values will store in the memory.";
						typing(".introjs-tooltiptext", text, function() {
							$(".introjs-tooltipbuttons").append("<a class='introjs-button nextButton' onclick = 'moveValuesinStructure();'>Next &#8594;</a>");
						});
					} else {
						$("#memoryOfStructure").removeClass("opacity00");					
						$("#point4").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
							$("#a").removeClass("opacity00").addClass("animated zoomIn");
							$("#memory").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
								var text = "<ul><li>This is memory allocation of structure variable a.</li><li>The structure" 
									+ " name a represents <span class='ct-code-b-yellow'>base address</span> of" 
									+ " the entire structure i.e, <span class='ct-code-b-yellow'>1024</span>.</li></ul>";
								typing(".introjs-tooltiptext", text, function() {
									$("#declarationOfArray").removeClass('z-index-class');
									$("#address1").effect( "highlight",{color: 'yellow'}, 1500,function(){
										$('.introjs-nextbutton').show();
									});
								});
							});
						});
					}
				});
				break;
			case "arrayAccess":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#arrayAccess").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						var text = "By using the <span class='ct-code-b-yellow'>index</span> or <span class='ct-code-b-yellow'>subscript</span>" 
							+ " we can access the array elemnts.";
						typing(".introjs-tooltiptext", text, function() {
							$("#index").effect( "highlight",{color: 'yellow'}, 1500,function(){
								$("#arrayAccess").removeClass("animated zoomIn");
								$('.introjs-nextbutton').show();
							});
						});
					});
				});
				break;
			case "structureAccess":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					$("#structureAccess").removeClass("opacity00").addClass("animated zoomIn").one("animationend", function() {
						var text = "<ul><li>By using <span class='ct-code-b-yellow'>dot(.)</span> operator " 
							+ " we can access the members of the structure variable.</li><li>In case of " 
							+ "structure <span class='ct-code-b-yellow'>pointer</span> variables, an " 
							+ "<span class='ct-code-b-yellow'>arrow(->)</span> operator is used to access" 
							+ " the member of structure pointer variable.</li></ul>";
						typing(".introjs-tooltiptext", text, function() {
							$("#dotOperator, #arrowOperator").effect( "highlight",{color: 'yellow'}, 1500,function(){
								$("#structureAccess").removeClass("animated zoomIn");
								$('.introjs-nextbutton').show();
							});
						});
					});
				});
				break;
			case "restart":
				$('.introjs-nextbutton').hide();
				$(".introjs-helperLayer ").one('transitionend', function() {
					TweenMax.to("#restart", 1, {"opacity" : "1", onComplete:function() {
						var text = "Click to Restart.";
						typing(".introjs-tooltiptext", text, function() {
							
						});
					}});
				});
			break;
			
			}
		});
		intro.start();
		$('.introjs-nextbutton').show();
		$('.introjs-prevbutton').hide();
		$('.introjs-skipbutton').hide();
		$('.introjs-bullets').hide();
});

	function typing(typingId, typingContent,callBackFunction) {
		$('.nextButton').hide();
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
	
	function moveValues(i) {
		$('.nextButton').hide();
		if (i <= 4) {
			var l1= $("#value" + i).offset();
			$("#a" + i + "value").text($("#value" + i).text()).removeClass("opacity00").offset({
				"top":l1.top,
				"left":l1.left
			});
			$("#value" + i).addClass("z-index-class").effect("highlight",{color: 'yellow'}, 1500, function() {
				TweenMax.to("#a" + i + "value",1,{top:0,left:0, onComplete:function() {
					$("#value" + i).removeClass("z-index-class");
					i++;
					moveValues(i);
				}});
			});
		} else {
			$('.introjs-nextbutton').show();
		}
	}
	
	function moveValuesinStructure() {
		$('.nextButton').hide();
		var l1= $("#aName").offset();
		$("#aName").addClass("z-index-class").effect("highlight",{color: 'yellow'}, 1000, function() {
			$("#pname").text($("#aName").text()).removeClass("opacity00").offset({
				"top":l1.top,
				"left":l1.left
			});
			TweenMax.to("#pname",1,{top:0,left:0, onComplete:function() {
				$("#aName").removeClass("z-index-class");
				var l1= $("#aPages").offset();
				$("#ppages").text($("#aPages").text()).removeClass("opacity00").offset({
					"top":l1.top,
					"left":l1.left
				});
				$("#aPages").addClass("z-index-class").effect("highlight",{color: 'yellow'}, 1000, function() {
					TweenMax.to("#ppages",1,{top:0,left:0, onComplete:function() {
						$("#aPages").removeClass("z-index-class");
						var l1= $("#aPrice").offset();
						$("#pprice").text($("#aPrice").text()).removeClass("opacity00").offset({
							"top":l1.top,
							"left":l1.left
						});
						$("#aPrice").addClass("z-index-class").effect("highlight",{color: 'yellow'}, 1000, function() {
							TweenMax.to("#pprice",1,{top:0,left:0, onComplete:function() {
								$("#aPrice").removeClass("z-index-class");
								$('.introjs-nextbutton').show();
							}});
						});
					}});
				});
			}});
		});
	}

</script>

	<h2 class="text-center">
		<span class="label label-default ct-demo-heading" id="heading">Difference
			between arrays and structures</span>
	</h2>
	<div class="margin-top20 text-center">
		<span class="btn btn-warning opacity00" id="restart">Restart</span>
	</div>
	<div class="col-xs-offset-1 col-xs-10 margin-top20" id="mainDiv">
		<div class="col-xs-5 div-border opacity00" id="array">
			<h4 class="text-center">
				<span class="label label-default">Array</span>
			</h4>
			<div class="col-xs-offset-2 col-xs-8 margin-top20 opacity00"
				id="declarationOfArray">
				<span>1. int a[5];</span><span class="margin-left20"><i
					class="fa fa-arrow-right red-color"></i></span><span
					class="margin-left20 green-color">declaration</span>
			</div>
			<div class="col-xs-offset-2 col-xs-10 margin-top20 opacity00"
				id="declarationOrInitialization">
				<span>2. int a[5];</span> <span class="margin-left20 red-color"><i
					class="fa fa-arrow-right red-color"></i></span> <span
					class="margin-left20 green-color">declaration & definition</span>
			</div>
			<div class="col-xs-offset-2 col-xs-10 margin-top20">
				<div id="totalInitializationOfArray">
					<div id="firstinitializationOfArray">
						<div id="initializationOfArray" class="opacity00">
							3. int a[5] = <span id="values">{1, 53, 2, 4, 5};</span> <span
								class="margin-left20"><i
								class="fa fa-arrow-right red-color"></i></span> <span
								class="margin-left20 green-color">initialization</span>
						</div>
					</div>
					<div class="margin-left20 opacity00"
						id="anotherInitializationOfArray">
						<div class="ct-code-b-red text-center"
							style="margin-top: 10px; margin-bottom: 10px;" id="or1">OR</div>
						<div id="totalValue1">
							<span id="a0">a[0]</span> = <span id="value0">1</span>;
						</div>
						<div id="totalValue2">
							<span id="a1">a[1]</span> = <span id="value1">53</span>;
						</div>
						<div id="totalValue3">
							<span id="a2">a[2]</span> = <span id="value2">2</span>;
						</div>
						<div id="totalValue4">
							<span id="a3">a[3]</span> = <span id="value3">4</span>;
						</div>
						<div id="totalValue5">
							<span id="a4">a[4]</span> = <span id="value4">5</span>;
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 margin-top20 margin-bottom20 opacity00"
				id="memoryOfArray">
				<div class="col-xs-offset-2 col-xs-10 animated zoomIn"
					id="memoerypoint">
					<span>4. </span> <span>int a[5];</span> <span class="margin-left20">
						<i class="fa fa-arrow-right red-color"></i>
					</span> <span class="green-color margin-left20">memory is allocated
						as</span>
				</div>
				<div style="margin-top: 40px;">
					<table align="center" class="opacity00" id="table1">
						<tbody>
							<tr>
								<th></th>
								<td style="text-align: center;"><span id="a0ofTable">a[0]</span></td>
								<td style="text-align: center;"><span id="a1ofTable">a[1]</span></td>
								<td style="text-align: center;"><span id="a2ofTable">a[2]</span></td>
								<td style="text-align: center;"><span id="a3ofTable">a[3]</span></td>
								<td style="text-align: center;"><span id="a4ofTable">a[4]</span></td>
							</tr>
							<tr>
								<th style="text-align: center;">a[5] =&emsp;</th>
								<td class="table-border"><span id="a0value"></span></td>
								<td class="table-border"><span id="a1value"></span></td>
								<td class="table-border"><span id="a2value"></span></td>
								<td class="table-border"><span id="a3value"></span></td>
								<td class="table-border"><span id="a4value"></span></td>
							</tr>
							<tr>
								<th></th>
								<td style="text-align: center; color: violet;"><span
									id="arrayAddress1">2024</span></td>
								<td style="text-align: center; color: violet;"><span
									id="arrayAddress2">2026</span></td>
								<td style="text-align: center; color: violet;"><span
									id="arrayAddress3">2028</span></td>
								<td style="text-align: center; color: violet;"><span
									id="arrayAddress4">2030</span></td>
								<td style="text-align: center; color: violet;"><span
									id="arrayAddress5">2032</span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div
				class="col-xs-offset-2 col-xs-8 margin-top20 margin-bottom20 opacity00"
				id="arrayAccess">
				<span>5. printf("%d ", <span id="index">a[0]</span>);
				</span><span class="margin-left20"><i
					class="fa fa-arrow-right red-color"></i></span><span
					class="margin-left20 green-color">accessing</span>
			</div>
		</div>
		<div class="col-xs-offset-1 col-xs-5 div-border opacity00"
			id="structure">
			<h4 class="text-center">
				<span class="label label-default">Structure</span>
			</h4>
			<div class="col-xs-offset-2 col-xs-10 margin-top20">
				<div>
					<div class="declaration-of-structure" id="declarationOfStructure">
						<div id="onlyDeclarationOfStructure"
							class="col-xs-12 declaration-of-structure opacity00">
							<span id="structKeyword">1. struct</span> book { <span
								class="margin-left20"><i
								class="fa fa-arrow-right red-color"></i></span> <span
								class="margin-left20 green-color">declaration</span>
							<div style="margin-left: 30px;">char name[20];</div>
							<div style="margin-left: 30px;">int pages;</div>
							<div style="margin-left: 30px;">float price;</div>
							<div class="margin-left20">};</div>
						</div>
						<div class="col-xs-12 opacity00" id="definitionOfStructure">
							<span>2. struct book a;</span><span class="margin-left20"><i
								class="fa fa-arrow-right red-color"></i></span> <span
								class="margin-left20 green-color">definition</span>
						</div>
					</div>
				</div>
				<div class="col-xs-12" id="totalInitializationOfStructure">
					<div class="opacity00" id="initializationOfStructure">3.
						struct book a={“C Language”, 450, 300.00};</div>
					<div class="opacity00" id="anotherInitializationOfStructure">
						<div class="text-center">
							<span class="ct-code-b-red"
								style="margin-top: 10px; margin-bottom: 10px;" id="or2">OR</span><span
								class="margin-left20"><i
								class="fa fa-arrow-right red-color"></i></span> <span
								class="margin-left20 green-color">initialization</span>
						</div>
						<div class="margin-left20">
							a.name = "<span id="aName">C Language</span>";
						</div>
						<div class="margin-left20">
							a.pages= <span id="aPages">450</span>;
						</div>
						<div class="margin-left20">
							a.price= <span id="aPrice">300.00</span>;
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-offset-2 col-xs-10 margin-top20 opacity00"
				id="memoryOfStructure">
				<div class="col-xs-12 opacity00" id="point4">
					<span>4. </span> <span>struct book a;</span> <span
						class="margin-left20"> <i
						class="fa fa-arrow-right red-color"></i>
					</span> <span class="green-color" style="margin-left: 10px;">memory
						is allocated as</span>
				</div>
				<div class="col-xs-11 text-center opacity00" id="a">a</div>
				<div
					class="col-xs-offset-2 col-xs-7 border-div margin-bottom20 opacity00"
					id="memory">
					<table align="center">
						<tbody>
							<tr>
								<td style="text-align: center;">name</td>
								<td style="text-align: center;">pages</td>
								<td style="text-align: center;">price</td>
							</tr>
							<tr>
								<td class="table-border" id="pname"></td>
								<td class="table-border" id="ppages"></td>
								<td class="table-border" id="pprice"></td>
							</tr>
							<tr>
								<td style="text-align: center; color: violet" id="address1">1024</td>
								<td style="text-align: center; color: violet;">1044</td>
								<td style="text-align: center; color: violet;">1046</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div
				class="col-xs-offset-2 col-xs-10 margin-top20 margin-bottom20 opacity00"
				id="structureAccess">
				<span>5. printf("%d" ,<span id="dotOperator">a.pages</span>);
				</span> <span class="margin-left20"><i
					class="fa fa-arrow-right red-color"></i></span> <span
					class="margin-left20 green-color">accessing</span>
			</div>
		</div>
	</div>
</body>
</html>