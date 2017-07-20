<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta name="google-site-verification"
	content="YHkzOS5N5M9qkZTIGtDDfuKidQhuMuSj02txDAxSlxg" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title id="title_seoul_escape">SPORTSPOT Search</title>

<!-- design : icon -->
<link rel="shortcut icon" href="../Resources/images/jin/ico/favicon.png"
	type="image/x-icon">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../Resources/images/jin/ico/ghost-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../Resources/images/jin/ico/ghost-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../Resources/images/jin/ico/ghost-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../Resources/images/jin/ico/ghost-icon-57-precomposed.png">


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">
<meta name="title" content="Seoul Escape Room">

<!-- CSS -->

<link rel="stylesheet" href="../Resources/css/search/search1.css" type="text/css" />
<link rel="stylesheet" href="../Resources/css/search/search2.css"/>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- JavaScript -->

<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/38f6e66c6208.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.12.1.js"></script>



</head>

<body ng-app="myapp">
	<div class="modal fade" id="error_modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="error_title"></h4>
				</div>
				<div class="modal-body">
					<p id="error_message"></p>
				</div>
				<div class="modal-footer">
					<button type="button" id="error_confirm_button"
						class="btn btn-default" data-dismiss="modal">확인</button>
					<!--<button type="button" id="error_button_extra" class="btn btn-default" data-dismiss="modal">확인</button>-->
				</div>
			</div>
		</div>
	</div>

	<div id="body_wrapper">
		<div id="body_inner">
			<nav class="navbar navbar-default" role="navigation" id="nav">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<div id="top_logo">
							<a class="navbar-brand" href="../index.jsp"><img
								src="../Resources/images/jin/logo/full.png"></a>
						</div>
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#nav_collapse"
							id="mobile_menu_button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="nav_collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/Project"> HOME </a></li>
							<li><a href="#" class="active"> SEARCH </a></li>

							<li><a href="/contact/"> MYPAGE </a></li>
							<li><a href="/contact/"> LOGOUT </a></li>
							<li class=""><a class="set_lang_en" href="#"> </a></li>

						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
			<!-- 상단바 -->


			<!-- <SCRIPT LANGUAGE="JavaScript">

var checkArray =  Array.apply(null, new Array(12)).map(Number.prototype.valueOf,0);


$(function(){ 
        $('#searchInput').on('click',function(){ 
        	var txt = $("#inputtype").text();
              alert(txt); 
              
        $.ajax({ 
               url:'searchTeam', //가져오고자하는 서버페이지 주소를 넣는다. 
               type:'get', //데이터를 서버로 전송하게 된다. 
               data:{ 
            	   P_type: $("#inputtype").text(),  //에디터박스의 아이디를 넣으면 해당 에디터박스의 데이터를 보내준다.
            	   P_doro: $('#P_doro').val()       
               } , 
               success : function(t){ 
                             alert('성공!' + t);
                             
                             $("#here").html(t);
                         
               } , 
               error : function(){ 
                         alert('실패 ㅠㅠ'); 
               } 
        }); 
    }); 
}); 

sport=["soccer","baseball","badminton","goggles","golf","tennis-ball",
	"ice-skating","hockey","roller-skate","archery","target","others"];
	
$(document).ready(function(){
	
	$("#join").click(function(){
		window.open("joinpopup.jsp", "a", "width=300, height=600, left=300, top=100");
	});
	
	$(".icon img").click(function(){
		var index = $("img").index(this);
		if(checkArray[index-1] == 0){
			checkArray[index-1] = 1;
			$(this).css('opacity','1');
			var beforeText = $("#inputtype").text();
			$("#inputtype").text(beforeText + sport[index-1]+" ");
			
		}
		else{
			checkArray[index-1] = 0;
			$(this).css('opacity','0.4');
			var text1 = $("#inputtype").text();
			text1 = text1.replace(sport[index-1]+" ",'');
			
			$("#inputtype").text(text1);
		}
	});
});


</script> -->


<SCRIPT LANGUAGE="JavaScript">
var checkArray =  Array.apply(null, new Array(12)).map(Number.prototype.valueOf,0);


$(function(){ 
        $('#searchInput').on('click',function(){ 
        	//
              //alert("데이터 전송~ ^^*");
              var txt = $("#inputtype").text();
              //alert(txt); 
       $.ajax({ 
               url:'searchTeam', //가져오고자하는 서버페이지 주소를 넣는다. 
               type:'GET', //데이터를 서버로 전송하게 된다. 
               data:{ 
            	   P_type: txt,  //에디터박스의 아이디를 넣으면 해당 에디터박스의 데이터를 보내준다.
            	   P_doro: $('#P_doro').val()       
               } , 
               success : function(t){ 
                             
                             $("#here").html(t);
                         
               } , 
               error : function(){ 
                        alert('실패'); 
               } 
        });
    }); 
}); 


sport=["soccer","baseball","badminton","goggles","golf","tennis-ball",
	"ice-skating","hockey","roller-skate","archery","target","others"];
	
$(document).ready(function(){
	var OpenWin;
	$('#here').on('click', '.join', function (){
		var msgTo = $(this).closest("tr").find('#gotoMessage').text();
		
		/* 		var messsageToValue = $(this).closest("tr").find('#gotoMessage').text();
				alert(messageToValue); */
				OpenWin = window.open("joinpopup.jsp", "a", "width=300, height=600, left=300, top=100");
		/* 		$(OpenWin.document).ready(function(){
					$(OpenWin).contents().find('#MSGTO').value(msgTo);
				}); */
				
				OpenWin.onload = function(){
					OpenWin.document.getElementById('MSGTO').value = msgTo;
				}
				/* purchaseWin.onload = function () {
					  purchaseWin.document.getElementById('tdProduct').innerHTML = '2';
					}; */
    });
	
	

	
		  $(document).keypress(function(e){
		    if(e.keyCode==13) {
		    	document.getElementById('searchInput').click();
		    }
		  });
		

	$('.dropdown-menu a').on('click', function(){
		
	    $(this).parent().parent().prev().html($(this).html() + '<span class="caret"></span>');  
	    if($(this).html() != "전체"){
	    	var beforeText = $("#inputtype").text();
	    	if(document.getElementById("su5").value=="전체")
				putValue('others');
	    	
	    		
			beforeText = beforeText.replace(document.getElementById("su5").value+" ","");
			
			$("#inputtype").text(beforeText+$(this).html()+" ");	    	
			document.getElementById("su5").value=$(this).html();
			
	    }
	    else{
		    var beforeText = $("#inputtype").text();
		    var temp = document.getElementById("su5").value;
	    	putValue('others');
		
			beforeText = beforeText.replace(temp+" ","");
			
			$("#inputtype").text(beforeText+document.getElementById("su5").value+" ");	    	
			
	    }
	})

	
	$('#otherss').click(function () {  
	    if($("#otherOptions").css("display") == "none"){   
	   
	    	jQuery('#otherOptions').show();  
	    } else {  
	    	 jQuery('#otherOptions').hide();   
	    }  
	});
	
	function putValue(x){
		
		if(x=='soccer')
		{
			document.getElementById("su3").value= "축구장";
		}
		else if(x=='tennis-ball')
		{
			document.getElementById("su3").value= "테니스장";
		}
		else if(x=='hockey')
		{
			document.getElementById("su3").value= "하키장";
		}
		else if(x=='baseball')
		{
			document.getElementById("su3").value= "야구장";
		}
		else if(x=='badminton')
		{
			document.getElementById("su3").value="배드민턴장";
		}
		else if(x=='roller-skate')
		{
			document.getElementById("su3").value= "롤러스케이트장";
		}
		else if(x=='ice-skating')
		{
			document.getElementById("su3").value= "빙상장";
		}
		else if(x=='goggles')
		{
			document.getElementById("su3").value= "수영장";
		}
		else if(x=='target')
		{
			document.getElementById("su3").value= "사격장";
		}
		else if(x=='archery')
		{
			document.getElementById("su3").value= "양궁장";
		}
		else if(x=='golf')
		{
			document.getElementById("su3").value= "골프연습장";
		}
		else if(x=='others') //default
		{
			document.getElementById("su5").value= 
		" 투기체육관 생활체육관 기타체육시설 구기체육관 간이운동장 전천후게이트볼장 게이트볼장 싸이클경기장 육상경기장 조정카누장 족구장 인공암장 국궁장 요트장 씨름장 승마장";
			document.getElementById("su3").value= document.getElementById("su5").value;
		
		}
	}
	
	
	$(".icon img").click(function(){
		var index = $("img").index(this);
		//버튼 on
		if(checkArray[index-1] == 0){
			checkArray[index-1] = 1;
			$(this).css('opacity','1');
			var beforeText = $("#inputtype").text();
			//alert(sport[index-1]);
			
			putValue(sport[index-1]);
			$("#inputtype").text(beforeText +document.getElementById("su3").value+" ");
			
		}
		//버튼 off
		else{
			checkArray[index-1] = 0;
			$(this).css('opacity','0.4');
			var text1 = $("#inputtype").text();
			if((index== 12)&& (document.getElementById("su5").value != " 투기체육관 생활체육관 기타체육시설 구기체육관 간이운동장 전천후게이트볼장 게이트볼장 싸이클경기장 육상경기장 조정카누장 족구장 인공암장 국궁장 요트장 씨름장 승마장")){
				text1 = text1.replace(document.getElementById("su5").value+" ",'');
			}
			else{
				putValue(sport[index-1]);
				text1 = text1.replace(document.getElementById("su3").value+" ",'');
				
			}
			$("#inputtype").text(text1);
		}
		
	})
});





</script>

			<div class="container" id="reservation_container"
				ng-controller="AppController">
				<div id="booking_toggle_wrapper" class="subtitle">
					<span class="tab_wrapper"> <a id="btn_toggle_book"
						class="toggle_button" href="../search.jsp">장소 검색</a>
					</span> <span class="tab_wrapper"> <a id="btn_toggle_book"
						class="toggle_button active"
						href="/Project/TeamSearch/teamsearch.jsp">팀 검색</a>
					</span>
				</div>


				<div class="container" id="reservation_container"
					ng-controller="AppController">
					&nbsp;
					<h2>스포츠 타입</h2>
					<div class="icon">
						<img src="../Resources/images/image_kyy/soccer.png" name="soccer"
							onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/baseball.png" name="baseball"
							onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/badminton.png"
							name="badminton" onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/goggles.png" name="goggles"
							onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/golf.png" name="golf"
							onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/tennis-ball.png"
							name="tennis-ball" onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/ice-skating.png"
							name="ice-skating" onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/hockey.png" name="hockey"
							onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/roller-skate.png"
							name="roller-skate" onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/archery.png" name="archery"
							onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/target.png" name="target"
							onclick="Check(this.name,'')"> <img
							src="../Resources/images/image_kyy/others.png" name="others"
							onclick="Check(this.name,'')"> <br>

						<div class="container" id="otherOptions" style="display: none;">

							<div class="dropdown" style="float: right">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									상세선택 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">전체</a></li>
									<li class="divider"></li>
									<li><a href="#">승마장</a></li>
									<li><a href="#">씨름장</a></li>
									<li><a href="#">요트장</a></li>
									<li><a href="#">국궁장</a></li>
									<li><a href="#">인공암장</a></li>
									<li><a href="#">육상경기장</a></li>
									<li><a href="#">싸이클경기장</a></li>
									<li><a href="#">조정카누장</a></li>
									<li><a href="#">족구장</a></li>
									<li><a href="#">게이트볼장</a></li>
									<li><a href="#">전천후게이트볼장</a></li>
									<li class="divider"></li>
									<li><a href="#">간이운동장</a></li>
									<li><a href="#">게이트볼장</a></li>
									<li><a href="#">구기체육관</a></li>
									<li><a href="#">기타체육시설</a></li>
									<li><a href="#">생활체육관</a></li>
									<li><a href="#">투기체육관</a></li>

								</ul>
							</div>
						</div>

					</div>
					<div class="iconafter"></div>
				</div>




				<div class="container" id="basic">
					<h2>지역 조회</h2>
					<br>
					
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="동명을 입력하세요 ex)잠실동 " id="P_doro"
							onkeydown="if (event.keyCode == 13)
                        document.getElementById('searchInput').click()"
							name="P_doro"> <input type="hidden" id="su3"
							name="P_type"> <input type="hidden" id="su4" name="too">
						<div class="input-group-btn">
							<button id=searchInput class="btn btn-default" type="button">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
					
					<p>
						같이 검색할 검색 종목 :<span id="inputtype"></span> <br>

					<div id="hoho"></div>
					<div id="here"></div>
						
					</p>
					
				</div>



				<div id="footer">
					<div class="container">
						<div class="row">
							<!--  <div class="col-sm-12 visible_small">
            <div class="fb_link">
              <a href="https://www.facebook.com/seoulescape" target="_blank"><img src="http://www.seoul-escape.com/static/image/facebook.png"></a>
            </div>
          </div> -->
							<div class="col-sm-12 col-md-6">
								<div class="footer_info">
									<p>Copyright © 2015 Seoul Escape Room. All Rights Reserved.
									</p>
									<p>
										(주)삶넥스트 | 사업자등록번호: 887-81-00575 | 대표: BAIGWOONYONG, 이정헌 |
									</p>
								</div>
							</div>
							<!-- <div class="col-md-6 visible_large">
            <div class="fb_link">
              <a href="https://www.facebook.com/seoulescape" target="_blank"><img src="http://www.seoul-escape.com/static/image/facebook.png"></a>
            </div>
          </div> -->
						</div>
					</div>
				</div>
			</div>

</body>
</html>