<%@page language="java" contentType="text/html;charset=GB18030" import="java.util.*" pageEncoding="GB18030"%>
<%@page import="Student.bean.*"%>
<%
Student s=(Student)session.getAttribute("student");//获取session
if(s==null){response.sendRedirect("Query.jsp");
return;}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html;charset=GB18030">
    <title>最后确认</title>
  </head>
  
  <body>
  <center>
  <h2 ><font color=red size=12>插入成功！</font></h2></center>
    <table align="center" border="1">
    <tr>
    <td colspan=5>
    <form action="index.jsp" method="post">
    姓名：<%=s.getName()%><br>
    性别:<%=s.getSex() %><br>
    年龄:<%=s.getAge() %><br>
    电话：<%=s.getTel() %><br>
    qq：<%=s.getQQ() %><br>
    <input type="submit" value="确认">
    </form>
    </td>
    </tr>
    </table>
  </body>
</html>

