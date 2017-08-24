<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>c-language-timeline</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet" href="/css/introjs-ct.css">

<script type="text/javascript" src="/js/jquery-latest.js"></script>
<script type="text/javascript" src="/js/bootstrap.js"></script>
<script type="text/javascript" src="/js/typewriting.min.js"></script>
<script src="/js/gs/TweenMax.min.js" type="text/javascript"></script>
<style type="text/css">
.timeline {
	list-style: outside none none;
	margin: 20% 5% 0;
	position: relative;
}

.timeline li {
	background: white;
	border: 8px solid #ECA336;
	border-radius: 16px;
	height: 30px;
	position: absolute;
	width: 30px;
	z-index: 1;
	border: 8px solid #ECA336;
}

.year {
	background-color: lemonchiffon;
	border: 1px solid gray;
	border-radius: 20px;
	font-weight: bold;
	left: -38px;
	padding-top: 3px;
	position: absolute;
	text-align: center;
	top: 25px;
	width: 90px;
}

.animation-bar {
	width: 0%;
	border: 2px solid #ECA336;
	margin: 0 6%;
}

.popover-content {
	color: black;
	background-color: white;
}

.bgColor-lightgray {
	background-color: #E9E9E9;
}

.popover {
	width: 200px;
}

.li1::before, .li2::before, .li3::before, 
.li4::before, .li5::before {
	border-left: 4px solid #ECA336;
	bottom: 100%;
	content: " ";
	height: 0px;
	left: 37% !important;
	position: absolute;
	-webkit-transition: all 2s ease-in-out;
	-moz-transition: all 2s ease-in-out;
	-o-transition: all 2s ease-in-out;
}

.animate.li1::before, .animate.li2::before, .animate.li3::before,
	.animate.li4::before, .animate.li5::before {
	height: 50px;
}

.next-btn {
	background-color: green !important;
	border-radius: 3px !important;
	color: white !important;
	font: 11px sans-serif;
	padding: 3px !important;
}

.developer-div {
	bottom: 200px;
	position: relative;
	right: 44px;
	width: 110px;
	height: 150px;
	text-align: center;
}

.li1 .developer-div, .li2 .developer-div {
    align-items: center;
    display: flex;
    justify-content: center;
    font-size: 20px;
}

.developer-name {
	font-weight: bold;
}

.image {
	width: 100px;
}

.font-weight-bold {
	font-weight: bold;
}
</style>
<script type="text/javascript">
	var typingSpeed = 10;
	$(document).ready(function() {
		var l = $(".timeline li").offset();
		$(".animation-bar").offset({
			top : l.top + $(".timeline li").outerHeight() / 2 - 2,
			left : l.left
		});
		$("[data-toggle='popover']").popover({html : true});
		timeline(".li1", "animation2()");
		
		$('#restart').click(function() {
			location.reload();
		});
	});
	
	function timeline(liSelector, nextAnimation) {
		$(liSelector).removeClass("hide");
		$(liSelector + " [data-toggle='popover']").popover("show");
		var text = $(liSelector + ' .popover-content').html(); 
		typing(liSelector + ' .popover-content', text, function() {
			$(liSelector).addClass("animate").one("transitionend", function() {
				if (liSelector == ".li1" || liSelector == ".li2") {
					$(liSelector + " .developer-name").removeClass("hide").addClass("animated  zoomIn").one("animationend", function() {
						nextBtnAnimation(liSelector, nextAnimation);
					});
				} else {
					$(liSelector + " .image").removeClass("hide").addClass("animated  zoomIn").one("animationend", function() {
						$(liSelector + " .developer-name").removeClass("hide").addClass("animated  zoomIn").one("animationend", function() {
							if (liSelector != ".li5") {
								nextBtnAnimation(liSelector, nextAnimation);
							} else {
								$(".li5 .popover-content").addClass("bgColor-lightgray");
								$("#restart").removeClass("hide").popover({
									trigger : "focus",
									content: "Click to restart."
								});
								$("#restart").popover("show");
								$('#restart').next().css("width", "auto").addClass("animated bounceInDown").one("animationend", function() {
									$(this).removeClass("animated bounceInDown");
								});
							}
						});
					});
				}
			});
		});
	}
	
	function nextBtnAnimation(liSelector, nextAnimation) {
		$(liSelector).popover({
			trigger : "focus",
			content: "<a class='btn next-btn' onclick='" + nextAnimation + "'>Next →</a>",
			html : true
		});
		$(liSelector).popover("show");
		$('.next-btn').parents(".popover").css("width", "auto").addClass("animated bounce").one("animationend", function() {
			$(this).removeClass("animated bounce");
		});
	}
	
	function animation2() {
		$(".next-btn").parents(".popover").remove();
		$(".li1 .popover-content").addClass("bgColor-lightgray");
		animatebar(22, function() {
			timeline(".li2", "animation3()");
		});
	}
	
	function animation3() {
		$(".next-btn").parents(".popover").remove();
		$(".li2 .popover-content").addClass("bgColor-lightgray");
		animatebar(44, function() {
			timeline(".li3", "animation4()");
		});
	}
	
	function animation4() {
		$(".next-btn").parents(".popover").remove();
		$(".li3 .popover-content").addClass("bgColor-lightgray");
		animatebar(66, function() {
			timeline(".li4", "animation5()");
		});
	}
	
	function animation5() {
		$(".next-btn").parents(".popover").remove();
		$(".li4 .popover-content").addClass("bgColor-lightgray");
		animatebar(87, function() {
			timeline(".li5", "animation6()");
		});
	}
	
	function animation6() {
		$(".next-btn").parents(".popover").remove();
		$(".li5 .popover-content").addClass("bgColor-lightgray");
		animatebar(87, function() {
			timeline(".li6");
		});
	}
	
	function animatebar(width, callBackFunction) {
		$(".animation-bar").animate({
			"width" : width + "%"
		}, 1500, function() {
			callBackFunction();
		});
	}
	
	function typing(id, text, callBackFunction) {
		$('html, body').animate({scrollTop: '+=200px'}, 800);
		$(id).typewriting(text, {
			"typing_interval" : typingSpeed,
			"cursor_color" : 'white',
		}, function() {
			$(id).removeClass("typingCursor");
			if (typeof callBackFunction === "function") {
				callBackFunction();
			}
		});
	}
</script>
</head>
<body>
	<div class="text-center">
		<h4>
			<span class="label ct-demo-heading">C-Language Evolution</span>
		</h4>
	</div>
	<div class="col-xs-12">
		<ol class="timeline">
			<li style="left: 1%;" class='li1'><span class='year'
				data-trigger='focus' data-animation='false' rel='popover'
				data-placement='bottom' data-toggle='popover'
				data-content='<div>ALGOL60(Algorithmic language) was developed by an International Committee in 1960</div>'>1960</span>
				<div class='developer-div'>
					<div class='developer-name hide'>ALGOL60</div>
				</div></li>
			<li style="left: 24%;" class='li2 hide'><span class='year'
				data-trigger='focus' data-animation='false' rel='popover'
				data-placement='bottom' data-toggle='popover'
				data-content='<div>CPL(Combined Programming Language) was developed by Cambridge University and University of London in 1963</div>'>1963</span>
				<div class='developer-div'>
					<div class='developer-name hide'>CPL</div>
				</div></li>
			<li style="left: 48%;" class='li3 hide'><span class='year'
				data-trigger='focus' data-animation='false' rel='popover'
				data-placement='bottom' data-toggle='popover'
				data-content='<div>BCPL(Basic CPL) was developed by Martin Richards in 1967</div>'>1967</span>
				<div class='developer-div'>
					<img src="/secure/lang/c/images/martin-richards.jpg" class='image hide'>
					<div class='developer-name hide'>Martin Richards</div>
				</div></li>
			<li style="left: 72%;" class='li4 hide'><span class='year'
				data-trigger='focus' data-animation='false' rel='popover'
				data-placement='bottom' data-toggle='popover'
				data-content='<div>B(Basic) was developed by Ken Thompson at BellLabs in 1970</div>'>1970</span>
				<div class='developer-div'>
					<img src="/secure/lang/c/images/ken-thompson.jpeg" class='image hide'>
					<div class='developer-name hide'>Ken Thompson</div>
				</div></li>
			<li style="left: 96%;" class='li5 hide'><span class='year'
				data-trigger='focus' data-animation='false' rel='popover'
				data-placement='bottom' data-toggle='popover'
				data-content='<div>C language was developed by Dennis Ritchie at BellLabs in 1972</div>'>1972</span>
				<div class='developer-div'>
					<img src="/secure/lang/c/images/dennis-ritchie.jpeg" class='image hide'>
					<div class='developer-name hide'>Dennis Ritchie</div>
				</div></li>
		</ol>
		<div class='animation-bar'></div>
		<div class="text-center" style="margin-top: 250px;">
			<a class="btn btn-warning hide" id="restart">&nbsp;Restart</a>
		</div>
	</div>
</body>
</html>
