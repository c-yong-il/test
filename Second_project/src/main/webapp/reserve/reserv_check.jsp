<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import = "projectDao.reservDao,projectVO.reservVO" %>
    

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="projectVO.reservVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>


<!-- 부트스트랩 css 사용 --> 
<link rel="stylesheet" href="http://localhost:9000/Second_project/css/bootstrap.css">
<!-- 부트스트랩 js 사용 --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="http://localhost:9000/Second_project/js/bootstrap.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">


<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/Second_project/css/reserv.css">


</head>


<body>

<div id="all" class="all">
		<form name="reserv_checkForm" action="reserv_kakao.jsp" method="post">
		
		<ul>
			<li>
				<label class="label_style">방문날짜</label>
				<input type="text" class="form-control" id="rdate" name="rdate" value="<%= vo.getRdate() %>" readonly>
			</li>
			<li>
				<label class="label_style">입장권(소인)</label>
				<input type="text" class="form-control" id="num1" name="num1" value="<%= vo.getNum1() %>" readonly>
			</li>
			<li>
				<label class="label_style">입장권(대인)</label>
				<input type="text" class="form-control" id="num2" name="num2" value="<%= vo.getNum2() %>" readonly>
			</li>
			<li>
				<label class="label_style">자유이용권(소인)</label>
				<input type="text" class="form-control" id="num3" name="num3" value="<%= vo.getNum3() %>" readonly>
			</li>
			<li>
				<label class="label_style">자유이용권(대인)</label>
				<input type="text" class="form-control" id="num4" name="num4" value="<%= vo.getNum4() %>" readonly>
			</li>
			<li>
				<label class="label_style">총 가격</label>
				<input type="text" class="form-control" name="total" id="total" value="<%= vo.getTotal() %>" readonly>
			</li>
			<li>
				<input type="submit" class="btn btn-outline-primary" value="결제하기">
				<input type="button" class="btn btn-outline-primary" value="취소" onclick="location='reserv.jsp'">
			</li>
		</ul>
		
		</form>
</div>


</body>
</html>

