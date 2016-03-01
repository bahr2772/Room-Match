package root;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class SetRemoveAttributes {

	
	public  SetRemoveAttributes( HttpServletRequest request, User user){

		
		
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

		session.setAttribute("username", user.getUsername());
		session.setAttribute("name", user.getName());
		session.setAttribute("email",user.getEmail());
		session.setAttribute("age", user.getAge());
		session.setAttribute("gender",user.getGender());
		session.setAttribute("loud", user.getLoud());
		session.setAttribute("clean", user.getClean());
		session.setAttribute("tv", user.getTv());
		session.setAttribute("video", user.getGames());
		session.setAttribute("cook", user.getCook());
		session.setAttribute("homeTime", user.getHomeTime());
		session.setAttribute("homeAmount", user.getHomeAmount());
		session.setAttribute("roomGen", user.getRoomGender());
		session.setAttribute("maxNum", user.getMaxNum());
		session.setAttribute("edu", user.getEdu());
		session.setAttribute("maxRent", user.getMaxRent());
		session.setAttribute("proImg", user.getProfileImage());

	}
	
	

}
