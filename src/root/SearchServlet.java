package root;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();

		Search search = new Search();

		search.resetCounter();
		String name = request.getParameter("searchName");
		int minAge = Integer.parseInt(request.getParameter("minAge"));
		int maxAge = Integer.parseInt(request.getParameter("maxAge"));
		String gender = request.getParameter("gender");
		String clean = request.getParameter("clean");
		String tv = request.getParameter("tv");
		String loud = request.getParameter("loud");
		String cook = request.getParameter("cook");
		String homeTime = request.getParameter("homeTime");
		String maxRent = request.getParameter("maxRent");
		String edu = request.getParameter("edu");
		String videoGames = request.getParameter("video");
		String preRmGen = request.getParameter("roomGen");
		search.readFile();
		search.runSearch(name, minAge,maxAge,gender, clean, tv, loud, cook, homeTime, maxRent,edu,videoGames,preRmGen);
		search.sortRanking(request);	
		
		session.setAttribute("search", "sent");
	
		response.sendRedirect("results.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}