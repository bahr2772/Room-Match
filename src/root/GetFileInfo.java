package root;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class GetFileInfo {

	
	private User model;

	public int getLostPass(String username, String email,HttpServletRequest request){
		
		HttpSession session = request.getSession();

		try (BufferedReader br = new BufferedReader(new FileReader("/Users/bahr2772/Documents/workspace/RoomieMatch/src/UserCreds.csv")))
		{
			String currentLine;

			while ((currentLine = br.readLine()) != null) {
				String[] users = currentLine.split(",");
//user and email found
				if(username.equalsIgnoreCase(users[0]) && email.equalsIgnoreCase(users[2])){
					String pass = users[1];
					session.setAttribute("getPassword", pass);
					 return 1;
//user found email wrong
				}else if(username.equalsIgnoreCase(users[0]) && !email.equals(users[2])){
					return 2;
				}
			}
			br.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return 3;
	}

	public int credChecker(String username, String password){
		try (BufferedReader br = new BufferedReader(new FileReader("/Users/bahr2772/Documents/workspace/RoomieMatch/src/UserCreds.csv")))
		{
			String currentLine;

			while ((currentLine = br.readLine()) != null) {
				String[] users = currentLine.split(",");

				if(username.equalsIgnoreCase(users[0]) && password.equals(users[1])){
					return 1;
				}else if(username.equalsIgnoreCase(users[0]) && !password.equals(users[1])){
					return 2;
				}
			}
			br.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return 3;
	}
		
	public int usernameChecker(String username){
		try (BufferedReader br = new BufferedReader(new FileReader("/Users/bahr2772/Documents/workspace/RoomieMatch/src/UserCreds.csv")))
		{
			String currentLine;
			while ((currentLine = br.readLine()) != null) {
				String[] users = currentLine.split(",");
				if(username.equals(users[0]) )
					return 1;
			}
			br.close();
		} catch (IOException e) {

			e.printStackTrace();
		}
		return 2;
	}

	public int newRegister(String password1, String password2, String username, String email){
		int check = usernameChecker(username);

		switch(check){
		// user name found
		case 1:
			return 1;
			// check user name is smaller then 4
		case 2: 
			if(username.length() < 4 ){
				return 2;
				//password to short
			}else if(password1.length() < 2){
				return 3;
				// passwords mismatch
			}else if(!password1.equals(password2)){
				return 4;
				// check passwords match
			}else {
				System.out.println("user sent");
				@SuppressWarnings("unused")
				CreateUser newUser = new CreateUser(username, password1, email);
				System.out.println("User created");
				return 5;
			}
		}
		return 0;
	}


	
	public User getModel() {
		return model;
	}
	public void setModel(User model) {
		this.model = model;
	}


	

}//close class




