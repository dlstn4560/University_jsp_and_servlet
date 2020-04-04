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

	<!-- 1. ��� -->
	<header data-role="header" data-theme="b">
		<!-- ��� Ÿ��Ʋ -->
		<h1>ȸ�����</h1>
	</header> 

	<!-- 2. ���� -->
	<section data-role="content"> 

		<!-- �������� ���� �� �Է� �Ű������� ���� -->
		<%
		// �Է����� �ѱ� ó��
		request.setCharacterEncoding("euc-kr");
		// ȸ�� ���� �Է����� ����
		String ID       = request.getParameter("ID");
		String name     = request.getParameter("name");
		String pswd     = request.getParameter("pswd");
		String gender   = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		%>
		
		<!-- ���� �κ�: ���� --> 		
		<%
		// DB ���� ��ü
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
			// JDBC Driver �ε�
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			// DB Open 
			conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databasename=myDB;user=jsp;password=1234;"); 
			%>   	
		
			<%
			// �̹� ��ϵ� ���̵� �ִ��� �˻�
			sql = "select * " + 
				  " from ȸ�� " + 
				  "where ȸ��ID   = ? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ID);
			rs = pstmt.executeQuery();
			
			// ��ϵ� ���̵� �ִ� ���          
			if (rs.next()) {
			
				rst = "�ߺ����̵�";
				msg = "�̹� ��ϵ� ���̵��Դϴ�!";
				
			// ��ϵ� ���̵� �ƴ� ���          
			} else {
			
				// ȸ������ ��� 
				sql = "insert into ȸ��(ȸ��ID, ����, ��й�ȣ, ����, ����, �����) values (?, ?, ?, ?, ?, getdate())";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, ID);
				pstmt.setString(2, name);
				pstmt.setString(3, pswd);
				pstmt.setString(4, gender);
				pstmt.setString(5, birthday);
				pstmt.executeUpdate();
				%>
				
				<!-- ȸ������ ��� -->
				<h1><%= name %>(<%= ID %>)</h1>
				��й�ȣ: <%= pswd %><br>
				����: <%= gender %><br>
				����: <%= birthday %><br>
				
			<%	
			} 
            %>
		
		<%
		} catch(SQLException e) {
			rst = "�ý��ۿ���";
			msg = e.getMessage();
			out.print("���: " + rst + "<br>");
			out.print("����: " + msg + "<br>");
		} finally {
			if(pstmt != null) 
			   pstmt.close();
			if(conn != null) 
				conn.close();
		}
		%>		
		<!-- ���� �κ�: �� --> 
		
		<%= rst %><br>
		<%= msg %><br>
		
		<p align="center">
		<a href="joinForm.jsp" data-role="button" data-inline="true" data-ajax="false">����</a>
		</p>

	</section>

	<!-- 3. Ǫ�� -->
	<footer data-role="footer" data-theme="a" data-position="fixed">
		<%@ include file="../../include/businessInfo.inc" %>
	</footer>

</section>
</body>
</html>