package Servlet;

import java.sql.ResultSet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import DBBean.Bean;
/**
 * Servlet implementation class WriteServlet
 */
@WebServlet("/WriteServlet")
public class WriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		
		request.setCharacterEncoding("utf-8");
		
		String nr = request.getParameter("neirong").trim();
		String gg = request.getParameter("guige").trim();
		String type=request.getParameter("1");
		String psy = request.getParameter("peisongyuan").trim();
		psy=new String(psy.getBytes("ISO-8859-1"),"UTF-8");
		String c_ID="";
		
		int ID=1;
		String p_ID="";//寄件人，后期从session中获取
		String st="";//寄件时间，后期由相应方法获取当前日期时间
		String gt="";//送达时间，初值为-1，在系统后面的流程中补充
		String gpn="";//收件人姓名，	后期加在填写订单的页面中
		String pga="";//收件人地址，和上述一样（按照石家庄市分区进行下拉菜单选择）
		String dpj="";//
		String dpjxq="";//
		String ppj="";//
		String ppjxq="";//四个评价，设置初值，在系统后面的流程中补充
		
		Bean db=new Bean();
		Bean db1=new Bean();
		//查配送员ID
		String SQLselect="select * from tb_courier where c_name='"+psy+"'";
		
		ResultSet s = db.executeQuery(SQLselect);
		try
		{
			if(s.next())
			{
				c_ID=s.getString(1);
				/*String SQLinsert="insert into tb_order values ('"+ID+"','"
						+type+"','"+nr+"','"+gg+"','1','-1','-1','-1','"+c_ID+"','-1','-1','-1','-1','-1','-1')";*/
				String SQLinsert1="insert into order1(Des,UserID,Date,OrderState) values('"
						+nr+"','123456','20170115','"+type+"')";
				int i=db1.executeUpdate(SQLinsert1);
				if(i==1)
				{
					response.sendRedirect(basePath+"putong/showOK.jsp");
				}
				else
				{
					response.sendRedirect(basePath+"putong/showFail.jsp");
				}
			}
			else
			{
				//request.setAttribute("msg","没有此配送员!");
				//RequestDispatcher requestDispatcher = request.getRequestDispatcher("/putong/Write.jsp");
		        //requestDispatcher.forward(request,response);
		        //return;
//				out.println("<script language='javaScript'> alert('没有此配送员。');</script>");
				/*PrintWriter pw=response.getWriter();
			    pw.write("<script language='javascript'>alert('没有此配送员。')</script>");
			    response.sendRedirect(basePath+"putong/Write.jsp");*/
				JOptionPane.showMessageDialog(null, "没有此配送员。");
				response.sendRedirect(basePath+"putong/Write.jsp");
			}
		}
		catch(Exception e)
		{
			
		}
		
		 
	}

}
