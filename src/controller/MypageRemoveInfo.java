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
import model.MemberDAO;

/**
 * Servlet implementation class MypageRemoveInfo
 */
@WebServlet("/mypage/removeInfo")
public class MypageRemoveInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageRemoveInfo() {
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
		HttpSession session = request.getSession();
		
		String id = request.getParameter("userID");
		String password = request.getParameter("password");
		MemberDAO dao = new MemberDAO();
		LoginDTO loginDTO = new LoginDTO(id, password);
		LoginDAO logindao = new LoginDAO();
		int checkValidate = logindao.checkMember(loginDTO);
		if(checkValidate == 1) {
			dao.deleteMember(id);
			session.invalidate();
			request.setAttribute("result", checkValidate);
			RequestDispatcher rd = request.getRequestDispatcher("mypage_removeresult.jsp");
			rd.forward(request, response);
		}
		/*int result = dao.deleteMember(id);*/
/*		request.setAttribute("result", result);
*/		
		else {
			request.setAttribute("result", checkValidate);
			RequestDispatcher rd = request.getRequestDispatcher("mypage_memberout.jsp");
			rd.forward(request, response);
		}
		
	}

}
