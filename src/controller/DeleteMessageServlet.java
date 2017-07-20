package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MessageDAO;

/**
 * Servlet implementation class DeleteMessageServlet
 */
@WebServlet("/mypage/deleteMessage")
public class DeleteMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("deleteMEssageservlet");
		System.out.println("deleteMEssageservlet");

		System.out.println("deleteMEssageservlet");

		request.setCharacterEncoding("utf-8");
		String msgFrom = request.getParameter("messageFrom");
		String msgBody = request.getParameter("msgBody");
		HttpSession session = request.getSession();
		String msgTo = (String)session.getAttribute("userID");
		
		MessageDAO dao = new MessageDAO();
		int result = dao.deleteMessage(msgTo, msgFrom, msgBody);
		System.out.println("after delete message dopost # : " + result);
	}

}
