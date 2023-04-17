<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resource/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resource/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <%@ include file="../include/navigation.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
   <%@ include file="../include/sidebar.jsp" %>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>공지사항</h1>
          </div>
          <div class="col-sm-6">
<!--             <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Simple Tables</li>
            </ol> -->
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"></h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                  
                    <tr>
                      <th>no</th>
                      <th>제목         </th>
                      <th>작성자</th>
                      <th>조회수</th>
                      <th>등록일시</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                  <c:forEach items="${ noticeList }" var="noticeList">
                  			<tr>
			                    <td>${noticeList.notice_no}</td>
			                    <td class="col-md-6"><a href="/notice/view?notice_no=${noticeList.notice_no}"> ${noticeList.notice_title}</a></td>
			                    <td>${noticeList.admin_no}</td>
			                    <td>${noticeList.notice_hit}</td>
			                    <td>${noticeList.char_create_date}</td>
			                </tr>
                  
                  
                  
                  </c:forEach>
                   
                  </tbody>
                </table>
                

                <div class="card-footer clearfix">
                  <div class="row" style="float: right;">
                  <ul class="pagination">
                    <li class="paginate_button page-item previous disabled" id="example2_previous"><a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                    <li class="paginate_button page-item active"><a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="example2" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="example2_next"><a href="#" aria-controls="example2" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                  
                  </ul>

                  <a href="/notice/write" class="btn btn-app" >
                  
                    <i class="fas fa-edit" ></i> 작성
                  </a>
                </div>
              </div>
              </div>
              <!-- /.card-body -->

            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
        
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<%@ include file="../include/footer.jsp" %>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${ pageContext.servletContext.contextPath }/resource/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${ pageContext.servletContext.contextPath }/resource/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${ pageContext.servletContext.contextPath }/resource/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${ pageContext.servletContext.contextPath }/resource/dist/js/demo.js"></script>
</body>
</html>