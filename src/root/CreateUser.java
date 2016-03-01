package root;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class CreateUser {

	public CreateUser(String username, String password, String email){

	
		File fileUser = new File("/Users/bahr2772/Documents/workspace/RoomieMatch/src/UserCreds.csv");

		try{
			
			//if file doesn't exists, then create it
			if(!fileUser.exists()){
				fileUser.createNewFile();
			}


			FileWriter fileWritter = new FileWriter(fileUser,true);
			BufferedWriter bufferWritter = new BufferedWriter(fileWritter);
			bufferWritter.write(username + "," + password + "," + email + ",\n");
			bufferWritter.close();

			System.out.println("User Created");

		}catch(IOException e){
			e.printStackTrace();
		}
		File fileProfile = new File("/Users/bahr2772/Documents/workspace/RoomieMatch/src/UserProfiles.csv");

		try{
			
			//if file doesn't exists, then create it
			if(!fileProfile.exists()){
				fileProfile.createNewFile();
			}


			FileWriter fileWritter = new FileWriter(fileProfile,true);
			BufferedWriter bufferWritter = new BufferedWriter(fileWritter);
			bufferWritter.write(username + ",name," + email + ",0,0,0,0,0,0,0,0,0,0,0,0,0,null,0\n");
			bufferWritter.close();

			System.out.println("User Profile Created");

		}catch(IOException e){
			e.printStackTrace();
		}
	
	
	}
	
	
}


