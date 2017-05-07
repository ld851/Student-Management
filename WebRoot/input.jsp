<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");
String a=null,b=null;//所更改的属性项
int x =Integer.parseInt(request.getParameter("menu"));
switch(x){
case 1:{a="姓名";b="name";}break;
case 2:{a="性别";b="sex";}break;
case 3:{a="年龄";b="age";}break;
case 4:{a="电话";b="tel";}break;
case 5:{a="QQ";b="qq";}break;
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'input.jsp' starting page</title>
	
  </head>
  
  <body><form action="<%=request.getContextPath() %>/UpdateServlet" method="post">
	<input type="hidden" name="shuxing" value="<%=b%>"/>
	<input type="hidden" name="id" value="<%=String.valueOf(request.getParameter("id"))%>"/>
    <table border="1" align="center">
	<tr>
	<td><%=a%></td>
	<td><input type="text" size="10" name="value" /></td>
	</tr>
	<tr>
	<td></td>
	<td><input type="submit" value="确定"/>
	<input type="reset" value="重置"></td>
	</tr>
	</table>
	</form>
  </body>
</html>
