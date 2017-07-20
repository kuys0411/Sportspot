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

import model.MessageDAO;
import model.MessageDTO;

/**
 * Servlet implementation class Mypage_messageloadServlet
 */
@WebServlet("/mypage/loadmessage")
public class Mypage_messageloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mypage_messageloadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String realID = (String)session.getAttribute("userID");
		MessageDAO mDAO = new MessageDAO();
		List<MessageDTO> messages = mDAO.getMessages(realID);
		
		request.setAttribute("messages", messages);
		System.out.println("before forward");
		System.out.println(messages.get(0).getMessageFrom());
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("mypage_message_result.jsp");
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
