<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.main.model.WebMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body style="text-align: center;">
	
	<%
		WebMemberDAO dao = new WebMemberDAO();
		List<WebMemberDTO> list =  dao.selectAllMember();
		System.out.print(list.get(0));
	%>
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<table>
							<caption><h2>회원관리페이지</h2></caption>
							<!-- 2.모든 회원의 이메일(email),전화번호(tel),주소(address)를 출력하시오. -->
							<%-- <%for (int i = 0; i < list.size(); i++){ %>
							<tr>
								<td><%=list.get(i).getEmail()  %></td>
								<td><%=list.get(i).getTel() %></td>
								<td><%=list.get(i).getAddress() %></td>
								<!-- 쿼리스트링 방식 : url?name=value&name=value -->
								<td><a href="DeleteService?name=<%list.get(i).getEmail(); %>">삭제</a></td>							
							</tr>
							<%} %> --%>
							<%for (WebMemberDTO l : list){ %>
							<tr>
								<td><%=l.getUser_id()  %></td>
								<td><%=l.getUser_nick() %></td>
								<td><%=l.getUser_phone() %></td>
								<td><%=l.getUser_addr() %></td>
								<!-- 쿼리스트링 방식 : url?name=value&name=value -->
								<td><a href="Delete?user_id=<%=l.getUser_id()%>">삭제</a></td>							
							</tr>
							<%} %>
						</table>
					</nav>		
					<a href="main.jsp" class="button next scrolly">되돌아가기</a>	
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>

