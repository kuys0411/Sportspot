package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ReserveDAO;
import model.ReservePlaceDTO;



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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get으로 연결완료");
		
		String pid_temp = request.getParameter("pid");
		int pid = Integer.parseInt(pid_temp);
		
		//id로 전용 DAO, DTO를 생성하기
		
		ReserveDAO dao = new ReserveDAO();
		ReservePlaceDTO placeinfo = dao.selectplaceById(pid);
		System.out.println("test2:"+placeinfo);
		
		//
		String tmp_open= placeinfo.getPopen();
		String tmp_close = placeinfo.getPclose();
		
		String[] str_open = new String(tmp_open).split(":");
		String[] str_close = new String(tmp_close).split(":");
		
		int open= Integer.parseInt(str_open[0]);
		int close= Integer.parseInt(str_close[0]);
		
		System.out.println("open:"+open+" close:"+close);
		int loop_count = close-open+1;
		
		
		int[] time_info=new int[loop_count];
		for(int i=0; i<loop_count; i++){
			time_info[i]=open;
			open++;
			System.out.print(time_info[i]+" ");
		}
		
		
		request.setAttribute("placeinfo", placeinfo);
		request.setAttribute("open", open);
		request.setAttribute("loop_count", loop_count);
		request.setAttribute("time_info", time_info);
		
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
