package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MessageDAO;
import model.MessageDTO;

/**
 * Servlet implementation class SendMessageServlet
 */
@WebServlet("/sendMessage")
public class SendMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet arrived");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		System.out.println("Message arraived doPost");
		String message_from = request.getParameter("messageFrom");
		String message_to = request.getParameter("messageTo");
		String message_body = request.getParameter("messageBody");
		
		MessageDAO msgdao = new MessageDAO();
		MessageDTO msgdto = new MessageDTO(message_from, message_to, message_body);
		int result = msgdao.insertMessageDTO(msgdto);
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/TeamSearch/teamsearch.jsp");
		rd.forward(request, response);
	}

}
