<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/main/" class="brand-link">
      <img src="${ pageContext.servletContext.contextPath }/resource/dist/img/duck.png" alt="Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light"><b>삐약</b></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <!-- <div class="image">
          <img src="${ pageContext.servletContext.contextPath }/resource/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div> -->
        <div class="info">
          <h5><a href="#" class="d-block">${loginUser.user_nickname}님 안녕하세요</a></h5>
   	
          
         
          <a href="/member/logout" class="d-block">로그아웃</a>
        </div>
      </div>



      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
            
          <li class="nav-header">MENU</li>
          
<!--           <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                내 정보
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../charts/chartjs.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>내 정보 수정</p>
                </a>
              </li>
              
            </ul>
          </li>
           -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                MY약 관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${ pageContext.servletContext.contextPath }/mydrug/register" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>MY약 등록</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${ pageContext.servletContext.contextPath }/mydrug/log/" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>MY약 복용 일지</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${ pageContext.servletContext.contextPath }/mydrug/interaction/" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>MY약 복용 상태 점검</p>
                </a>
              </li>
              
            </ul>
          </li>
        
          
          
          <li class="nav-item">
            <a href="${ pageContext.servletContext.contextPath }/notice/list" class="nav-link">
              <i class="nav-icon fas fa-columns"></i>
              <p>
                공지사항
              </p>
            </a>
          </li>
          
          
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-search"></i>
              <p>
                약 알아보기
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${ pageContext.servletContext.contextPath }/searchdrug/" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>검색</p>
                </a>
              </li>
              
            </ul>
          </li>
          
          

          
          

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
</body>
</html>