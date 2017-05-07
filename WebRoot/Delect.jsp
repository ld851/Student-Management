<%@ page language="java" contentType="text/html;charset=utf-8"
import="java.util.*" import="Student.bean.Student" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'Delect.jsp' starting page</title>
    
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	

  </head>
  
  <body>
  <form action="<%=request.getContextPath() %>/DeleteServlet" method="post">
	<input type="hidden" name="action" value="login"/>
	<table border="1" align="center">
	<tr>
	<td>学生姓名:</td>
	<td><input type="text" size="10" name="name" /></td>
	</tr>
	<tr>
	<td></td>
	<td><input type="submit" value="删除"/>
	<input type="reset" value="重置"></td>
	</tr>
	</table>
	</form>
  </body>
</html>
