package root;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class singleprofile
 */
@WebServlet("/singleprofile")
public class singleprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public singleprofile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String profile = request.getParameter("id");
		HttpSession session = request.getSession();
		
		ArrayList<User> other = (ArrayList<User>)session.getAttribute("rankList");
		
		for(int i = 0; i < other.size(); i++){
		if (profile.equalsIgnoreCase(other.get(i).getUsername())){
			request.setAttribute("proUsername", other.get(i).getUsername());
			request.setAttribute("proAge", other.get(i).getAge());
			request.setAttribute("gender", other.get(i).getGender());
		}
		
		}
		Search pro = new Search();
		pro.getUserList();
		System.out.println(profile);
		response.sendRedirect("singleprofile.jsp");

		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
