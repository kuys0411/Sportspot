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
import model.BookInfoDTO_SSH;
import model.MyPageDAO;

/**
 * Servlet implementation class showBookInfoServlet
 */
@WebServlet("/bookinfo")
public class showBookInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showBookInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberID = "user1";
		MyPageDAO dao = new MyPageDAO();
		List<BookInfoDTO_SSH> booklist = new ArrayList<BookInfoDTO_SSH>();
		booklist = dao.select_bookinfo_BY_ID(memberID);
		System.out.println("applist size :"+ booklist.size());
		request.setAttribute("booklist", booklist);
		RequestDispatcher rd = request.getRequestDispatcher("mypage_book_main.jsp");
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
