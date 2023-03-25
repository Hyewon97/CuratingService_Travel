<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<link rel="stylesheet" href="resources/css/baseLayout.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
<!-- Header 영역 -->
	<div class="wrapper">
		<div class="wrap">
			<div class="top_area">
	<tiles:insertAttribute name="header" />
	     <tiles:insertAttribute name="title" />
				<tiles:insertAttribute name="heading" />
		</div>
		

	<div class="contanier">
			<tiles:insertAttribute name="content" />
		       <tiles:insertAttribute name="body" />
</div>

<!-- Footer 영역 -->
			<div class="footer_nav">
				<div class="footer_nav_container"></div>
			</div>
			<!-- class="footer_nav" -->
		<tiles:insertAttribute name="footer" />
	</div> <!-- class="wrap -->
		</div> <!-- class="wrapper -->
</body>
</html>