<%
// 입력정보 한글 처리
request.setCharacterEncoding("euc-kr");
// 입력정보(ID, 비밀번호) 추출
String ID   = request.getParameter("ID");
String pswd = request.getParameter("pswd");
%>

<%
// 세션 설정
session.setAttribute("ID",   ID);
session.setAttribute("name", "홍길동");

// 홈페이지로 이동
response.sendRedirect("index.jsp");
%>