<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- 페이지가 이동되는 코드?, 스크립트를 이용한다. jquery 라이브러리 등록 필요. -->

<!-- 버튼 눌렀을 때  list.do로 이동 -->
<script>
$(document).ready(function() {
	  $('#btnList').click(function() {
	    $('#frm').attr('action', 'list.do');
	    $('#frm').submit();
	  });

	  $('#btnSave').click(function() {
	    // Validate review title and content fields
	    var reviewTitle = $('[name=review_title]').val().trim();
	    var reviewContent = $('[name=review_content]').val().trim();
	    if (!reviewTitle || !reviewContent) {
	      alert('제목과 내용을 작성해주세요.');
	      return;
	    }

	    // Replace newlines with <br> tags in review content
	    $('[name=review_content]').val(reviewContent.replace(/\n/gi, '<br/>'));

	    $('#frm').attr('action', 'write.do').submit();
	  });

	  $('#filepath').change(function() {
	    console.log(this.files[0].size);
	    if (this.files[0].size > 1000000000) {
	      alert('You can attach less than 1 GB.');
	      $('#filepath').val('');
	      return false;
	    }
	  });
	});

</script>


<div class="container">
	<!-- 첨부파일이 있는 글쓰기면 반드시 post타입이랑 multipart/form-data 형식이여야 한다. -->
	<form name="frm" id="frm" method="post" enctype="multipart/form-data">

		<table class="table  table-bordere mt-1">

			<tr>
				<td width="20%" align="center">작성자</td>
				<td><input type="hidden" name="email"
					value="${sessionScope.authInfo.email}" /> <!-- 이 값이 보드에 저장이 된다. -->
					<input type="text" name="easyuser_name" size="30" maxlength="30"
					readonly="readonly" value="${sessionScope.authInfo.easyuser_name}" /></td>
			</tr>

			<!-- ref가 제목글이면 0, 제목글이 아니면 0이 아닌 값으로 넘어온다. -->
			<tr>
				<td width="20%" align="center">제목</td>
				<td><input type="text" name="review_title" size="40" /></td>
			</tr>

			<tr>
				<td width="20%" align="center">내용</td>
				<td><textarea name="review_content" rows="13"
						style="width: 100%"></textarea></td>
			</tr>

			<tr>
				<td width="20%" align="center">첨부파일</td>
				<td><input type="file" name="reviewFilename" id="filepath" />
			</tr>
		</table>
		<!-- 답변글일때.... -->

		<div class="text-center mt-5 mb-5">
			<input type="button" id="btnList" value="리스트" /> <input
				type="button" id="btnSave" value="저장" />
		</div>
	</form>
</div>


