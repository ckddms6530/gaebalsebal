<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>개발자 커뮤니티 | 개발새발</title>
	<script src="https://kit.fontawesome.com/2bc97b2f03.js" crossorigin="anonymous"></script>
	<!-- Google Font -->
	<link
		href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&amp;display=swap"
		rel="stylesheet">
	
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
	
	<!-- 버튼 -->
	 <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">-->
    <!-- <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
	
	
	<script>
	function sort(){
		alert();
	}
	
	
	$(document).ready(function() {

		var actionForm = $("#actionForm");
		var searchForm = $("#searchForm");

			
			$(".product__pagination a").on("click", function(e)  {
				
				
				e.preventDefault();
				
				console.log('click');
				
				
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			});
			
			
			
			$("#searchForm button").on(
					"click",
					function(e) {
						
						if (!searchForm.find("option:selected")
								.val()) {
							alert("검색종류를 선택하세요");
							return false;
						}

						if (!searchForm.find(
								"input[name='keyword']").val()) {
							alert("키워드를 입력하세요");
							return false;
						}
						
						searchForm.find("input[name='pageNum']")
								.val("1");
						e.preventDefault();

						searchForm.submit();

					});	
			
			$("#sortForm select[name='sortSelect']").on("change", function() {
			    
			    $("#sortForm input[name='sort']").val($(this).val());
			    $("#sortForm").submit();
			});
			
			
		});
</script>
	
	<!-- icon img -->
	<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">



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
								<li><a href="#">정보공유</a></li>
								<li><a href="#">질문</a></li>
								<li><a href="#">구인구직</a></li>
								<li><a href="#">자유게시판</a></li>
								<li><a href="#">익명게시판</a></li>
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
											<div class="owl-item cloned" style="width: 262.5px;">
												<div class="latest-prdouct__slider__item">
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


				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<div id="boardTitle">
								<h2>자유 게시판</h2>
								<p></p>
								<p>자유로운 글쓰기가 가능한 게시판입니다</p>
							</div>
						</div>

						<div id="boardList">
							<!-- 버튼 -->
							<div class="board_bt_wrap">
								<button type="button" class="btn btn-outline-success">게시글 등록하기</button>
							</div>
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
						
							<th>#번호  </th>
							<th>카테고리</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일 <i class="fa-solid fa-arrow-up-wide-short" style="color: #b3c0d5; cursor: pointer;" onclick="sort()"></i></th>
							<th>수정일</th>
							<th>좋아요 <i class="fa-solid fa-arrow-up-wide-short" style="color: #b3c0d5;"></i> </th>
							<th>조회수 <i class="fa-solid fa-arrow-up-wide-short" style="color: #b3c0d5;"></i> </th>
							<th>해시태그</th>
							
						</tr>
					</thead>

          <c:forEach items="${list}" var="board">
            <tr>
              <td><c:out value="${board.board_no}" /> </td>
               <td><c:out value="${board.category_type}" /></td>
               <td>
                  <a class='move'  href='<c:out value="${board.board_no}"/>' style="font-size: 20px">
                  <c:out value="${board.board_title}" />   <b>[  <%-- <c:out value="${board.replyCnt}" />  --%> ]</b>
                  </a>
                  
              <td><c:out value="${board.member_id}" /></td>
              <td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${board.board_create_date}" /></td>
              <td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${board.board_update_date}" /></td>
              <td>${board.board_like}</td>
              <td>${board.board_view}</td>
              <td><c:forEach items="${board.tag_list}"  var="tag">
					<a href="#">${tag.tag_name}</a>
				
				</c:forEach></td>
            </tr>
          </c:forEach>

				</table>

		   <!-- 버튼 그룹 -->

           <!--  페이징 버튼 여기뷰토 -->
        <div class="pull-right">
        	<ul class="pagination"> 
        		
        		<c:if test="${pageMaker.prev}">
        			<li class="product__pagination page-item previous">
        			<a href="${pageMaker.startPage -1}"><</a>
        			</li>
	
        		</c:if>
        		
        		<c:forEach var="num" begin="${pageMaker.startPage}" end="${ pageMaker.endPage }">
        			<li class="product__pagination ${ pageMaker.cri.pageNum == num ? 'active':'' }">
        				<a href="${num}">${num}</a></li>

        		</c:forEach>
        		
        		<c:if test="${pageMaker.next}">
        			<li class="product__pagination next">
        			<a href="${ pageMaker.endPage +1}">></a></li>
        		
        		</c:if>
        	</ul>
        </div>
        <form id="actionForm" action="/board/list" method="get">
        	<input type='hidden' name="pageNum" value="${pageMaker.cri.pageNum}">
        	<input type='hidden' name="amount" value="${pageMaker.cri.amount}">
 <%--        	<input type='hidden' name="type" value='<c:out value="${pageMaker.cri.type}"/>'>
        	<input type='hidden' name="keyword" value='<c:out value="${pageMaker.cri.keyword}"/>'> --%>
			<input type='hidden' name="type" value='${pageMaker.cri.type}'>
        	<input type='hidden' name="keyword" value='${pageMaker.cri.keyword}'> 
        	<input type='hidden' name="sort" value='${pageMaker.cri.sort}'> 
        </form>
        
        <div class="row">
        	<div class="col-lg-12">

        	
        	
        		<form id="searchForm" action="/board/list" method="get">
        			<select name="type">
        				<option value="">검색</option>
	        				<option value="T">제목</option>
	        				<option value="C">내용</option>
	        				<option value="W">작성자</option>
	        				<option value="H">해시태그</option>
        			
        			</select>
        			<input type="text" name="keyword" />
        			<input type='hidden' name="pageNum" value='${pageMaker.cri.pageNum }'>
        			<input type='hidden' name="amount" value='${pageMaker.cri.amount }'>
        			<button class='site-btn'>Search</button>
        		</form>
        		
        		
        	
        	
        	</div>
     
        <form id="sortForm" action="/board/list" method="get">
                	<select name="sortSelect">
        				<option value="">정렬</option>
	        				<option value="board_no_asc">오래된순</option>
	        				<option value="board_no_desc">최신순</option>
	        				<option value="board_title_asc">제목순</option>
        			
        			</select>
        	
        	<input type='hidden' name="amount" value="${pageMaker.cri.amount}">
			<input type='hidden' name="type" value='${pageMaker.cri.type}'>
        	<input type='hidden' name="keyword" value='${pageMaker.cri.keyword}'> 
        	<input type='hidden' name="sort" value='${pageMaker.cri.sort}'> 
        </form>        	        	
      
        </div>
        
        <!--  페이징 버튼 여기까지 -->

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
							<li><a href="https://kr.freepik.com/free-vector/set-with-two-horizontal-web-hosting-landing-pages-with-isometric-icons-of-cloud-storage-tariff-plan-vector-illustration_39093900.htm#page=2&query=coding&position=20&from_view=keyword&track=sph">some Img| macrovector</a> Freepik</li>
							<li><a href="#">some Template| tamaj@lkn.io @ajlkn</a></li>
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
	

</body>
</html>