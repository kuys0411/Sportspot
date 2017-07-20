package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SearchTeamDAO;
import model.SearchTeamDTO;

/**
 * Servlet implementation class SearchTeamServlet
 */
@WebServlet("/TeamSearch/searchTeam")
public class SearchTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchTeamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet searchTeam");
		String type = request.getParameter("P_type");
		String reg = request.getParameter("P_doro");
		System.out.println(type);
		SearchTeamDAO dao = new SearchTeamDAO();
		System.out.println("type:" +type+ "|reg:"+reg+"|");
		

		List<SearchTeamDTO> dtolist = dao.searchAllTeam(type,reg);
		request.setAttribute("teamlist", dtolist);
		RequestDispatcher rd = request.getRequestDispatcher("teamsearchResult.jsp");
		rd.forward(request, response);
/*		request.setAttribute("dtolist", dto);
		
		RequestDispatcher rd;
		rd=request.getRequestDispatcher("searchresult.jsp");
		rd.forward(request, response);*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
