<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>bbiyak</title>

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resource/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resource/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <%@ include file="../include/navigation.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@ include file="../include/sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
<!--             <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Starter Page</li>
            </ol> -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          

          
          
<div class="card-body">
    <div class="row">
    
        <div class="col-md-12 col-lg-6 col-xl-4">
           <a href="/mydrug/" >
            <div class="card mb-2 bg-gradient-dark">
                <img class="card-img-top" src="${ pageContext.servletContext.contextPath }/resource/dist/img/medicine.jpg" alt="Dist Photo 1">
                <div class="card-img-overlay">
                    <h3 class="card-title text-primary text-white" style="font-size: 40px  !important; font-family: fantasy !important;">MY 약 관리</h3>
                    <p class="card-text text-white pb-2 pt-1">내가 복용 중인 약들을 관리할 수 있습니다.</p>
                </div>
            </div>
           <a/>
        </div>
       
        <div class="col-md-12 col-lg-6 col-xl-4 ">
         <a href="/searchdrug/" >
            <div class="card mb-2" >
                <img class="card-img-top" src="${ pageContext.servletContext.contextPath }/resource/dist/img/search_image.jpeg" alt="Dist Photo 2"  >
                <div class="card-img-overlay">
                    <h3 class="card-title text-primary text-white" style="font-size: 40px  !important; font-family: fantasy !important;">약 알아보기</h3>
                    <p class="card-text pb-2 pt-1 text-white">
                        약 정보를 검색할 수 있습니다.
                    </p>
                 
                </div>
            </div>
           </a> 
        </div>
        <div class="col-md-12 col-lg-6 col-xl-4">
		 <a href="/notice/list" >	        
            <div class="card mb-2">
                <img class="card-img-top " src="${ pageContext.servletContext.contextPath }/resource/dist/img/notice_image.jpg" alt="Dist Photo 3" >
                <div class="card-img-overlay">
                    <h3 class="card-title text-primary text-white" style="font-size: 40px  !important; font-family: fantasy !important;">공지사항</h3>
                    <p class="card-text pb-1 pt-1 text-white">
                        공지사항을 확인할 수 있습니다.
                    </p>
                </div>
            </div>
          </a>  
        </div>
    </div>
</div>
</div>
          <!-- /.col-md-6 -->
          <!-- <div class="col-lg-6">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">Featured</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">Special title treatment</h6>

                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>

            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="m-0">Featured</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">Special title treatment</h6>

                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
              </div>
            </div>
          </div> -->
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
<%@ include file="../include/footer.jsp" %>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
  


<!-- jQuery -->
<script src="${ pageContext.servletContext.contextPath }/resource/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${ pageContext.servletContext.contextPath }/resource/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${ pageContext.servletContext.contextPath }/resource/dist/js/adminlte.min.js"></script>
</body>
</html>