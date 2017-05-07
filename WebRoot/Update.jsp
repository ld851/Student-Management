<%@page language="java" contentType="text/html;charset=utf-8" 
import="Student.bean.Student" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
Student s=Student.QueryId(id);
int num=s.getId();
 %>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>更新</title>
  </head>
  
  <body>
	<table border="1" align="center">
	<tr>
	<td><a href='input.jsp?menu=1&id=<%=num%>'>姓名</a></td>
	<td><a href='input.jsp?menu=2&id=<%=num%>'>性别</a></td>
	<td><a href='input.jsp?menu=3&id=<%=num%>'>年龄</a></td>
	<td><a href='input.jsp?menu=4&id=<%=num%>'>电话</a></td>
	<td><a href='input.jsp?menu=5&id=<%=num%>'>QQ</a></td>
	</tr>
	<tr>
	<td><%=s.getName() %></td>
	<td><%=s.getSex() %></td>
	<td><%=s.getAge() %></td>
	<td><%=s.getTel() %></td>
	<td><%=s.getQQ() %></td>
	</tr>
	</table>
  </body>
</html>
