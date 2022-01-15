<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "projectDao.reservDao, projectVO.reservVO, java.util.ArrayList" %>
    
<%
	reservDao dao = new reservDao();
	ArrayList<reservVO> list = dao.select();
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage-예매내역확인</title>


<!-- 부트스트랩 css 사용 --> 
<link rel="stylesheet" href="http://localhost:9000/Second_project/css/bootstrap.css">
<!-- 부트스트랩 js 사용 --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript" src="http://localhost:9000/Second_project/js/bootstrap.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">




<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>

</head>

<body>
		
	<div class="container">
			<h1>예매내역확인</h1>
			<table class="table table-striped" >
				<thead>
					<tr>
						<th scope="col">예매자</th>
						<th scope="col">입장권(소)<br>(20000)</th>
						<th scope="col">입장권(대)<br>(30000)</th>
						<th scope="col">자유이용권(소)<br>(40000)</th>
						<th scope="col">자유이용권(대)<br>(60000)</th>
						<th scope="col">결제금액</th>
						<th scope="col">예매날짜</th>
						<th scope="col">방문날짜</th>
					</tr>
				</thead>
				<tbody>
					<% for(reservVO vo : list){ %>
					<tr>
						<td><%= vo.getIid() %></td>
						<td><%= vo.getRss() %></td>
						<td><%= vo.getRsb() %></td>
						<td><%= vo.getRfs() %></td>
						<td><%= vo.getRfb() %></td>
						<td><%= vo.getTotal() %></td>
						<td><%= vo.getCdate() %></td>
						<td><%= vo.getRdate() %></td>
					</tr>
					<% } %>
				</tbody>
			</table>
			<hr/>
		<nav aria-label="Page navigation example">
		  <ul class="pagination justify-content-center">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
	</div>

</body>
</html>
