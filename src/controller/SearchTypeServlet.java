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

import model.SearchDAO;
import model.SearchResultDTO;

import model.*;


@WebServlet("/search")
public class SearchTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchTypeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("P_type");
		String reg = request.getParameter("P_doro");		
		SearchDAO dao = new SearchDAO();
		System.out.println(type+" "+reg);
		List<SearchResultDTO> dto = new 
			ArrayList<SearchResultDTO>();
	
		
		String userid = null;
		request.setCharacterEncoding("utf-8");
		
		
		if(type=="" && reg==""){
			RequestDispatcher rd;
			rd=request.getRequestDispatcher("noresult.jsp");
			rd.forward(request, response);
		
		}
		else{
			if(type==""){
				System.out.println("type is null");
				dto = dao.selectByAddr(reg);
				if(dto.get(0).getPid()==-1){
					RequestDispatcher rd;
					rd=request.getRequestDispatcher("noresult2.jsp");
					rd.forward(request, response);
				}
				else{
					request.setAttribute("dtolist", dto);
					
					RequestDispatcher rd;
					rd=request.getRequestDispatcher("searchresult.jsp");
					rd.forward(request, response);
				}
			}
			else if(reg==""){
				System.out.println("reg is null");
				dto = dao.selectByType(type);
				if(dto.get(0).getPid()==-1){
					RequestDispatcher rd;
					rd=request.getRequestDispatcher("noresult2.jsp");
					rd.forward(request, response);
				}
				else{
					request.setAttribute("dtolist", dto);
					
					RequestDispatcher rd;
					rd=request.getRequestDispatcher("searchresult.jsp");
					rd.forward(request, response);
				}
			
			}
			else{ 
				dto = dao.selectByTypeAddr(type,reg);
				System.out.println("do you see me too?1");
				if((dto.get(0)).getPid()==-1){
					System.out.println("do you see me too?2");
					RequestDispatcher rd;
					rd=request.getRequestDispatcher("noresult2.jsp");
					System.out.println("do you see me too?3");
					rd.forward(request, response);
				}
				else{
					request.setAttribute("dtolist", dto);
					
					RequestDispatcher rd;
					rd=request.getRequestDispatcher("searchresult.jsp");
					rd.forward(request, response);
				}
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
	}

}
