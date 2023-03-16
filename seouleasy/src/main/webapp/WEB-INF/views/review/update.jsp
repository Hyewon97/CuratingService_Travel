<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
	$('#update').click(function(){
		$('[name=review_content]').val($('[name=review_content]').val().replace(/\n/gi,'<br/>'));
		$('#frm').attr('action', 'update.do').submit();
	});
	
	
	// 멤버 코드 추가하면 수정해야 하는 부분 
	$('#cancle').click(function(){
		alert('취소합니다.')
		// dto의 값
		$('#memberName').val('${dto.membersDTO.memberName}');
		$('#review_title').val('${dto.review_title}');
		$('#review_content').val('${dto.review_content}');
	});
	
	// 뒤로가기 버튼
	$('#back').click(function(){
		history.go(-1);
	});
	
});
</script>

<div class="container">
	<form name="frm" id="frm" method="post" enctype="multipart/form-data">
		<table class="table table-bordered mt-1">
			<tr>
				<th>작성자</th> <!-- 멤버 코드 수정해야 하는 부분 -->
				<td colspan="3"><input type="text" name="memberName" id="memberName"
					value="${dto.membersDTO.memberName}"  readonly="readonly"/></td>				
			</tr>
			
			<tr>
			  <th >등록일</th>
			  <td>${dto.write_date}</td>
			</tr>

			<tr>
				<th>제목</th>
				<td colspan="3"><input type="text" name="review_title" id="review_title" 
					value="${dto.review_title}" /></td>
			</tr>			

			<tr>
				<th>내용</th>
				<td colspan="3">
				<textarea name="review_content" id="review_content" rows="13" style="width:100%" > ${dto.review_content} </textarea></td>
			</tr>

			<tr>
				<th>첨부파일</th>
				<td colspan="3"><input type="file" name="filename" /> <span>${fn:substringAfter(dto.route_name, "_") }</span>
				</td>
			</tr>
		</table>
		<div class="text-center mt-5 mb-5">
			<input type="hidden" name="num" value="${dto.num}" /> 
			<input type="hidden" name="currentPage" value="${currentPage}" /> 
			<input type="button" id="update" value="수정" /> 
			<input type="button" id="cancle" value="취소" />
			<input type="button" id="back" value="뒤로" />
		</div>	
	</form> 
 </div>




