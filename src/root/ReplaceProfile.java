package root;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class ReplaceProfile{


	public ReplaceProfile(String username, String replaceWith) {

		File file = new File("./src/UserProfiles.csv");
		
		String temp = "";
		String currentLine;

		
			
		try {
			BufferedReader fileIn = new BufferedReader(new FileReader(file));

			while ((currentLine = fileIn.readLine()) != null) {
				String[] users = currentLine.split(",");

				if(!username.equalsIgnoreCase(users[0])){
					temp = temp  + currentLine + "\n" ;	

				}else{
					temp = temp + replaceWith  + ",0\n";	
				}
			}System.out.println("File updated, User Updated.");
			
			//Write to file
			BufferedWriter bw = null;
			try {

				if (!file.exists()) {
					file.createNewFile();
				}
				FileWriter fw = new FileWriter(file);
				bw = new BufferedWriter(fw);
				bw.write(temp);
				System.out.println(temp);

			} catch (IOException ioe) {
				ioe.printStackTrace();
			}
			finally
			{ 
				try{
					if(bw!=null)

						fileIn.close();
					bw.close();
				}catch(Exception ex){
					System.out.println("Error in closing the BufferedWriter"+ex);
				}
			}
		} catch (IOException e) {
			System.out.println("File Not Found");
			e.printStackTrace();
		}

	}

}