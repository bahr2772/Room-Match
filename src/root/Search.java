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
				getUserList().get(j).setCounter(counter + 50);
//				System.out.print("name Search "+ getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}

	// search ages
	public void searchAges(int min, int max){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getAge() > min && getUserList().get(j).getAge() < max){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 5);
//				System.out.print("age "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());
			}

		}
	}

	//search gender
	public void searchGender(String gender){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getGender().equals(gender)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("gen "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}
	//search clean
	public void searchClean(String clean){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getClean().equals(clean)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("clean "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}
	//search loud
	public void searchloud(String loud){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getLoud().equals(loud)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("loud "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}
	//search tv
	public void searchTv(String tv){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getTv().equals(tv)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("tv "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}

	// search cook
	public void searchCook(String cook){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getCook().equals(cook)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("cook "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}
	//search home time
	public void searchHomeTime(String homeTime){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getHomeTime().equals(homeTime)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("homeTime "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}
	// search room gen
	public void searchRoomGen(String roomGen){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getPreferRmGen().equals(roomGen)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("roomGen "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}
	//search video games
	public void searchVideoGames(String videoGame){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getGames().equals(videoGame)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("video games "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}

	//search max num of roomates
	public void searchMaxNum(String max){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getMaxNum().equals(max)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("max  "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}

	//		search edu
	public void searchEdu(String edu){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getEdu().equals(edu)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("edu "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}
	// search max rent
	public void searchMaxRent(String rent){
		for(int j = 0; j < getUserList().size(); j++){
			if(getUserList().get(j).getMaxRent().equals(rent)){
				int counter = getUserList().get(j).getCounter();
				getUserList().get(j).setCounter(counter + 10);
//				System.out.print("roomGen "+getUserList().get(j).getUsername());
//				System.out.println(getUserList().get(j).getCounter());

			}
		}
	}
	// print for checking
	public void printUsers(List<User> printUsers) {  
		for (int i = 0; i < printUsers.size(); i++) {  
			System.out.println("User"  
					+ " , Username: " + printUsers.get(i).getUsername()  
					+ " , Email: " + printUsers.get(i).getEmail()  
					+ " , Name: " + printUsers.get(i).getName()  
					+ " , Age: " + printUsers.get(i).getAge()  
					+ " , Gender: " + printUsers.get(i).getGender()  
					+ " , Loud: " + printUsers.get(i).getLoud()  
					+ " , Clean: " + printUsers.get(i).getClean()  
					+ " , Tv: " + printUsers.get(i).getTv()  
					+ " , Cook: " + printUsers.get(i).getCook()  
					+ " , Home Time: " + printUsers.get(i).getHomeTime()  
					+ " , Home Amount: " + printUsers.get(i).getHomeAmount()  
					+ " , Room Genders: " + printUsers.get(i).getPreferRmGen()  
					+ " , Max Number of Roomates: " + printUsers.get(i).getMaxNum()  
					+ " , Education: " + printUsers.get(i).getEdu()  
					+ " , Max Rent: " + printUsers.get(i).getMaxRent()
					+ " , ranking: " + printUsers.get(i).getCounter());
		}  
	}  
	
//	HttpServletRequest request
	public List<User> sortRanking(HttpServletRequest request){
		HttpSession session = request.getSession();
		Collections.sort(userList, new Comparator<User>() {
	        @Override public int compare(User p1, User p2) {
	            return p2.getCounter() - p1.getCounter(); // descending
	        }
		});
		//sys out to confirm
		for(int j = 0; j < getUserList().size(); j++){
//			System.out.println(getUserList().get(j).getUsername());
//			System.out.println(getUserList().get(j).getCounter());
//			System.out.println("size" + userList.size());
		}
			//System.out.println("size1" + userList.size());
			session.setAttribute("rankList", userList);
			return userList;
	}
	
	
	

	public String testString(HttpServletRequest request){
		HttpSession session = request.getSession();
		
		String  tester = "this is a test";
		
			session.setAttribute("test", tester);
			return tester; 
	}
	
	public void runSearch(String name, int minAge, int maxAge, String gender, String clean, String tv, String loud, String cook, String homeTime, String maxRent, String edu, String videoGames){
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
		//sortRanking();
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
