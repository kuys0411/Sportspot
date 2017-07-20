package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MyPageDAO;

/**
 * Servlet implementation class MypageRemoveBookInfo
 */
@WebServlet("/mypage/removeBookInfo")
public class MypageRemoveBookInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageRemoveBookInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("removeBookinfo get start");
		String bidString = request.getParameter("bID");
		
		int bID = Integer.parseInt(bidString);
		HttpSession session = request.getSession();
		String mID = (String)session.getAttribute("userID");
		MyPageDAO mypagedao = new MyPageDAO();
		int result = mypagedao.deleteBookInfo(bID, mID);
		if(result == 1) {
			request.setAttribute("bid", bID);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/mypage/mypageShowInfo");
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
