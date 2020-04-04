<%
// 세션 설정
session.setAttribute("ID",   "hong");
session.setAttribute("name", "홍길동");

// 다른 페이지로 이동
response.sendRedirect("index.jsp");
%>

