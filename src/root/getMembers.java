package root;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class getMembers
 */
//@WebServlet("/getMembers")
public class getMembers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public getMembers() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		readFile(request);
		response.sendRedirect("members.jsp");


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private	List<User> memberList = new ArrayList<User>();  
	


	public List<User> readFile(HttpServletRequest request){
		HttpSession session = request.getSession();

		String file = "/Users/bahr2772/Documents/workspace/RoomieMatch/src/UserProfiles.csv";  
		BufferedReader br = null;  
		String line = "";  

		try {  
			br = new BufferedReader(new FileReader(file));  
			while ((line = br.readLine()) != null) {  

				String[] currentline = line.split(",");  

				User user = new User();  

				// set values to user
				user.setUsername((currentline[0]));  
				user.setName(currentline[1]);  
				user.setEmail(currentline[2]);  
				int age = Integer.parseInt(currentline[3], 10);
				user.setAge(age);  
				user.setGender(currentline[4]);  
				user.setLoud(currentline[5]);  
				user.setClean(currentline[6]);  
				user.setTv(currentline[7]);  
				user.setGames(currentline[8]);  
				user.setCook(currentline[9]);  
				user.setHomeTime(currentline[10]);  
				user.setHomeAmount(currentline[11]);  
				user.setPreferRmGen(currentline[12]);  
				user.setMaxNum(currentline[13]);  
				user.setEdu(currentline[14]);  
				user.setMaxRent(currentline[15]);  
				user.setProfileImage(currentline[16]);  
				

				getUserList().add(user);  

			}  
			// print to console
			//	printUsers(getUserList());  

		} catch (FileNotFoundException e) {  
			e.printStackTrace();  
		} catch (IOException e) {  
			e.printStackTrace();  
		} finally {  
			if (br != null) {  
				try {  
					br.close();  
				} catch (IOException e) {  
					e.printStackTrace();  
				}  
			}  
		} 
		session.setAttribute("memberList", memberList);
		return memberList;
	}

	public List<User> getUserList() {
		return memberList;
	}

	public void setUserList(List<User> userList) {
		this.memberList = userList;
	}

}