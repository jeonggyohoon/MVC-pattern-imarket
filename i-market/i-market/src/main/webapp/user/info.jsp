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
		
		String user_id = (String)session.getAttribute("user_id");
		WebMemberDTO dto = new WebMemberDTO(user_id);
		WebMemberDAO dao = new WebMemberDAO();
		WebMemberDTO profile=  dao.selectMeMember(dto);
		System.out.print(profile);
	%>
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
						<table>
							<caption><h2>회원 정보</h2></caption>
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
							<tr>
								<td>아이디 : <%=profile.getUser_id()  %></td>
								<td>닉네임 : <%=profile.getUser_nick() %></td>
								<td>전화번호 : <%=profile.getUser_phone() %></td>
								<td>주소 : <%=profile.getUser_addr() %></td>
								<%if(profile.getUser_profile() == null) { %>
								<td>사진이 등록 되지 않았습니다</td>
								<%} else{%>
								<td><%=profile.getUser_profile() %>
								<%} %>
								<td>가입 날짜 : <%=profile.getUser_joindate() %></td>
								<!-- 쿼리스트링 방식 : url?name=value&name=value -->
								<td><a href="update.jsp?id=<%=profile.getUser_id()  %>" class="button next scrolly">개인 정보 수정</a>	</td>	
							</tr>
						</table>
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
