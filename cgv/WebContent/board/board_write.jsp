<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV-게시판</title>
<link href="http://localhost:9000/cgv/css/cgv.css" rel="stylesheet">
<script src="http://localhost:9000/cgv/js/cgv.js"></script>
</head>
<body>
	<!-- header start -->
	<iframe src="http://localhost:9000/cgv/header.jsp" scrolling="no" frameborder="0" width="100%" height="150px"></iframe>
	
	<div class="content">
		<section class="login">
			<h1>게시판</h1>
			<form name="boardForm" action="board_write_proc.jsp" method="post">
				<table class="board_write">
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="btitle" id="btitle">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
						<textarea name="bcontent"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="button" class="btn_style3" onclick="boardFormCheck()">등록완료</button>
							<button type="reset" class="btn_style3">다시쓰기</button>
							<a href="board_list.jsp">
								<button type="button" class="btn_style3">리스트</button>
							</a>
							<a href="http://localhost:9000/cgv/main.jsp">
								<button type="button" class="btn_style3">홈으로</button>
							</a>
						</td>
					</tr>
				</table>
			</form>			
		</section>
	</div>
	
	<!-- footer start -->
	<iframe src="http://localhost:9000/cgv/footer.jsp" scrolling="no" frameborder="0" width="100%" height="500px"></iframe>

</body>
</html>









