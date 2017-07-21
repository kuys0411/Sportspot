package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MessageDAO;
import model.MessageDTO;

/**
 * Servlet implementation class SendMessageServlet2
 */
@WebServlet("/mypage/sendMessage")
public class SendMessageServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMessageServlet2() {
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
		request.setCharacterEncoding("utf-8");
		System.out.println("mypage replay message dopost arrived");
		String message_from = request.getParameter("messageFrom");
		String message_to = request.getParameter("messageTo");
		String message_body = request.getParameter("messageBody");

		MessageDAO msgdao = new MessageDAO();
		MessageDTO msgdto = new MessageDTO(message_from, message_to, message_body);
		int result = msgdao.insertMessageDTO(msgdto);
		
		
		
	}

}
