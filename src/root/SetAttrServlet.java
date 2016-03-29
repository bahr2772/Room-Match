package root;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SetAttr
 */
@WebServlet("/SetAttrServlet")
public class SetAttrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetAttrServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		HttpSession session = request.getSession();

		session.removeAttribute("name");
		session.removeAttribute("email");
		session.removeAttribute("age");
		session.removeAttribute("gender");
		session.removeAttribute("loud");
		session.removeAttribute("clean");
		session.removeAttribute("tv");
		session.removeAttribute("video");
		session.removeAttribute("cook");
		session.removeAttribute("homeTime");
		session.removeAttribute("homeAmount");
		session.removeAttribute("roomGen");
		session.removeAttribute("maxNum");
		session.removeAttribute("edu");
		session.removeAttribute("maxRent");
		session.removeAttribute("proImg");

		
	}
	
	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
