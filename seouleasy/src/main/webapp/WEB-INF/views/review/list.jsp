<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> 
<c:set var="path" value="${pageContext.request.contextPath}" /> <!-- 상대 경로 -->
<!-- <link rel="stylesheet" href="resources/css/list.css"> -->
<!-- /myapp 프로젝트 경로 리턴 -->


<script>
	$(document).ready(function() {
		$('#write').click(function() {
			$('#frm').attr('action', 'write.do').submit();
		});

	});
</script>


<div id="bodywrap">
	<div id="photoZone">
	
		<!-- 이미지 사진이랑 글 보여주기 테이블은 1*2로 -->
		<h1>여행지? 장소?</h1><br/>
		<table border="1" bgcolor="pink" align="center">
			<tr>
				<td><img src="../resources/images/test.jpg" width="500px"
					height="500px"></td>
				
				
				<!-- 글 출력하는 부분 -->
				<td>
				여기에 글이 출력되어 하는거 맞는데<br/>
				해당 되는 사진 이름에 맞는 글 제목을 뽑아오면 되는거잖아? 그치
				
				</td>
				
				
			</tr>
		</table>
	</div>
	
	<div>
	<br/><br/><br/><br/>
	</div>
	
	
	
	<h1>리뷰</h1><br/>
	<table class="table table-border mt-1">
		<tr>
			<th class="col-md-1 text-center">번호</th>
			<th class="col-md-7 text-center">리뷰 이름</th>
			<th class="col-md-2 text-center">작성자</th>
			<th class="col-md-2 text-center">조회수</th>
		</tr>

		<!-- 테이블에 담긴것을 리스트에 넘겨준다. 이걸 forEach로 처리한다. -->
		<c:forEach items="${aList}" var="dto">
			<tr>
				<td class="text-center">${dto.num}</td>
				<td class="pl-2 text-left"><c:url var="path" value="view.do">
						<c:param name="currentPage" value="${pv.currentPage}" />
						<c:param name="num" value="${dto.num}" />
					</c:url> <!-- 들여쓰기 작업 --> 
				
					<!-- 리뷰글 쓰는 코드 삭제. 코드 없음-->					
					 <a href="${path}"> ${dto.review_title}</a></td>
				<td class="text-center">${dto.easyusersDTO.easyuser_name}</td>
				<td class="text-center">${dto.review_count}</td>
			</tr>
		</c:forEach>

	</table>
	

	<ul class="pagination justify-content-center mt-5 mb-5">

		<!-- 이전 출력 시작 -->
		<c:if test="${pv.startPage > 1}">
			<li class="page=item"><a class="page-link"
				href="list.do?currentPage=${pv.startPage - pv.blockPage}">
				<i class="fas fa-chevron-left"></i></a></li>
		</c:if>
		<!-- 이전 출력 끝 -->

		<!--  페이지 출력 시작 -->
		<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">

			<li><c:choose>
					<c:when test="${i==pv.currentPage}">
						<a class="page-link page-item active"
							href="list.do?currentPage=${i}"> ${i}</a>
					</c:when>
					<c:otherwise>
						<a class="page-link" href="list.do?currentPage=${i}">${i}</a>
					</c:otherwise>
				</c:choose></li>
		</c:forEach>
		<!--  페이지 출력 끝 -->

		<!-- 다음 출력 시작 -->
		<c:if test="${pv.endPage < pv.totalPage}">
			<li>
				<!-- 스타트 페이지 =1 --> <a class="page-link"
				href="list.do?currentPage=${pv.startPage + pv.blockPage}">
				
				
				<i class="fas fa-chevron-right"></i></a>
			</li>
		</c:if>
		<!-- 다음 출력 끝 -->
	</ul>
	
	
	
	
				<div class="text-center mt-5 mb-5">
					<form name="frm" id="frm" method="get" action="write.do" align="center">
							<input type="button" id="write" value="리뷰 등록" />
					</form>
				</div>
	
	
	
<!-- 	
	<div>
	<form id="frm" method="get" action="write.do" align="center">
		<input type="submit" id="btnWrite" value="리뷰쓰기">
	</form>
	<div>
	 -->
	
</div>








