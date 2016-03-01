package root;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
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

		

		GetFileInfo check = new GetFileInfo();

		User user = new User();

		

		HttpSession session = request.getSession();
		
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));


		session.removeAttribute("userfail");
		session.removeAttribute("passcheck");

		String username = user.getUsername();
		String password = user.getPassword();

		if(password == null || password == ""){
			session.setAttribute("login", "passFail");
			response.sendRedirect("login.jsp");
			return ;
		}

		
		int value = check.credChecker(username, password);
		System.out.println(value);
		switch(value){

		// username is in DB, password correct, login
		case 1:

			GetUser getUser = new GetUser();
			getUser.getProfile(user, username, request);
			
			GetUserInfoServlet getinfo = new GetUserInfoServlet();
			getinfo.doGet(request, response);

			session.setAttribute("username", username);
			response.sendRedirect("login.jsp");
			return ;

			// username is in DB, password incorrect
		case 2:
			session.setAttribute("login", "passFail");
			response.sendRedirect("login.jsp");
			return ;

			// username not in DB
		case 3:
			session.setAttribute("login", "noUser");
			response.sendRedirect("login.jsp");
			return ;


		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {




		doGet(request, response);
	}

}
