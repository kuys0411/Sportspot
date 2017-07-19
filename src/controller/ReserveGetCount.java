package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ReserveDAO;
import model.ReservePlaceDTO;

/**
 * Servlet implementation class ReserveServletAjax
 */
@WebServlet("/countget")
public class ReserveGetCount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReserveGetCount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("reserve get count(get)");
		
		//pid 전달, 달력날짜 전달
		
		
		String pid_temp = request.getParameter("sel_pid");
		int pid = Integer.parseInt(pid_temp);
		
		String dt=request.getParameter("sel_date");
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		Date sql_date = null;
		try {
			java.util.Date hire = sd.parse(dt);
			sql_date = new Date(hire.getTime()); //long값 hire을 바꾼 뒤 sql Date 생성자에 넣으면 바뀜.
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*ReserveDAO dao = new ReserveDAO();
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
		
		//int sel = dao.selectCount_sql(pid, bstartTime, date);
		int[] count_info = new int[loop_count];
		String bstartTime="";
		int sel=0;
		
		Date sql_date = null;
		String dt=request.getParameter("sel_date");
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
		request.setAttribute("count_info", count_info);*/
		
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/search/countget.jsp");
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
