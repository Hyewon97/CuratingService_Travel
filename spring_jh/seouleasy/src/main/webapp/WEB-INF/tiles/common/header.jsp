<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="resources/css/header.css"> 

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<!-- font-family: 'Jua', sans-serif; -->


			<div>
			<ul class="top_area">
  <li class="logo_area">
   <a class="logo_link" href="${contextPath}/">
        <img src="${contextPath}/resources/images/logo.png" alt="로고" width="150px" height="80px">
      </a>
  </li>
  
  <!-- 상세 페이지 카테고리 -->
  <li class="Exhibition_area">
    <a class="Exhibition_link" href="${pageContext.request.contextPath}/user.do">문화</a>
  </li>
  <li class="Nature_area">
    <a class="Nature_link" href="${pageContext.request.contextPath}/user.do">자연</a>
  </li>
  <li class="Attraction_area">
    <a class="Attraction_link" href="${pageContext.request.contextPath}/user.do">체험</a>
  </li>
  <li class="History_area">
    <a class="History_link" href="${pageContext.request.contextPath}/user.do">역사</a>
  </li>
  <li class="ETC_area">
    <a class="ETC_link" href="${pageContext.request.contextPath}/user.do">추천</a>
  </li>

      <c:choose>
         <c:when test="${sessionScope.authInfo == null}">
         <li class="login_area"><a class="login_link" href="${pageContext.request.contextPath}/easyuser/login.do">로그인</a></li>
         <li class="sign_area"><a class="sign_link" href="${pageContext.request.contextPath}/easyuser/signup.do">회원가입</a></li>
         </c:when>
         
         <c:otherwise>
         <li class="login_area"><a class="login_link" href="${pageContext.request.contextPath}/easyuser/logout.do">${sessionScope.authInfo.easyuser_name}님 로그아웃</a></li>
         <li class="sign_area"><a class="sign_link" href="${pageContext.request.contextPath}/easyuser/editmember.do">마이페이지</a></li>
         
         </c:otherwise>
      </c:choose>
         
         
         <li class="notice_area"><a class="notice_link" href="${pageContext.request.contextPath}/user.do">공지사항</a></li>
      </ul>
  </div>
<div class="clearfix"></div>
