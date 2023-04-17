<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {

var actionForm = $("#actionForm");
var searchForm = $("#searchForm");

	
	$(".paginate_button a").on("click", function(e)  {
		
		
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


</head>
<body>
		<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>#번호</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정일</th>
							
							
						</tr>
					</thead>

          <c:forEach items="${list}" var="board">
            <tr>
              <td><c:out value="${board.board_no}" /></td>
              <td><c:out value="${board.category_type}" /></td>
               <td>
                  <a class='move' href='<c:out value="${board.board_no}"/>'>
                  <c:out value="${board.board_title}" />   <b>[  <%-- <c:out value="${board.replyCnt}" />  --%> ]</b>
                  </a>
              <td><c:out value="${board.member_id}" /></td>
              <td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${board.board_create_date}" /></td>
              <td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${board.board_update_date}" /></td>
            </tr>
          </c:forEach>

				</table>


           <!--  페이징 버튼 여기뷰토 -->
        <div class="pull-right">
        	<ul class="pagination"> 
        		
        		<c:if test="${pageMaker.prev}">
        			<li class="paginate_button page-item previous">
        			<a href="${pageMaker.startPage -1}">Previous</a>
        			</li>
	
        		</c:if>
        		
        		<c:forEach var="num" begin="${pageMaker.startPage}" end="${ pageMaker.endPage }">
        			<li class="paginate_button ${ pageMaker.cri.pageNum == num ? 'active':'' }">
        				<a href="${num}">${num}</a></li>

        		</c:forEach>
        		
        		<c:if test="${pageMaker.next}">
        			<li class="paginate_button next">
        			<a href="${ pageMaker.endPage +1}">Next</a></li>
        		
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
        
        <form id="sortForm" action="/board/list" method="get">
                	<select name="sortSelect">
        				<option value="">--</option>
	        				<option value="board_no_asc">오래된순</option>
	        				<option value="board_no_desc">최신순</option>
	        				<option value="board_title_asc">제목순</option>
        			
        			</select>
        	
        	<input type='hidden' name="amount" value="${pageMaker.cri.amount}">
			<input type='hidden' name="type" value='${pageMaker.cri.type}'>
        	<input type='hidden' name="keyword" value='${pageMaker.cri.keyword}'> 
        	<input type='hidden' name="sort" value='${pageMaker.cri.sort}'> 
        </form>
        
        
        
        <div class="row">
        	<div class="col-lg-12">
        		<form id="searchForm" action="/board/list" method="get">
        			<select name="type">
        				<option value="">--</option>
	        				<option value="T">제목</option>
	        				<option value="C">내용</option>
	        				<option value="W">작성자</option>
	        				<option value="H">해시태그</option>
        			
        			</select>
        			<input type="text" name="keyword" />
        			<input type='hidden' name="pageNum" value='${pageMaker.cri.pageNum }'>
        			<input type='hidden' name="amount" value='${pageMaker.cri.amount }'>
        			<button class='btn btn-default'>Search</button>
        		</form>
        		
        		
        	
        	
        	</div>
        
        </div>
        
        <!--  페이징 버튼 여기까지 -->



</body>
</html>