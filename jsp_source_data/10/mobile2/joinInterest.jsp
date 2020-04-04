<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQueryMobile.inc" %>

</head>
<body>

<section data-role="page">

	<!-- 1. 헤더 -->
	<header data-role="header" data-theme="b">
		<!-- 헤더 타이틀 -->
		<h1>회원등록</h1>
	</header> 

	<!-- 2. 본문 -->
	<section data-role="content"> 

		<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
		<%
		// 입력정보 한글 처리
		request.setCharacterEncoding("euc-kr");
		// 회원 관련 입력정보 추출
		String ID         = request.getParameter("ID");
		String name       = request.getParameter("name");
		String[] interest = request.getParameterValues("interest");
		%>
		
		<!-- 수정 부분: 시작 --> 		
		<%
		// DB 관련 객체
		Connection        conn  = null; 
		PreparedStatement pstmt = null;
		ResultSet         rs    = null;
		String            sql   = "";
		String            rst   = "success";
		String            msg   = "";
		%>

		<%
		try {
		%>
			<%
			// DB Open: MS SQL Server
			// JDBC Driver 로딩
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			// DB Open 
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=myDB;user=jsp;password=1234;"); 
			%>   	
		
			<%
			// 이미 등록된 아이디가 있는지 검사
			sql = "select * " + 
				  " from 회원 " + 
				  "where 회원ID   = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			
			// 등록된 아이디가 있는 경우          
			if (rs.next()) {
			
				rst = "중복아이디";
				msg = "이미 등록된 아이디입니다!";
				
			// 등록된 아이디가 아닌 경우          
			} else {
			
			    // 트랜잭션 내의 여러 테이블 수정을 위해 AutoCommit을 중지
			    conn.setAutoCommit(false);
			
				// 회원으로 등록 
				sql = "insert into 회원(회원ID, 성명, 등록일) " + 
					  " values (?, ?, getdate())";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, ID);
				pstmt.setString(2, name);
				pstmt.executeUpdate();
                %>
				
				<!-- 회원정보 출력 -->
				<h1><%= name %>(<%= ID %>)</h1>
				<%
				for(int i=0; i<interest.length; i++) {
				%>
				    <%
					// 회원의 관심분야 등록 
					sql = "insert into 회원관심분야(회원ID, 관심분야명) " + 
						  " values (?, ?)";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, ID);
					pstmt.setString(2, interest[i]);
					pstmt.executeUpdate();
				    %>
				
				    <!-- 회원정보(관심분야) 출력 -->
					<%= i %>, <%= interest[i] %><br>
				<%
				}
				
				// 여러 테이블 수정 시 에러가 없으면 commit 처리
				conn.commit();
				%>
				
            <%				
			} 
            %>			
		
		<%
		} catch(SQLException e) {
			// 여러 테이블 수정 시 에러가 있으면 rollback 처리
			conn.rollback();
		
			rst = "시스템에러";
			msg = e.getMessage();
			out.print("결과: " + rst + "<br>");
			out.print("내용: " + msg + "<br>");
		} finally {
			if(pstmt != null) 
			   pstmt.close();
			if(conn != null) 
				conn.close();
		}
		%>		
		<!-- 수정 부분: 끝 --> 
		
		<p align="center">
		<a href="joinInterestForm.jsp" data-role="button" data-inline="true" data-ajax="false">이전</a>
		</p>
		
	</section>

	<!-- 3. 푸터 -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>