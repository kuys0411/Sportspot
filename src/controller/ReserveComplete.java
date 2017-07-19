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

import model.BookingPlaceDTO;
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
		HttpSession session = request.getSession(); //세션 얻어오기 
		
		String dt= request.getParameter("select_date"); //선택날짜 
		Date date = DateUtil.toSqlDate(dt);
	
		String cnt = request.getParameter("sel_count"); //선택인원
		int bnum = Integer.parseInt(cnt);
		
		String id= request.getParameter("sel_pid"); //place id 
		int pid = Integer.parseInt(id);
		
		String bstartTime= request.getParameter("select_time");
		int revise_time= Integer.parseInt(bstartTime);
		
		String place = request.getParameter("sel_place");
		System.out.println("place출력:"+place); 
		
		String mid = null;
		if((String)session.getAttribute("userID") != null){ //회원 id 
			mid = (String)session.getAttribute("userID"); 
		}
		
		//Booking member table 
		ReserveDAO dao = new ReserveDAO();
		ReserveBookingDTO bookinfo = new ReserveBookingDTO(mid, pid, date, bnum, bstartTime);
		dao.bookInsert(bookinfo);
		
		//BookingPlace table
		
		//3가지 컬럼으로 있는지 없는지 확인하기
		int sel = dao.selectCount_sql(pid, bstartTime, date);
		System.out.println("인원 수:"+sel);
		
		if(sel==0) { //튜플이 없으면 select문 수행  
			BookingPlaceDTO bookplace= new BookingPlaceDTO(pid, bstartTime, date, bnum); //없는 경우 바로 insert
			dao.ins_bookingPlace_sql(bookplace);
		}
		else { //존재하는 튜플이 있으면 update문 수행 (카운트 덧셈)
			dao.update_booking(bnum, pid, bstartTime, date);
		}
		
		String time="";
		if(revise_time>=6 && revise_time<=11) {
			time="오전 ";
		}
		time+=revise_time;
		
		//날짜, 장소, 예약시간, 인원 
		request.setAttribute("date", date);
		request.setAttribute("place", place);
		request.setAttribute("time", time);
		request.setAttribute("bnum", bnum);
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/search/reservecomplete.jsp");
		rd.forward(request, response);
	}

}



