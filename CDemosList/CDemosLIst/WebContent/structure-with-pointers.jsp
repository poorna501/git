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
	<title>structures with pointers</title>
</head>
<style>
#totaldiv {
	margin-top: 25px;
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

#informationdiv {
	background-color: rgb(243, 235, 212);
    border-radius: 0px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
    height: 60px;
    margin-top: 30px;
    color: black;
}

.color-rose {
	color:#8B008B;
}

.color-green {
	color: green;
}

.color-red {
	color: red;
}

.color-blue {
	color:#339;
}

.color-yellow {
	color: yellow;
}
.color-brown {
	color: #b85c00;
}

#tableDiv {
	height: 283px;
	border-radius: 5px;
	background-color: rgb(243, 235, 235);
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
}

#table {
    width: 290px;
    font-size: 15px;
    text-align: center;
}

.memory {
	border: 1px solid Black;
    width: 50px;
    font-size: 15px;
    text-align: center;
}  

.array {
	width: 50px;
    font-size: 15px;
    text-align: center;
    color: #b85c00;
}

.circle-css {
	border: 1px solid;
	border-radius: 50%;
	padding: 2px;
	position: relative;
	z-index: 9999999;
	background-color: white;
}

.output-console-title-bar {
	background-image: -moz-linear-gradient(center top, #e8e8e8, #bcbbbc);
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	font-size: 0.75em;
	padding: 2px 0;
	text-align: center;
}

.output-console-body {
	background-color: black;
    border-bottom-left-radius: 8px;
    border-bottom-right-radius: 8px;
    color: #f0f0f0;
    font-family: monospace;
    font-size: 14px;
    height: 90px;
    margin-bottom: 14px;
    overflow: auto;
    padding: 17px;
    white-space: pre-line;
}

.color-palegreen {
	color: #0f0;
}

.color-maroon {
	color: #85144b;
}

.color-purple {
	color: #B10DC9;
}

</style>
<body>
<div id ='totaldiv' class='totaldivclass col-xs-12 text-center'>
		<span id='title' class='label ct-demo-heading'>Structure with Pointers</span>
</div>
<div class='col-xs-12'>
	<div id='informationdiv' class='col-xs-6 col-xs-offset-3 visibility-hidden'>
		<ul id='defination'></ul>
	</div>
</div>
<div id='tableDiv' style='border: 1px solid black; margin-top: 20px' class='col-xs-12 col-xs-offset-2 col-xs-8 visibility-hidden'>
<div class='col-xs-12 col-xs-8'>
	 
 <pre><span id='voidFunction'><span class='color-rose'>void</span> <span class='color-brown'>main</span>();</span>
 {
 <span id='membersOfStructBook'><span class='color-rose'>struct</span> book
 }
  <span class='color-rose'>char</span> name[20];
  <span class='color-rose'>float</span> price;
  <span class='color-rose'>int</span> page;
 }; </span>	
  <span id='storeBmemory'><span id='memorySend'><span class='color-rose'>struct</span> book b = {"<span id='name'>C LANGUAGE</span>", <span id='price'>125.5</span>, <span id='pages'>315</span>};</span></span>
  <span id='bookPointer'><span id='pointerP' class=''><span class='color-brown'>struct</span><span>book *p;</span></span></span>
  <span id='pEquals'>p = &b</span>
  <span id='printF' class=''>printf(<span class='color-blue'>"NAME:%s \t price: %f\t page:%d"</span>, b&rarr;name, b&rarr;price, b&rarr;page);</span>
}
		</pre>
	</div>
	<!-- <div class='col-xs-1'>
		<div style='margin-top: 50px' id='bArrow' class='opacity00'><span class='color-green'>b</span><span class='color-red'> &rarr;</span></div>
		<div style='margin-top: 143px'><span class='color-green'>x</span><span class='color-red'> &rarr;</span></div>	
	</div>  -->
	<div id='memoryStoreB' class='col-xs-4 opacity00' style='margin-top: 30px;'>
		<div  class=''>
			<div style='margin-left: 146px' id='bArrow' class='opacity00'><span class='color-green'>b</span></div>
			<table  class="" id="table" style='border: 1px solid black;'>
					<tbody>
						<tr>
				  			<td class="color-purple">name</td>
				  			<td class="color-purple">price</td>
				  			<td class="color-purple">pages</td>
	  					</tr>
						<tr>
				  			<td id='memory0' class="memory opacity00" style='width: 140px'>C LANGUAGE</td>
				  			<td id='memory1' class="memory opacity00">125.5</td>
				  			<td id='memory2' class="memory opacity00">315</td>
	  					</tr>
	  					<tr>
				  			<td class="color-maroon">2024</td>
				  			<td class="color-maroon">2044</td>
				  			<td class="color-maroon">2048</td>
	  					</tr>
	        		</tbody>
      		</table>
      	</div>
      	<!-- <div id='memoryStoreX'>
      		<table style='margin-top: 99px;' class="" id="table">
					<tbody>
						<tr>
				  			<td class="array">name</td>
				  			<td class="array">price</td>
				  			<td class="array">pages</td>
	  					</tr>
					<tr>
				  			<td id='memory01' class="memory opacity00">C LANGUAGE</td>
				  			<td id='memory11' class="memory opacity00">125.5</td>
				  			<td id='memory21' class="memory opacity00">315</td>
	  					</tr>
	        		</tbody>
      			</table>
      		</div> -->
		</div>
	</div>
	<div class='col-xs-12 col-xs-offset-4 col-xs-4' style='margin-top: 15px;'>
			<div id="consoleId" class="center opacity00">
				<div class="output-console-title-bar">
					<span class="title"><b>Console</b></span>
				</div>
					<div class="output-console-body" id="consoleBodyDiv">
						 <span id='outPut'></span> 
					</div>
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
			element :'#title',
			intro :'',
			position:"bottom"
		},{
			element :'#informationdiv',
			intro :'',
			position:"bottom" 
		},{
			element :'#tableDiv',
			intro :'',
			tooltipClass:'hidden',
			position:"bottom" 
	 	},{
			element :'#voidFunction',
			intro :'',
			position:"bottom" 
	/* 	},{
			element :'#structBook',
			intro :'',
			position:"bottom"   */
		 },{
			element :'#membersOfStructBook',
			intro :'',
			position:"bottom" 
		/* },{
			element :'#storeBmemory',
			intro :'',
			position:"bottom"  */
		},{
			element :'#memorySend',
			intro :'',
			position:"bottom"  
		},{
			element :'#memoryStoreB',
			intro :'',
			tooltipClass:'hidden',
			position:"bottom"
		 },{
			element :'#bookPointer',
			intro :'',
			position:"bottom" 
			},{ 
			element :'#pEquals',
			intro :'',
			position:"bottom"
		},{ 
			element :'#printF',
			intro :'',
			tooltipClass:'hidden',
			position:"bottom"
		 },{
			element :'#consoleId',
			intro :'',
			tooltipClass:'hidden',
			position:"bottom" 
		},{
			element :'#restartBtn',
			intro :'',
			position:"right"
		}]
	});
	intro.onafterchange(function(targetElement) { 
		var elementId = targetElement.id;
		switch (elementId) {
		
		case "informationdiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#informationdiv").removeClass("visibility-hidden");
			  	typing('#informationdiv',"<ul><li>A pointer pointing to a structure is known as <b class='color-green'>structure pointer</b>.</li><li>Rememeber that left hand side of dot operater there must always be a structure variable, where as on the left hand side of the arrow operator there must be always be a pointer to a structure.</li></ul>" ,function() {
			  		typing('.introjs-tooltiptext',"Let us consider an example on how to use structure with pointers." ,function() { 
			  			$('.introjs-nextbutton').show();
				  		});
					});
				});
		break;
		case "tableDiv" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#tableDiv').removeClass('visibility-hidden');
		  		//typing('.introjs-tooltiptext',"Let us consider an example on how to use structure with pointers." ,function() { 
		  			setTimeout(function(){
						intro.nextStep();
						}, 700); 	
				 // });
				});
		break;
		case "voidFunction" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#voidDisplay").removeClass("opacity00");
				typing('.introjs-tooltiptext', "<span class='ct-code-b-yellow'>main()</span> is the operating system call.<ul><li><span class='ct-code-b-yellow'>main()</span> is execution starting point for any c program.</li></ul>", function() {
					$('.introjs-nextbutton').show();
					});
				});
		break;
		/* case "structBook" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#structBook").removeClass("opacity00");
		  	typing('.introjs-tooltiptext', ".", function() {  
					$('.introjs-nextbutton').show();
					});
				});
		break;  */
		case "membersOfStructBook" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#membersOfStructBook").removeClass("opacity00");
				typing('.introjs-tooltiptext', "This is the structure declaration of new user defined data type <span class='color-yellow'>book</span> which continious three members <span class='color-yellow'>name</span>, <span class='color-yellow'>price</span> and <span class='color-yellow'>page</span>.", function() {
					$('.introjs-nextbutton').show();
					});
				});
		break;
	/* 	case "storeBmemory" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#storeBmemory").removeClass("opacity00");
			  	typing('.introjs-tooltiptext', ".", function() {  
					$('.introjs-nextbutton').show();
					});
				});
		break; */
	 	case "memorySend" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#structBook").removeClass("opacity00");
				typing('.introjs-tooltiptext', "Here structure variable <span class='color-yellow'>b</span> is defined for <span class='color-yellow'>book</span> and initialized.", function() {
			  		$('.introjs-nextbutton').show();
					});
				});
		break; 
		case "memoryStoreB" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$('#bArrow').removeClass("opacity00");
				$("#memoryStoreB").removeClass("opacity00");
				$("#bArrow").removeClass("opacity00");
				intro.refresh();
				$('#name').addClass('circle-css');
				var l = $("#name").offset();
				$("#memory0").offset({"top": l.top,"left": l.left});
	       		TweenMax.to("#memory0", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
		        	$('#name').removeClass('circle-css');
		        	$('#price').addClass('circle-css');
		        	var l = $("#price").offset();
					$("#memory1").offset({"top": l.top,"left": l.left});
			        TweenMax.to("#memory1", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
			        	$('#price').removeClass('circle-css');
			        	$('#pages').addClass('circle-css');
			        	var l = $("#pages").offset();
						$("#memory2").offset({"top": l.top,"left": l.left});
				        TweenMax.to("#memory2", 1.3, {Color:"blue", opacity:1, top: 0, left:0 , onComplete:function() {
							$('#pages').removeClass('circle-css');
			  				typing('.introjs-tooltiptext', "", function() {  
			  					setTimeout(function(){
			  						intro.nextStep();
			  						}, 800); 
								});
	       				 	}});
	       		 		}});
	        		}});
				});
		break;
		case "bookPointer" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#pointerP").removeClass("opacity00");
		  	typing('.introjs-tooltiptext', "", function() {  
					$('.introjs-nextbutton').show();
					});
				});
		break; 
		case "pEquals" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
			$("#pointerP").removeClass("opacity00");
		  	typing('.introjs-tooltiptext', "", function() {  
					$('.introjs-nextbutton').show();
					});
				});
		break; 
		case "printF" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#printF").removeClass("opacity00");
			  	typing('.introjs-tooltiptext', ".", function() {  
			  		setTimeout(function(){
						intro.nextStep();
						}, 800); 
					});
				});
		break;
		case "consoleId" :
			$('.introjs-nextbutton').hide();
			$(".introjs-helperLayer").one("transitionend", function() {
				$("#consoleId").removeClass("opacity00");
			  	typing('#outPut', "NAME: " + "<span class='color-palegreen'>C LANGUAGE</span><span style='margin-left: 20px;'></span>" + "price: " + "<span class='color-palegreen'>125.5</span> <span style='margin-left: 20px;'></span>" + "page: " + "<span class='color-palegreen'>315</span>",  function() { 
			  		setTimeout(function(){
						intro.nextStep();
						}, 1000); 
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
	typing('.introjs-tooltiptext',"This is one of the features of structure.",function() {
		$('.introjs-nextbutton').show();
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