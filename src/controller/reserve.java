package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.*;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ReserveDAO;
import model.ReservePlaceDTO;

import java.util.Calendar;




/**
 * Servlet implementation class reserve
 */
	@WebServlet("/reserve")
	public class reserve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reserve() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pid_temp = request.getParameter("pid");
		int pid = Integer.parseInt(pid_temp);
		
		//id로 전용 DAO, DTO를 생성하기
		ReserveDAO dao = new ReserveDAO();
		ReservePlaceDTO placeinfo = dao.selectplaceById(pid);
		
		String tmp_open= placeinfo.getPopen();
		String tmp_close = placeinfo.getPclose();
		
		String[] str_open = new String(tmp_open).split(":");
		String[] str_close = new String(tmp_close).split(":");
		
		int open= Integer.parseInt(str_open[0]);
		int close= Integer.parseInt(str_close[0]);
		
		
		int loop_count = close-open+1;
		
		int[] time_info=new int[loop_count];
		for(int i=0; i<loop_count; i++){
			time_info[i]=open;
			open++;
		}
		
		int[] count_info = new int[loop_count];
		String bstartTime="";
		int sel=0;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c1 = Calendar.getInstance();
        String dt = sdf.format(c1.getTime()); //현재 날짜 
        System.out.println(dt);
        
		Date sql_date = null;
		
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		try {
			java.util.Date hire = sd.parse(dt);
			sql_date = new Date(hire.getTime()); //long값 hire을 바꾼 뒤 sql Date 생성자에 넣으면 바뀜.
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for(int i=0; i<loop_count; i++) {
			bstartTime=String.valueOf(time_info[i]);
			sel=dao.selectCount_sql(pid, bstartTime, sql_date);
			count_info[i]=sel;
			System.out.print(count_info[i]+" ");
		}System.out.println();
		
		
		request.setAttribute("placeinfo", placeinfo);
		request.setAttribute("open", open);
		request.setAttribute("loop_count", loop_count);
		request.setAttribute("time_info", time_info);
		request.setAttribute("count_info", count_info);
		
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/search/reserve.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
