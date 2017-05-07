<%@page language="java" contentType="text/html;charset=utf-8" 
import="Student.bean.*" pageEncoding="utf-8"%>
<%request.setCharacterEncoding("UTF-8");
String action=request.getParameter("action");
if(action!=null&&action.equals("login")){
String name=request.getParameter("name");
String sex=request.getParameter("sex");
String age=request.getParameter("age");
String tel=request.getParameter("tel");
String QQ=request.getParameter("qq");
String sql="INSERT INTO students (id,name,sex,age,tel,qq) " 
                    +"VALUES (null,'"+name+"','"+sex+"','"+age+"','"+tel+"','"+QQ+"')";
Student s=new Student();
try{
//检查学生是否存在
if(Student.insert(name,sql))
s.setAge(age);
s.setQQ(QQ);
s.setName(name);
s.setSex(sex);
s.setTel(tel);
//将学生信息保存到session中
session.setAttribute("student",s);
response.sendRedirect("Confirm.jsp");
return;
}catch(Exception e){
out.println(e.getMessage());
return;
}


}

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    
    
    <title>插入学生记录</title>
    

	<meta http-equiv="Content-Type" content="text/html;charset=GB18030">

  </head>
  
  <body>
<form action="MyJsp.jsp" method="post">
	<input type="hidden" name="action" value="login"/>
	<table border="1" align="center">
	<tr>
	
	<td>学生姓名:</td>
	<td><input type="text" size="10" name="name" /></td>
	</tr>
	<tr>
	<td>性别:</td>
	<td><input type="text" size="10" name="sex"/></td>
	</tr>
	<tr>
	<td>年龄:</td>
	<td><input type="text" size="10" name="age" /></td>
	</tr>
	<tr>
	<td>电话:</td>
	<td><input type="text" size="20" name="tel"/></td>
	</tr>
	<tr>
	<td>QQ:</td>
	<td><input type="text" size="20" name="qq"/></td>
	</tr>
	<tr>
	<td></td>

	<td><input type="submit" value="添加"/>
	<input type="reset" value="重置"></td>
	</tr>
	</table>
	</form>
  </body>
</html>

