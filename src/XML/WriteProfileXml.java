package XML;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;



public class WriteProfileXml {





	public WriteProfileXml(String username, String name, String email, String month, String day, String year,
			String gender, String clean, String loud, String tv, String cook, String home, String homeTime,
			String roomGen	, String maxRoomates, String edu, String maxRent, String profileImg ){


		Document document = null;
		Element root = null;
		
try{
	
		File xmlFile = new File("./UserProfiles.xml");
		if(xmlFile.exists()) {
			// try to load document from xml file if it exist
			// create a file input stream
			FileInputStream fis = new FileInputStream(xmlFile);
			// create a sax builder to parse the document
			SAXBuilder sb = new SAXBuilder();
			// parse the xml content provided by the file input stream and create a Document object
			document = sb.build(fis);
			// get the root element of the document
			root = document.getRootElement();
			fis.close();
		} else {
			// if it does not exist create a new document and new root
			document = new Document();
			root = new Element("userProfiles");
		}

	// add profile info elements
		Element child = new Element("user");
		child.addContent(new Element("username").setText(username));
		child.addContent(new Element("name").setText(name));
		child.addContent(new Element("email").setText(email));
		child.addContent(new Element("month").setText(month));
		child.addContent(new Element("day").setText(day));
		child.addContent(new Element("year").setText(year));
		child.addContent(new Element("gender").setText(gender));
		child.addContent(new Element("clean").setText(clean));
		child.addContent(new Element("loud").setText(loud));
		child.addContent(new Element("tv").setText(tv));
		child.addContent(new Element("cook").setText(cook));
		child.addContent(new Element("home").setText(home));
		child.addContent(new Element("homeTime").setText(homeTime));
		child.addContent(new Element("roomGen").setText(roomGen));
		child.addContent(new Element("maxRoomates").setText(maxRoomates));
		child.addContent(new Element("edu").setText(edu));
		child.addContent(new Element("maxRent").setText(maxRent));
		child.addContent(new Element("profileImg").setText(profileImg));

		root.addContent(child);
		document.setContent(root);
	
}catch (JDOMException | IOException IOException ){
	
}
		
		try {
			FileWriter writer = new FileWriter("./UserProfiles.xml");
			XMLOutputter outputter = new XMLOutputter();
			outputter.setFormat(Format.getPrettyFormat());
			outputter.output(document, writer);
			outputter.output(document, System.out);
			writer.close(); // close writer
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}


