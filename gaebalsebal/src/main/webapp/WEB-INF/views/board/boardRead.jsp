<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>개발자 커뮤니티 | 개발새발</title>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&amp;display=swap" rel="stylesheet">
	
	<!-- Css Styles -->
	<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="/css/nice-select.css" type="text/css">
	<link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="/css/style.css" type="text/css">
	<link rel="stylesheet" href="/css/board.css" type="text/css">
	<link rel="stylesheet" href="/css/boardread.css" type="text/css">
	
	<!-- 버튼 -->
	 <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">-->
    <!-- <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet"> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
	
	
	<!-- icon img -->
	<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />



<style>
.product {
	padding-top: 0;
}
</style>
</head>

<body cz-shortcut-listen="true">
	<!-- Page Preloder -->
	<div id="preloder" style="display: none;">
		<div class="loader" style="display: none;"></div>
	</div>

	<!-- Humberger Begin -->
	<div class="humberger__menu__overlay"></div>
	<div class="humberger__menu__wrapper">
		<div class="humberger__menu__logo">
			<a href="#"><img src="img/logo.png" alt=""></a>
		</div>
		<div class="humberger__menu__cart">
			<ul>

			</ul>

		</div>
		<div class="humberger__menu__widget">

			<div class="header__top__right__auth">
				<a href="/test/login"><i class="fa fa-user"></i> Login</a>
			</div>
		</div>
		<nav class="humberger__menu__nav mobile-menu">
			<ul>
				<li class="active"><a href="./index.html">메인</a></li>
				<li><a href="./shop-grid.html">공지사항</a></li>
				<li><a href="#">게시판</a>
					<ul class="header__menu__dropdown">
						<li><a href="./shop-details.html">정보공유</a></li>
						<li><a href="./shoping-cart.html">질문</a></li>
						<li><a href="./checkout.html">구인구직</a></li>
						<li><a href="./blog-details.html">자유 게시판</a></li>
						<li><a href="./blog-details.html">익명 게시판</a></li>
					</ul></li>
				<li><a href="./blog.html">전체 카테고리</a></li>
				<li><a href="./contact.html">My Page</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap">
			<div class="slicknav_menu">
				<a href="#" aria-haspopup="true" role="button" tabindex="0"
					class="slicknav_btn slicknav_collapsed" style="outline: none;">
					<span class="slicknav_menutxt">MENU</span> <span
					class="slicknav_icon"><span class="slicknav_icon-bar"></span>
						<span class="slicknav_icon-bar"></span><span
						class="slicknav_icon-bar"></span> </span>
				</a>
				<nav class="slicknav_nav slicknav_hidden" aria-hidden="true"
					role="menu" style="display: none;"></nav>
			</div>
		</div>
	</div>

	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">
		<div class="header__top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="header__top__left">
							<ul>
								<li>세상의 모든 개발자를 위하여 °˖✧◝(⁰▿⁰)◜✧˖°</li>

							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="header__top__right">


							<div class="header__top__right__auth">
								<div style="float: left">
									<a href="/test/myPage">3조님 환영합니다</a>
								</div>
								&emsp;
								<div style="float: right">
									<a href="/test/login"><i class="fa fa-user"></i> Logout</a>
								</div>
								<div style="float: right">
									<a href="./contact.html">My Page</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<!-- 메인배너 -->
		<section class="blog-details-hero set-bg"
			data-setbg="/img/mainBanner.png">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="blog__details__hero__text">
							<h2>개발새발</h2>

						</div>
					</div>
				</div>
			</div>
		</section>





	</header>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->

	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span></span>
						</div>
						<ul style="display: none;">
							<li><a href="#">메인</a></li>
							<li><a href="#">공지사항</a></li>
							<li><a href="#">게시판</a></li>
							<li><a href="#">전체카테고리</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<div class="hero__search__categories">
									모든 게시판 <span class="arrow_carrot-down"></span>
								</div>
								<input type="text" placeholder="코드하우스 2반">


								<button type="submit" class="site-btn">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
						<div style="border: 1px solid" ; class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>배너자리</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->

	<!-- Breadcrumb Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>게시판</h4>
							<ul>
								<li><a href="/board/board-list?board_category=정보공유">정보공유</a></li>
								<li><a href="/board/board-list?board_category=질문게시판">질문</a></li>
								<li><a href="/board/board-list?board_category=구인구직">구인구직</a></li>
								<li><a href="/board/board-list?board_category=자유게시판">자유게시판</a></li>
								<li><a href="/board/board-list?board_category=익명게시판">익명게시판</a></li>
							</ul>
						</div>
						<div class="sidebar__item"></div>


						<div class="sidebar__item">
							<div class="latest-product__text">
								<h4>인기 게시물</h4>
								<div
									class="latest-product__slider owl-carousel owl-loaded owl-drag">


									<div class="owl-stage-outer">
										<div class="owl-stage"
											style="transform: translate3d(-1312px, 0px, 0px); transition: all 1.2s ease 0s; width: 3150px;">
											<div class="owl-item cloned" style="width: 262.5px;">
												<div class="latest-prdouct__slider__item">
													<a href="#" class="latest-product__item">
														<div class="latest-product__item__pic">
															<img src="/img/adsBanner1.jpg" alt="">
														</div>
														<div class="latest-product__item__text">
															<h6>Crab Pool Security</h6>
															<span>$30.00</span>
														</div>
													</a> <a href="#" class="latest-product__item">
														<div class="latest-product__item__pic">
															<img src="/img/adsBanner2.jpg" alt="">
														</div>
														<div class="latest-product__item__text">
															<h6>Crab Pool Security</h6>
															<span>$30.00</span>
														</div>
													</a> <a href="#" class="latest-product__item">
														<div class="latest-product__item__pic">
															<img src="img/latest-product/lp-3.jpg" alt="">
														</div>
														<div class="latest-product__item__text">
															<h6>Crab Pool Security</h6>
															<span>$30.00</span>
														</div>
													</a>
												</div>
											</div>
											<div class="owl-item cloned" style="width: 262.5px;">												<div class="latest-prdouct__slider__item">
													<a href="#" class="latest-product__item">
														<div class="latest-product__item__pic">
															<img src="img/latest-product/lp-1.jpg" alt="">
														</div>
														<div class="latest-product__item__text">
															<h6>Crab Pool Security</h6>
															<span>$30.00</span>
														</div>
													</a> <a href="#" class="latest-product__item">
														<div class="latest-product__item__pic">
															<img src="img/latest-product/lp-2.jpg" alt="">
														</div>
														<div class="latest-product__item__text">
															<h6>Crab Pool Security</h6>
															<span>$30.00</span>
														</div>
													</a> <a href="#" class="latest-product__item">
														<div class="latest-product__item__pic">
															<img src="img/latest-product/lp-3.jpg" alt="">
														</div>
														<div class="latest-product__item__text">
															<h6>Crab Pool Security</h6>
															<span>$30.00</span>
														</div>
													</a>
												</div>
											</div>

										</div>
									</div>
									<div class="owl-nav">
										<button type="button" role="presentation" class="owl-prev">
											<span class="fa fa-angle-left"><span></span></span>
										</button>
										<button type="button" role="presentation" class="owl-next">
											<span class="fa fa-angle-right"><span></span></span>
										</button>
									</div>
									<div class="owl-dots disabled"></div>
									<div class="owl-nav">
										<button type="button" role="presentation" class="owl-prev">
											<span class="fa fa-angle-left"><span></span></span>
										</button>
										<button type="button" role="presentation" class="owl-next">
											<span class="fa fa-angle-right"><span></span></span>
										</button>
									</div>
									<div class="owl-dots disabled"></div>
								</div>

							</div>
						</div>
					</div>
				</div>


<%-- 				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<div id="boardTitle">
								<h2>${board.board_category }</h2>
								<p></p>
								<p>자유로운 글쓰기가 가능한 게시판입니다</p>
							</div>
						</div>
							<div class="board_bt_wrap">
								<button type="button" class="btn btn-outline-success">글 수정하기</button>
							</div>
							<article class="post">
								<header style="height: 120px;">
									<div class="title">
					                    ${board.board_title}
					                    <form id="boardForm" action="/board/board-register" method="get">
						                    <input type="text" name="board_no" value="${board.board_no }" hidden="true">
						                    <input type="text" name="board_category" value="${board.board_category }" hidden="true">
						                    <input type="text" name="board_title" value="${board.board_title }" hidden="true">
						                    <input type="text" name="board_content" value="${board.board_content }" hidden="true">
					                    </form>
					                </div>
									<div class="meta">
										<a href="#" class="author"><img src="/img/character.jpg" alt="">&emsp;<span class="name">${board.board_writer}</span></a>
										<div class="info">
						                    <dl>
						                        <dt>게시일</dt>
						                        <dd><fmt:formatDate value="${board.board_create_date }" pattern="yyyy.MM.dd"/></dd>
						                    </dl>
						                    <dl>
						                        <dt>조회</dt>
						                        <dd>${board.board_view }</dd>
						                    </dl>
										</div>
										<div style="float: right; margin-top: -20px; margin-right: 10px">
											<button type="button" onclick="modify();">수정</button>
											<button type="button" onclick="remove();">삭제</button>
										</div>
									</div>
									
								</header><br>
									${board.board_content}
								<footer>
									<ul class="stats">
										<div>
										<li><a href="#">#야근</a></li>
										<li><a href="#">#sad</a></li>
										</div>
										<div>
									
										<li class="like-toggle" >
										<c:if test="${0 == board.board_like_check}">
										<i class="fa-sharp fa-regular fa-heart" style="color: #4ec224; cursor: pointer;" onclick='like(this)'></i>
										</c:if>
										<c:if test="${1 == board.board_like_check}">
										<i class="fa-sharp fa-solid fa-heart" style="color: #4ec224; cursor: pointer;" onclick='like(this)'></i>
										</c:if>
										
										<span class="like-count"> ${board.board_like} </span></li>


										</div>
									</ul>
								</footer>
							</article> --%>
							
						<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<div id="boardTitle">
								<h2 id="boardTitleH2">자유 게시판</h2>
								<p></p>
								<p>자유로운 글쓰기가 가능한 게시판입니다</p>
							</div>
						</div>
							<div class="board_bt_wrap">
								<button type="button" class="btn btn-outline-success" onclick="modify();">글 수정하기</button>
							</div>
							<article class="post">
								<header>
									<div class="title">
					                   ${board.board_title}
					                </div>
									<div class="meta" id="meta">
										<a href="#" class="author"><img src="/img/character.jpg">&emsp;<span class="name">${board.board_writer_nickname}</span></a>
										<div class="info">
						                    <dl>
						                        <dt>게시일</dt>
						                        <dd><fmt:formatDate value="${board.board_create_date }" pattern="yyyy.MM.dd"/></dd>
						                    </dl>
						                    <dl>
						                        <dt>조회수</dt>
						                        <dd>${board.board_view }</dd>
						                    </dl>
										</div>
									</div>
								</header>
										<form id="boardForm" action="/board/board-register" method="get">
						                    <input type="text" name="board_no" value="${board.board_no }" hidden="true">
						                    <input type="text" name="board_category" value="${board.board_category }" hidden="true">
						                    <input type="text" name="board_title" value="${board.board_title }" hidden="true">
						                    <input type="text" name="board_content" value="${board.board_content }" hidden="true">
					                    </form>
								<div id="blank"></div>
								<p>
									<p>${board.board_content}</p>

								</p>
								<footer>	
									<ul class="stats">
										<div>
										<c:forEach items="${board.tag_list}"  var="tag">
										 <li> <a href="#">${tag.tag_name}</a></li>
										</c:forEach>

										</div>
										<div>
									
										<li class="like-toggle" >
										<c:if test="${0 == board.board_like_check}">
										<i class="fa-sharp fa-regular fa-heart" style="color: #4ec224; cursor: pointer;" onclick='like(this)'></i>
										</c:if>
										<c:if test="${1 == board.board_like_check}">
										<i class="fa-sharp fa-solid fa-heart" style="color: #4ec224; cursor: pointer;" onclick='like(this)'></i>
										</c:if>
										
										<span class="like-count"> ${board.board_like} </span></li>
										</div>
									</ul>
								</footer>
							</article>
							
							
							<!-- 댓글 -->
							<div class="row">
							                <div class="col-lg-12">
							                    <div class="reply_table">
							                   		<div class="reply_table_write">댓글쓰기 
							                   			<div class="back">
							                   				<form class="form" action="comment_insert" method="post">
							                   				<%-- 댓글입력창  --%>
							                   				<input type="hidden" name= "board_no" value=4<%-- ${board_no} --%>>
							                   				<input type="hidden" name= "member_no" value=5<%-- ${member_no} --%>>
							                   				<input type="hidden" name= "comments_writer" value="삼번<%-- ${comments_writer} --%>"/>						                   				
							                   				<textarea class="font" cols="70" rows="5" name="comments_content"></textarea>
							                   				<button type="submit" class="btn btn-primary btn-sm" id="btngreen">등록</button>															
							                   				</form>
							                   			</div>
							                   		</div>
							                   		<div class="reply_table_write">댓글</div>
							                        <table >
							                            <thead>
							                                <tr>
							                        		<th></th>
							                        		<th></th>
							                        		<th></th>
							                        		<th></th>
							                        		<th></th>
							                        		<th></th>
							                        		<th></th>
							                                </tr>
							                            </thead>
							                            <tbody>

							                            	<c:forEach items="${viewBoardReply}" var="viewReply" varStatus="i">
							                                <tr >
							                                	<c:choose>
							                                		<%-- 댓글--%>
							                                		<c:when test="${viewReply.comments_group == ''}">
							                                			<c:choose>
								                                			<c:when test="${viewReply.comments_use_yn == 'Y'}">
									                                    		<td colspan="2" class="shoping__cart__item" id="reply_name"><a href="#" class="author"><img src="/img/character.jpg">&emsp;<span class="name">${viewReply.comments_writer}</span></a></td>
									                                    		<td class="reply_table" id="reply_write">${viewReply.comments_content}</td>
											                                    <td class="reply_table" id="reply_date">${viewReply.comments_create_date}</td>
											                                    <td class="hidden" id="comments_no">${viewReply.comments_no}</td>
											                                    <td class="hidden" id="member_no">${viewReply.member_no}</td>
											                                    <td class="hidden" id="deleted">${viewReply.comments_use_yn}</td>
											                                    <td id="reply_reply"><button class="doReply" onclick="openBox(${i.index})"<%-- rereply_forms(this.id) --%> id="rereply${i.index}"><i class="fa-regular fa-comment-dots fa-xl" style="color: #585cdf;"></i></button></td>
											                                    <td class="shoping__cart__item__close" id="reply_close"><button onclick="deleteComment(${viewReply.member_no}, ${viewReply.comments_no}, 4<%-- ${board_no} ★--%>)"><span class="icon_close"></span></button></td>
											                            	</c:when>
											                            	<c:otherwise>
											                            		<td colspan="2" class="shoping__cart__item" id="reply_name"><a href="#" class="author"><img src="/img/character.jpg">&emsp;<span class="name">${viewReply.comments_writer}</span></a></td>
									                                    		<td class="reply_table" id="reply_write">작성자에 의해 삭제된 댓글입니다.</td>
											                                    <td class="reply_table" id="reply_date">---------------------</td>
											                                    <td class="hidden" id="comments_no">${viewReply.comments_no}</td>
											                                    <td class="hidden" id="member_no">${viewReply.member_no}</td>
											                                    <td class="hidden" id="deleted">${viewReply.comments_use_yn}</td>
											                                    <td class="shoping__cart__item__close" id="reply_close"><button onclick="deleteComment(${viewReply.member_no}, ${viewReply.comments_no}, 4<%-- ${board_no} ★--%>)"><span class="icon_close"></span></button></td>
											                            	</c:otherwise>
										                            	</c:choose>
									                                <%-- 대댓글 입력창--%>
									                                <tr class="rereply_form" id = "openBox${i.index}">
									                                	<td colspan="7">
																		<form action="/board/recomment_insert" method="post" style="none">
																			<input type="hidden" name= "board_no" value=4<%-- ${board_no} --%>>
											                   				<input type="hidden" name= "member_no" value=9<%-- ${member_no} --%>>
											                   				<input type="hidden" name= "comments_writer" value="퇴근<%-- ${board_writer} --%>"/>
											                   				<input type="hidden" name= "comments_group" value="${viewReply.comments_no}"/>
											                   				<textarea class="font" cols="90" rows="3" name="comments_content"></textarea>
											                   				<button type="submit" class="btn btn-primary btn-sm">등록</button>		
																		</form>
																		</td>
																	</tr>
							                                    	</c:when>
							                                    	

							                                    	<%-- 대댓글--%>
							                                    	<c:otherwise>
																		<c:choose>
								                                			<c:when test="${viewReply.comments_use_yn == 'Y'}">
								                                    		<td class="reply_table" id="rereply_flag">&emsp;<i class="fa-solid fa-turn-up fa-rotate-90" style="color: #6c6ad2;"></i></td>
								                                    		<td class="shoping__cart__item" id="reply_name"><a href="#" class="author"><img src="/img/character.jpg">&emsp;<span class="name">${viewReply.comments_writer}</span></a></td>
								                                    		<td class="reply_table" id="reply_write">${viewReply.comments_content}</td>
										                                    <td class="reply_table" id="reply_date">${viewReply.comments_create_date}</td>
										                                    <td class="hidden" id="comments_no">${viewReply.comments_no}</td>
										                                    <td class="hidden" id="member_no">${viewReply.member_no}</td>
										                                    <td class="hidden" id="deleted">${viewReply.comments_use_yn}</td>
										                                    <td class="shoping__cart__item__close" id="reply_close"><button onclick="deleteComment(${viewReply.member_no}, ${viewReply.comments_no}, 4<%-- ${board_no} ★--%>)"><span class="icon_close"></span></button></td>								                              		
								                              				</c:when>

								                                			<c:otherwise>
								                                    		<td class="reply_table" id="rereply_flag">&emsp;<i class="fa-solid fa-turn-up fa-rotate-90" style="color: #6c6ad2;"></i></td>
								                                    		<td class="shoping__cart__item" id="reply_name"><a href="#" class="author"><img src="/img/character.jpg">&emsp;<span class="name">${viewReply.comments_writer}</span></a></td>
								                                    		<td class="reply_table" id="reply_write">작성자에 의해 삭제된 댓글입니다.</td>
										                                    <td class="reply_table" id="reply_date">---------------------</td>
										                                    <td class="hidden" id="comments_no">${viewReply.comments_no}</td>
										                                    <td class="hidden" id="member_no">${viewReply.member_no}</td>
										                                    <td class="hidden" id="deleted">${viewReply.comments_use_yn}</td>
										                                    <td class="shoping__cart__item__close" id="reply_close"><button onclick="deleteComment(${viewReply.member_no}, ${viewReply.comments_no}, 4<%-- ${board_no} ★--%>)"><span class="icon_close"></span></button></td>								                              		
								                              				</c:otherwise>
								                              			</c:choose>	
								                              		</c:otherwise>
							                              		</c:choose>
							                                </tr>

															
														</c:forEach>
						                            </tbody>
						                        </table>
							                    </div>
							                </div>
							            </div>
					  		 </div> 		
					   </div>	
							
							
					</div>
				</div>
			</div>
	</section>
	<!-- Product Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.html"><img src="img/logo.png" alt=""></a>
						</div>
						<ul>
							<li>경상남도 창원시 의창구 창원대학로 20 코드하우스 2반</li>
							<li>055-777-7777</li>
							<li>세상의 모든 개발자를 위하여</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
					<div class="footer__widget">
						<h6>Thanks</h6>
						<ul>
							<li><a href="#">codehows</a></li>
							<li><a href="https://kr.freepik.com/free-vector/set-with-two-horizontal-web-hosting-landing-pages-with-isometric-icons-of-cloud-storage-tariff-plan-vector-illustration_39093900.htm#page=2&query=coding&position=20&from_view=keyword&track=sph">macrovector</a> Freepik</li>
							<li><a href="#">Delivery infomation</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Our Sitemap</a></li>
						</ul>
						<ul>
							<li><a href="#">Who We Are</a></li>


						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-12">
					<div class="footer__widget">
						<h6>Join Our Newsletter Now</h6>
						<p>Get E-mail updates about our latest shop and special
							offers.</p>
						<form action="#">
							<input type="text" placeholder="Enter your mail">
							<button type="submit" class="site-btn">Subscribe</button>
						</form>
						<div class="footer__widget__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright Â©
								<script>
									document.write(new Date().getFullYear());
								</script>
								20232023 All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="footer__copyright__payment">
							<img src="img/payment-item.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->


	<!-- Js Plugins -->
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.nice-select.min.js"></script>
	<script src="/js/jquery-ui.min.js"></script>
	<script src="/js/jquery.slicknav.js"></script>
	<script src="/js/mixitup.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/main.js"></script>
	<script src="/js/board.js"></script>
		<script>
	
		
		  
		function like(likeBtn) {
			 const boardNo = ${board.board_no}; // 좋아요를 누른 게시글의 번호 가져오기
			 console.log(boardNo);
			
			  const likeCount = document.querySelector('.like-count'); // 좋아요 수를 표시하는 HTML 요소 선택

			  likeBtn.classList.toggle('fa-regular'); // 꽉 찬 하트 아이콘과 빈 하트 아이콘을 번갈아가며 표시
			  likeBtn.classList.toggle('fa-solid');
			  
			  const currentCount = parseInt(likeCount.textContent); // 현재 좋아요 수를 가져와서 정수로 변환
			  if (likeBtn.classList.contains('fa-regular')) { // 좋아요 버튼이 비활성화된 경우
				  
				  $.ajax({
					    type: 'POST',
					    url: '/board/dislike',
					    data: {
					      board_no: boardNo,
					      member_no: 1
					    },
					    success: function(data) {
					    	likeCount.innerHTML = parseInt(likeCount.textContent) - 1  ;
					    },
					    error: function(error) {
					      console.log(error);
					    }
					  });
			    
			  } else { // 좋아요 버튼이 활성화된 경우
				  $.ajax({
					    type: 'POST',
					    url: '/board/like',
					    data: {
						      board_no: boardNo,
						      member_no: 1
					    },
					    success: function(data) {
					    	likeCount.innerHTML = parseInt(likeCount.textContent) + 1;
					    },
					    error: function(error) {
					      console.log(error);
					    }
					  });
			  }
			}
		
	
		</script>	

</body>
</html>