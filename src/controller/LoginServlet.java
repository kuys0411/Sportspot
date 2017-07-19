package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LoginDAO;
import model.LoginDTO;

/**
 * Servlet implementation class SignInServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String password  = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher rd;
		LoginDTO loginDTO = new LoginDTO(id, password);
		LoginDAO dao = new LoginDAO();
		int result = dao.checkMember(loginDTO);
		request.setAttribute("loginCheckResult", result);
		if(result == 1) {
			session.setAttribute("userID", id);
			rd = request.getRequestDispatcher("index.jsp");
		}
		else {
			rd = request.getRequestDispatcher("login.jsp");
		}
		rd.forward(request, response);
	}

}
