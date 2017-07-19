package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		System.out.println();
		System.out.println("reserve complete(post)2");
		 
		HttpSession session = request.getSession();
		
		
		String dt= request.getParameter("select_date");
		System.out.println("date출력:"+ dt);
		Date select_date = DateUtil.toSqlDate(dt);
		
		System.out.println("date출력:"+ select_date);
		
		
		
		String userid = null;
		request.setCharacterEncoding("utf-8");
		if((String)session.getAttribute("userID") != null){
			userid = (String)session.getAttribute("userID"); //id얻기 
		}
		
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/search/reservecomplete.jsp");
		rd.forward(request, response);
	}

	
}



