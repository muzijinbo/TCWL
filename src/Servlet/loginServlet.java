package Servlet;

import java.sql.ResultSet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import DBBean.Bean;
/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
/*    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }*/

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
//		request.setAttribute("msg","!");
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		
		request.setCharacterEncoding("utf-8");
		
		String user = request.getParameter("user").trim();
		String paw = request.getParameter("paw").trim();
		
		Bean db=new Bean();
		Bean db1=new Bean();
		Bean db2=new Bean();
		String SQLselect ="select * from tb_user where username='"+user+"'";
		ResultSet s = db.executeQuery(SQLselect);
		
		try
		{
			if(s.next())
			{
				String Id=s.getString(1);
//				session.setAttribute("Id"，s.getString(1));
				if(s.getString(3).equals(paw))
				{
					String SQLselect1="select * from tb_pt where p_ID='"+s.getString(1)+"'";
					ResultSet s1 = db.executeQuery(SQLselect1);
					if(s1.next())
					{
						
						response.sendRedirect(basePath+"main/main.jsp?Id="+Id);
					}
					else
					{
						response.sendRedirect(basePath+"main/zhiyuan.jsp?Id="+Id);//未加判断代码
					}
					
				}
				else
				{
					JOptionPane.showMessageDialog(null, "密码不正确，重新登录。");
					response.sendRedirect(basePath+"login/login.jsp");
				}
			}
			else
			{
				JOptionPane.showMessageDialog(null, "账号不存在，重新登录。");
				response.sendRedirect(basePath+"login/login.jsp");
			}
		}
		catch(Exception e){}
	}

}
