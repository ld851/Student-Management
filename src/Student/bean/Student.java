package Student.bean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Student.Connect.DB;


public class Student {
private int id;
private String name;
private String sex;
private String age;
private String tel;
private String qq;
public int getId(){
	return id;
}
public void setId(int id){
	this.id=id;
}
public String getSex(){
	return sex;
}
public void setSex(String sex){
	this.sex=sex;
}
public String getAge(){
	return age;
}
public void setAge(String age){
	this.age=age;
}
public String getTel(){
	return tel;
}
public void setTel(String tel){
	this.tel=tel;
	}
public String getQQ(){
	return qq;
}
public void setQQ(String qq){
	this.qq=qq;
}
public String getName(){
	return name;
}
public void setName(String name){
	this.name=name;
}

public static List<Student> query() throws Exception
{
	List<Student> list = new ArrayList<Student>();
	
	Connection conn=DB.getConn();
	String sql="select * from students";
	Statement stmt=DB.getStatement(conn);
	ResultSet rs=DB.getResultSet(stmt, sql);
	
	while(rs.next())
	{
		int id = rs.getInt(1);
		String name = rs.getString(2);
		String sex = rs.getString(3);
		String age = rs.getString(4);
		String tel = rs.getString(5);
		String qq = rs.getString(6);
		
		Student student = new Student();
		student.setId(id);
		student.setName(name);
		student.setSex(sex);
		student.setAge(age);
		student.setTel(tel);
		student.setQQ(qq);
		
		list.add(student);
	}
	
	
	
	return list;
}

public static Student Query(String name)throws Exception{
	Student s=null;
	Connection conn=DB.getConn();
	String sql="select * from students where name='"+name+"'";
	Statement stmt=DB.getStatement(conn);
	ResultSet rs=DB.getResultSet(stmt, sql);
	try{
		if(!rs.next()){
			throw new Exception("学生不存在"+name);
		}
			s=new Student();
			s.setId(rs.getInt("id"));
			s.setName(rs.getString("name"));
			s.setSex(rs.getString("sex"));
			s.setAge(rs.getString("age"));
			s.setTel(rs.getString("tel"));
			s.setQQ(rs.getString("qq"));
	}catch(SQLException e){e.printStackTrace();}
	finally{
		DB.close(rs);
		DB.close(stmt);
		DB.close(conn);
	}
	return s;
}
public static Student QueryId(String id)throws Exception{
	Student s=null;
	Connection conn=DB.getConn();
	String sql="select * from students where id='"+id+"'";
	Statement stmt=DB.getStatement(conn);
	ResultSet rs=DB.getResultSet(stmt, sql);
	try{
		if(!rs.next()){
			throw new Exception("学生不存在");
		}
			s=new Student();
			s.setId(rs.getInt("id"));
			s.setName(rs.getString("name"));
			s.setSex(rs.getString("sex"));
			s.setAge(rs.getString("age"));
			s.setTel(rs.getString("tel"));
			s.setQQ(rs.getString("qq"));
	}catch(SQLException e){e.printStackTrace();}
	finally{
		DB.close(rs);
		DB.close(stmt);
		DB.close(conn);
	}
	return s;
}
public static boolean insert(String name,String sql)throws Exception{
	//System.out.println(name);
	Connection conn=DB.getConn();
	String a="select * from students where name='"+name+"'";
	Statement stmt=DB.getStatement(conn);
	ResultSet rs=DB.getResultSet(stmt, a);
	try{
		if(rs.next()){
			throw new Exception("学生已存在"+name);
		}
		else{
			if(stmt!=null)
				stmt.executeUpdate(sql);
		
		}
	}catch(SQLException e){e.printStackTrace();}
	finally{
		DB.close(rs);
		DB.close(stmt);
		DB.close(conn);
	}
	return true;
}
public static boolean update(String sql)throws Exception{
	Connection conn=DB.getConn();
	Statement stmt=DB.getStatement(conn);
		try{
			if(stmt!=null)
				stmt.executeUpdate(sql);
	}catch(SQLException e){e.printStackTrace();}
	finally{
		DB.close(stmt);
		DB.close(conn);
	}
	return true;
}
public static boolean delete(String name,String sql)throws Exception{
	Connection conn=DB.getConn();
	String a="select * from students where name='"+name+"'";
	Statement stmt=DB.getStatement(conn);
	ResultSet rs=DB.getResultSet(stmt, a);
	try{
		if(!rs.next()){
			throw new Exception("学生不存在"+name);
		}
		else{
			if(stmt!=null)
				stmt.executeUpdate(sql);
			
			}
	}catch(SQLException e){e.printStackTrace();}
	finally{
		DB.close(rs);
		DB.close(stmt);
		DB.close(conn);
}
	return true;
}
}
