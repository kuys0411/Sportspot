var checkArray = Array.apply(null, new Array(12)).map(Number.prototype.valueOf,
		0);

$(function() {
	$('#searchInput').on('click', function() {
		//
		// alert("데이터 전송~ ^^*");
		var txt = $("#inputtype").text();
		// alert(txt);
		$.ajax({
			url : 'search', // 가져오고자하는 서버페이지 주소를 넣는다.
			type : 'get', // 데이터를 서버로 전송하게 된다.
			data : {
				P_type : txt, // 에디터박스의 아이디를 넣으면 해당 에디터박스의 데이터를 보내준다.
				P_doro : $('#P_doro').val()
			},
			success : function(t) {
				// alert('성공!' + t);

				$("#here").html(t);

			},
			error : function() {
				// alert('실패 ㅠㅠ');
			}
		});
	});
});

sport = [ "soccer", "baseball", "badminton", "goggles", "golf", "tennis-ball",
		"ice-skating", "hockey", "roller-skate", "archery", "target", "others" ];

$(document)
		.ready(
				function() {

					$(document).keypress(function(e) {
						if (e.keyCode == 13) {
							document.getElementById('searchInput').click();
						}
					});

					$('.dropdown-menu a')
							.on(
									'click',
									function() {

										$(this)
												.parent()
												.parent()
												.prev()
												.html(
														$(this).html()
																+ '<span class="caret"></span>');
										if ($(this).html() != "전체") {
											var beforeText = $("#inputtype")
													.text();
											if (document.getElementById("su5").value == "전체")
												putValue('others');

											beforeText = beforeText
													.replace(
															document
																	.getElementById("su5").value
																	+ " ", "");

											$("#inputtype").text(
													beforeText + $(this).html()
															+ " ");
											document.getElementById("su5").value = $(
													this).html();

										} else {
											var beforeText = $("#inputtype")
													.text();
											var temp = document
													.getElementById("su5").value;
											putValue('others');

											beforeText = beforeText.replace(
													temp + " ", "");

											$("#inputtype")
													.text(
															beforeText
																	+ document
																			.getElementById("su5").value
																	+ " ");

										}
									})

					$('#otherss').click(function() {
						if ($("#otherOptions").css("display") == "none") {

							jQuery('#otherOptions').show();
						} else {
							jQuery('#otherOptions').hide();
						}
					});

					function putValue(x) {

						if (x == 'soccer') {
							document.getElementById("su3").value = "축구장";
						} else if (x == 'tennis-ball') {
							document.getElementById("su3").value = "테니스장";
						} else if (x == 'hockey') {
							document.getElementById("su3").value = "하키장";
						} else if (x == 'baseball') {
							document.getElementById("su3").value = "야구장";
						} else if (x == 'badminton') {
							document.getElementById("su3").value = "배드민턴장";
						} else if (x == 'roller-skate') {
							document.getElementById("su3").value = "롤러스케이트장";
						} else if (x == 'ice-skating') {
							document.getElementById("su3").value = "빙상장";
						} else if (x == 'goggles') {
							document.getElementById("su3").value = "수영장";
						} else if (x == 'target') {
							document.getElementById("su3").value = "사격장";
						} else if (x == 'archery') {
							document.getElementById("su3").value = "양궁장";
						} else if (x == 'golf') {
							document.getElementById("su3").value = "골프연습장";
						} else if (x == 'others') // default
						{
							document.getElementById("su5").value = " 투기체육관 생활체육관 기타체육시설 구기체육관 간이운동장 전천후게이트볼장 게이트볼장 싸이클경기장 육상경기장 조정카누장 족구장 인공암장 국궁장 요트장 씨름장 승마장";
							document.getElementById("su3").value = document
									.getElementById("su5").value;

						}
					}

					$(".icon img")
							.click(
									function() {
										var index = $("img").index(this);
										// 버튼 on
										if (checkArray[index - 1] == 0) {
											checkArray[index - 1] = 1;
											$(this).css('opacity', '1');
											var beforeText = $("#inputtype")
													.text();
											// alert(sport[index-1]);

											putValue(sport[index - 1]);
											$("#inputtype")
													.text(
															beforeText
																	+ document
																			.getElementById("su3").value
																	+ " ");

										}
										// 버튼 off
										else {
											checkArray[index - 1] = 0;
											$(this).css('opacity', '0.4');
											var text1 = $("#inputtype").text();
											if ((index == 12)
													&& (document
															.getElementById("su5").value != " 투기체육관 생활체육관 기타체육시설 구기체육관 간이운동장 전천후게이트볼장 게이트볼장 싸이클경기장 육상경기장 조정카누장 족구장 인공암장 국궁장 요트장 씨름장 승마장")) {
												text1 = text1
														.replace(
																document
																		.getElementById("su5").value
																		+ " ",
																'');
											} else {
												putValue(sport[index - 1]);
												text1 = text1
														.replace(
																document
																		.getElementById("su3").value
																		+ " ",
																'');

											}
											$("#inputtype").text(text1);
										}

									})
				});