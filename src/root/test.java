package root;
/*import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.Text;

public class test {

	public static void main(String[] args) {
		 String[] data = {"Username", "Name", "Email", "Month", "Day", "Year",
				 			"Gender", "Loud", "Clean", "Tv", "Cooking", "HomeTime",
				 			"HomeAmount", "PreferredRoomGender", "Maxnumber", "Edu", "MaxRent", "ProfileImgPath"};
	       
		 	String [] data1 = {"test", "ashish29agre@gmail.com", "hi", "text/html", "21 March'12", "1735299191", "true"
		 			,"t","t","t","t","r","e","e","s","g","p","g"};
	        String [] data2 = {"test", "ashish29agre@gmail.com", "hi", "text/html", "21 March'12", "1735299191", "true"
		 			,"t","t","t","t","r","e","e","s","g","p","g"};
	        String language = "Language";
	        try{
	            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
	            DocumentBuilder db = dbf.newDocumentBuilder();
	            Document document = db.newDocument();
	 
	            //create and attach root element to the XML File
	            Element rootElement = document.createElement("USERS");
	            document.appendChild(rootElement);
	 
	            for(int i=0;i<2;i++) {
	                Element element = document.createElement("user");
	                for(int j=0;j<data.length;j++) {
	                Element elementInside = document.createElement(data[j]);
	                Text text = document.createTextNode(data1[j]);
	                elementInside.appendChild(text);
	                element.appendChild(elementInside);
	                rootElement.appendChild(element);
	                }
	            }
	            TransformerFactory tf = TransformerFactory.newInstance();
	            Transformer t = tf.newTransformer();
	            t.setOutputProperty(OutputKeys.INDENT, "yes");
	            t.setOutputProperty(OutputKeys.INDENT, "yes");
	            File f = new File("Message.xml");
	            StreamResult sr = new StreamResult(f);
	            Node node = document.getDocumentElement();
	            DOMSource src = new DOMSource(node);
	            t.transform(src, sr);
	       

	            Document doc = builder.parse(instream);
	            document = db.parse("/Users/bahr2772/Documents/workspace/RoomieMatch/WebContent/UsersProfiles.xml");
	            rootElement = document.getDocumentElement();
	            for(int i=0;i<2;i++) {
	                Element element = document.createElement("users");
	                for(int j=0;j<data.length;j++) {
	                Element elementInside = document.createElement(data[j]);
	                Text text = document.createTextNode(data2[j]);
	                elementInside.appendChild(text);
	                element.appendChild(elementInside);
	                rootElement.appendChild(element);
	                }
	            }
	            File ff = new File("UserProfiles.xml");
	                        StreamResult srf = new StreamResult(ff);
	                        Node nodef = document.getDocumentElement();
	                        DOMSource srcf = new DOMSource(nodef);
	            t.transform(srcf, srf);
	        }catch(Exception e) {
	            e.printStackTrace();
	        }
	
	System.out.println("done");
	}
	
	
	
}
*/