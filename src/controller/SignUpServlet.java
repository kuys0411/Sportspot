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
import model.MemberDTO;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
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

		MemberDTO memDTO = new MemberDTO();
		memDTO = makeMemberDTO(request);
		MemberDAO dao = new MemberDAO();
		int result2 = dao.checkMember2(memDTO);
		int message;
		//�ߺ� �ƴ� ���̵�
		if(result2!=1){
			System.out.println("�ߺ��ƴ�");
			int result = dao.memberInsert(memDTO);
			message = result > 0 ?1 : 0;
			request.setAttribute("msg", message);	
			HttpSession session = request.getSession();
			session.setAttribute("userID", request.getParameter("ID"));
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
		}
		//�ߺ� ��
		else{
			System.out.println("�ߺ���");
			message= 0;
			request.setAttribute("msg", message);	
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}
			
	}

	private MemberDTO makeMemberDTO(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String mid = request.getParameter("ID");
		String mname = request.getParameter("Name");
		String memail = request.getParameter("mail");
		String mpwd = request.getParameter("Password");
		String msex = request.getParameter("sex");
		String minterest = request.getParameter("interest");
		
		MemberDTO memDTO = new MemberDTO(mid, mpwd, mname, msex, memail, minterest);
		return memDTO;
	}

}
