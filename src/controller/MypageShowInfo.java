package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BookInfoDTO_SSH;
import model.MyPageDAO;

/**
 * Servlet implementation class MypageShowInfo
 */
@WebServlet("/mypage/mypageShowInfo")
public class MypageShowInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberID = null;
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		if((String)session.getAttribute("userID") != null){
			memberID = (String)session.getAttribute("userID");
			System.out.println("print memberID : " + memberID);

			MyPageDAO dao = new MyPageDAO();
			List<BookInfoDTO_SSH> booklist = new ArrayList<BookInfoDTO_SSH>();
			booklist = dao.select_bookinfo_BY_ID(memberID);
			System.out.println("applist size :"+ booklist.size());
			request.setAttribute("booklist", booklist);
			RequestDispatcher rd = request.getRequestDispatcher("mypage_book_main.jsp");
			rd.forward(request, response);
		}
		else {
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
