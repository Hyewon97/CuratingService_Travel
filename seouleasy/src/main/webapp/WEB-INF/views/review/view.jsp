<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
	$('#list').click(function(){
		$('#frm').attr('action','list.do').submit();
	});
	
		
		$('#update').click(function(){
			$('#frm').attr('action', 'update.do').submit(); 
		});
		
		$('#delete').click(function(){
			$('#frm').attr('action', 'delete.do').submit(); 
		});

	
	
});
</script>
<div class="container">
	<table class="table  table-bordered">
		<tr>
			<th width="20%">작성자</th>
			<td>${dto.membersDTO.memberName}</td>
			<th width="20%">조회수</th>
			<td>${dto.review_count}</td> <!-- 여기 reviewCount였음 -->
		</tr>

		<tr>
			<th>제목</th>
			<td colspan="3">${dto.review_title}</td>
		</tr>

		<tr>
			<th>내용</th>
			<td colspan="3">${dto.review_content}</td>
		</tr>

		<tr>
			<th>파일</th>
			<td colspan="3"><c:if test="${!empty dto.route_name}">
					<a href="contentdownload.do?num=${dto.num}">
						${fn:substringAfter(dto.route_name,"_")} </a>
				</c:if> <c:if test="${empty dto.route_name }">
					<c:out value="첨부파일 없음" />
				</c:if></td>
		</tr>
	</table>
	
	
	<div class="text-center mt-5 mb-5">
		<form name="frm" id="frm" method="get">
			<input type="hidden" name="num" value="${dto.num}" /> 
			<input type="hidden" name="currentPage" id="currentPage" value="${currentPage}" />

			<input type="button" id="list" value="리스트" /> 
			
			<!-- 같은 사용자면 글 수정과 삭제가 보이도록 조건문을 달음. 지금은 모든 상황에서 보이도록 출력한다. -->
			<!-- c:if test="${sessionScope.authInfo != null && sessionScope.authInfo.memberEmail==dto.email}"-->
				<input type="button" id="update" value="수정" /> 
				<input type="button" id="delete" value="삭제" /> <!-- 삭제 기능 구현 오나료 -->
			<!--/c:if-->

		</form>
	</div>
</div>



