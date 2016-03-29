package root;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Search {


	private	List<User> userList = new ArrayList<User>();  
	private User counter;


	public List<User> readFile(){


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
				user.setCounter(age);  
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
				int count = Integer.parseInt(currentline[17], 10);
				user.setCounter(count);  

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
		return userList;
	}  

	public void resetCounter(){
		for(int j = 0; j < getUserList().size(); j++){
			int reset = getUserList().get(j).getCounter();
			getUserList().get(j).setCounter(reset * 0);
		}
	}
	
	// search name,email,contain
	public void searchName(String searchName){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getName().contains((searchName)) || 
					getUserList().get(j).getEmail().contains((searchName)) ||
					getUserList().get(j).getUsername().contains((searchName))){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 100);
			}
		}
	}

	// search ages
	public void searchAges(int min, int max){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getAge() > min && getUserList().get(j).getAge() < max){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 50);
			}
		}
	}

	//search gender
	public void searchGender(String gender){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(!getUserList().get(j).getPreferRmGen().equals(gender)){	
				getUserList().get(j).setCounter(counter - 10);
			}else if(getUserList().get(j).getGender().equals(gender)){
				getUserList().get(j).setCounter(counter + 30);}
			else if(getUserList().get(j).getGender().equals(gender) || getUserList().get(j).getPreferRmGen().equals("03")){
				getUserList().get(j).setCounter(counter + 20);


			}
		}
	}
	//search clean
	public void searchClean(String clean){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(clean == "00"){
				getUserList().get(j).setCounter(counter + 0);
			}else if(getUserList().get(j).getClean().equals(clean)){
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}
	//search loud
	public void searchloud(String loud){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(loud == "00"){
				getUserList().get(j).setCounter(counter + 0);
				
			} else if(getUserList().get(j).getLoud().equals(loud)) {
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}
	//search tv
	public void searchTv(String tv){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(tv == "00"){
				getUserList().get(j).setCounter(counter + 0);
			} else if(getUserList().get(j).getTv().equals(tv)) {
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}

	// search cook
	public void searchCook(String cook){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(cook == "00"){
				getUserList().get(j).setCounter(counter + 0);
			} else if(getUserList().get(j).getCook().equals(cook)) {
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}
	//search home time
	public void searchHomeTime(String homeTime){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(homeTime == "00"){
				getUserList().get(j).setCounter(counter + 0);
			} else if(getUserList().get(j).getHomeTime().equals(homeTime)) {
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}
	// search room gen
	public void searchRoomGen(String roomGen){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(roomGen == "00"){
				getUserList().get(j).setCounter(counter + 0);
			} else if(getUserList().get(j).getPreferRmGen().equals(roomGen)) {
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}
	//search video games
	public void searchVideoGames(String videoGame){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(videoGame == "00"){
				getUserList().get(j).setCounter(counter + 0);
			} else if(getUserList().get(j).getGames().equals(videoGame)) {
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}

	//search max num of roomates
	public void searchMaxNum(String max){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(max == "00"){
				getUserList().get(j).setCounter(counter + 0);
			}else if(getUserList().get(j).getMaxNum().equals(max)){
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}

	//		search edu
	public void searchEdu(String edu){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(edu == "00"){
				getUserList().get(j).setCounter(counter + 0);
			}else if(getUserList().get(j).getEdu().equals(edu)){
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}
	// search max rent
	public void searchMaxRent(String rent){
		for(int j = 0; j < getUserList().size(); j++){
			int counter = getUserList().get(j).getCounter();
			if(rent == "00"){
				getUserList().get(j).setCounter(counter + 0);
			}else if(getUserList().get(j).getMaxRent().equals(rent)){
				getUserList().get(j).setCounter(counter + 10);
			}
		}
	}

	public List<User> sortRanking(HttpServletRequest request){
		HttpSession session = request.getSession();
		Collections.sort(userList, new Comparator<User>() {
			@Override public int compare(User p1, User p2) {
				return p2.getCounter() - p1.getCounter(); // descending
			}
		});

		session.setAttribute("rankList", userList);
		return userList;
	}

	public void runSearch(String name, int minAge, int maxAge, String gender, String clean, String tv, String loud, String cook, String homeTime, String maxRent, String edu, String videoGames, String preRmGen){
		searchName(name);
		searchAges(minAge, maxAge);
		searchGender(gender);
		searchClean(clean);
		searchTv(tv);
		searchloud(loud);
		searchCook(cook);
		searchHomeTime(homeTime);
		searchMaxRent(maxRent);
		searchEdu(edu);
		searchVideoGames(videoGames);
		searchRoomGen(preRmGen);
	}

	
	
	public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	public User getCounter() {
		return counter;
	}
	public void setCounter(User counter) {
		this.counter = counter;
	}
}
