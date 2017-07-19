package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.el.ResourceBundleELResolver;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.PlaceDAO;
import model.PlaceDTO;
import model.ReserveBookingDTO;
import model.ReserveDAO;
import util.DateUtil;

/**
 * Servlet implementation class ReserveComplete
 */
@WebServlet("/ReserveComplete")
public class ReserveComplete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReserveComplete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("reserve complete(get)");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); //���� ������ 
		
		String dt= request.getParameter("select_date"); //���ó�¥ 
		Date date = DateUtil.toSqlDate(dt);
	
		String cnt = request.getParameter("sel_count"); //�����ο�
		int bnum = Integer.parseInt(cnt);
		
		String id= request.getParameter("sel_pid"); //place id 
		int pid = Integer.parseInt(id);
		
		String bstartTime= request.getParameter("select_time");
		int revise_time= Integer.parseInt(bstartTime);
		
		
		String place = request.getParameter("sel_place");
		System.out.println("place���:"+place); 
		
		String mid = null;
		if((String)session.getAttribute("userID") != null){ //ȸ�� id 
			mid = (String)session.getAttribute("userID"); 
		}
		
		ReserveDAO dao = new ReserveDAO();
		ReserveBookingDTO bookinfo = new ReserveBookingDTO(mid, pid, date, bnum, bstartTime);
		dao.bookInsert(bookinfo);
		
		String time="";
		if(revise_time>=6 && revise_time<=11) {
			time="���� ";
		}
		time+=revise_time;
		
		//��¥, ���, ����ð�, �ο� 
		request.setAttribute("date", date);
		request.setAttribute("place", place);
		request.setAttribute("time", time);
		request.setAttribute("bnum", bnum);
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/search/reservecomplete.jsp");
		rd.forward(request, response);
	}

	
}



