<%@ page language="java" contentType="text/html;charset=utf-8" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Student.bean.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>学生信息管理</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <h1 align="center">学生信息管理</h1>
  <hr color="red" align="center" width="100%">
  <center>
    <input type="button" value="添加学生记录" onclick="window.location='MyJsp.jsp'"><br>
    <input type="button" value="删除学生记录" onclick="window.location='Delect.jsp'"><br>
    <input type="button" value="查询学生记录" onclick="window.location='Query.jsp'"><br>
 
 <%
 	List<Student> list = Student.query();
 	out.println("<table border='1'>");
 	for(Student stu : list)
 	{
 		out.print("<tr>");
 		
 		out.print("<td>"+stu.getName()+"</td>");
 		out.print("<td>"+stu.getSex()+"</td>");
 		out.print("<td>"+stu.getAge()+"</td>");
 		out.print("<td>"+stu.getTel()+"</td>");
 		out.print("<td>"+stu.getQQ()+"</td>");
 		
 		out.print("<td><a href='DelectId?id="+stu.getId()+"'>删除</a></td>");
 		out.print("<td><a href='Update.jsp?id="+stu.getId()+"'>更改</a></td>");
 			
 		out.print("</tr>");
 	}
 	
 	out.println("</table>");
  %>
  </center>
  </body>
</html>
