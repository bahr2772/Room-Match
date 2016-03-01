package root;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String add = 
				request.getParameter("username") + "," + 
						request.getParameter("name") + "," + 
						request.getParameter("email") + "," + 
						request.getParameter("age") + "," + 
						request.getParameter("gender") + "," +  
						request.getParameter("loud") + "," +  
						request.getParameter("clean") + "," + 
						request.getParameter("tv") + "," +  
						request.getParameter("video") + "," +  
						request.getParameter("cook") + "," + 
						request.getParameter("homeTime") + "," +  
						request.getParameter("homeAmount") + "," +  
						request.getParameter("roomGen") + "," + 
						request.getParameter("maxRoomates") + "," +  
						request.getParameter("edu") + "," + 
						request.getParameter("maxRent") + "," + 
						request.getParameter("profileImg");


		@SuppressWarnings("unused")
		ReplaceProfile profile = new ReplaceProfile(username, add);
		

		User user = new User();
		GetUser getUser = new GetUser();
		getUser.getProfile(user, username, request);
		
		
		HttpSession session = request.getSession();

		session.setAttribute("user", "updated");
		response.sendRedirect("profile.jsp");



	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}
