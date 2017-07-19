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
		
		HttpSession session = request.getSession(); //세션 얻어오기 
		
		String dt= request.getParameter("select_date"); //선택날짜 
		Date date = DateUtil.toSqlDate(dt);
	
		String cnt = request.getParameter("sel_count"); //선택인원
		int bnum = Integer.parseInt(cnt);
		
		String id= request.getParameter("sel_pid"); //place id 
		int pid = Integer.parseInt(id);
		
		/*String time= request.getParameter("time");
		int bstartTime= Integer.parseInt(time);*/
		
		request.setCharacterEncoding("utf-8");
		String place = request.getParameter("sel_place");
		System.out.println("place출력:"+place); 
		
		String mid = null;
		if((String)session.getAttribute("userID") != null){ //회원 id 
			mid = (String)session.getAttribute("userID"); 
		}
		
		System.out.println("user id 출력:"+ mid);
		System.out.println("place id출력:"+pid);
		System.out.println("date출력:"+ date);
		System.out.println("count출력:"+ bnum);
		//System.out.println("time출력:" +bstartTime);
		
		/*PlaceDAO dao = new PlaceDAO();
		List<PlaceDTO> placelist = dao.selectAll();
		request.setAttribute("placelist", placelist);*/
		
		
		//ReserveDAO dao = new ReserveDAO();
		//ReserveBookingDTO bookinfo = new ReserveBookingDTO(mid, pid, date, bnum, bstartTime);
		//ReserveBookingDTO reserveinfo= dao.bookInsert(bookinfo);
		
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/search/reservecomplete.jsp");
		rd.forward(request, response);
	}

	
}



