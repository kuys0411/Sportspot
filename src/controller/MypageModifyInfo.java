package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
@WebServlet("/mypage/modifyinfo")
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
		HttpSession session = request.getSession();
		String realID = (String)session.getAttribute("userID");
		MemberDAO dao = new MemberDAO();
		MemberDTO memDTO = dao.selectByID(realID);
		request.setAttribute("memDTO", memDTO);
		RequestDispatcher rd = request.getRequestDispatcher("mypage_modifyInfo.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		MemberDTO memdto = makeMemberDTO(request);
		MemberDAO dao = new MemberDAO();
		HttpSession session = request.getSession();
		String realID = (String)session.getAttribute("userID");
		int result = dao.modifyMemberDTO(memdto, realID);
		request.setAttribute("memDTO", memdto);
		RequestDispatcher rd = request.getRequestDispatcher("mypage_modifyInfo.jsp");
		rd.forward(request, response);

	}
	
	private MemberDTO makeMemberDTO(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String mid = request.getParameter("id");
		String mname = request.getParameter("name");
		String memail = request.getParameter("email");
		String mpwd = request.getParameter("password");
		String msex = request.getParameter("sex");
		String minterest = request.getParameter("interest");
		System.out.println("memberDTO : "+ mid +" " +mname+" " + memail+" " + mpwd+" " + msex+" " +minterest);
		MemberDTO memDTO = new MemberDTO(mid, mpwd, mname, msex, memail, minterest);
		return memDTO;
	}
}
