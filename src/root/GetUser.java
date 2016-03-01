package root;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class GetUser {



	public User getProfile(User user, String username,  HttpServletRequest request){
		
		try (BufferedReader br = new BufferedReader(new FileReader("/Users/bahr2772/Documents/workspace/RoomieMatch/src/UserProfiles.csv")))
		{

			String currentLine;

			while ((currentLine = br.readLine()) != null) {
				String[] users = currentLine.split(",");

				if(username.equals(users[0]) ){

					user.setUsername(users[0]);
					user.setName(users[1]);
					user.setEmail(users[2]);
					int age = Integer.parseInt(users[3], 10);
					user.setAge(age); 
					user.setGender(users[4]);
					user.setLoud(users[5]);
					user.setClean(users[6]);
					user.setTv(users[7]);
					user.setGames(users[8]);
					user.setCook(users[9]);
					user.setHomeTime(users[10]);
					user.setHomeAmount(users[11]);
					user.setRoomGender(users[12]);
					user.setMaxNum(users[13]);
					user.setEdu(users[14]);
					user.setMaxRent(users[15]);
					user.setProfileImage(users[16]); 
					
					HttpSession session = request.getSession();

					session.setAttribute("username", user.getUsername());
					session.setAttribute("name", user.getName());
					session.setAttribute("email",user.getEmail());
					session.setAttribute("age", user.getAge());
					session.setAttribute("gender",user.getGender());
					session.setAttribute("loud", user.getLoud());
					session.setAttribute("clean", user.getClean());
					session.setAttribute("tv", user.getTv());
					session.setAttribute("cook", user.getCook());
					session.setAttribute("homeTime", user.getHomeTime());
					session.setAttribute("homeAmount", user.getHomeAmount());
					session.setAttribute("roomGen", user.getRoomGender());
					session.setAttribute("maxNum", user.getMaxNum());
					session.setAttribute("edu", user.getEdu());
					session.setAttribute("maxRent", user.getMaxRent());
					session.setAttribute("proImg", user.getProfileImage());

					return user;
				}
			}
			br.close();
		} catch (IOException e) {

			e.printStackTrace();
		}
		return user;


	}

}
