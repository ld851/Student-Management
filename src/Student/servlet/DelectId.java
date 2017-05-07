package Student.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Student.bean.Student;

public class DelectId extends HttpServlet {
	/**
	 * @param request servlet request
	 * @param response servlet response
	 */
	protected void processRequest(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		/*String name=Student.QueryId(id).getName();
		String sql="delete from students where id='"+id+"'";*/
		
		
		out.println("<br><hr><center><font size=10><B>");
		try{//获取学生姓名
			String name=Student.QueryId(id).getName();
			//System.out.println(name);
			String sql="delete from students where name='"+name+"'";
			if(Student.delete(name, sql))
				out.println("删除成功");
		}catch(Exception e){
		out.println(e.getMessage());
		return;
		}
		out.println("<input type=\"button\" style=\"width:100px;height:100px\" value=\"确  认\" onclick=\"window.location='index.jsp'\"><br>");
		out.println("</B></font></center>");
		out.close();		
	}

	/**
	 * Constructor of the object.
	 */
	public DelectId() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
