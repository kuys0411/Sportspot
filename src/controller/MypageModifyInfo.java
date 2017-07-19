package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

/**
 * Servlet implementation class MypageModifyInfo
 */
@WebServlet("/userInfoModify")
public class MypageModifyInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageModifyInfo() {
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
		MemberDTO memdto = makeMemberDTO(request);
		MemberDAO dao = new MemberDAO();
		HttpSession session = request.getSession();
		String realID = (String)session.getAttribute("userID");
		int result = dao.modifyMemberDTO(memdto, realID);
		
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
