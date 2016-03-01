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



public class WriteUserXml {





	public void WriteAnApendXML(String username, String email, String password) {

//		String username = "uname";
//		String mail = "abc@123.com";
//		String pass = "pword";
//		String password = pass;
		
	
		Document document = null;
		Element root = null;
try{
	

		File xmlFile = new File("./UserCred.xml");
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
			root = new Element("userlogin");
		}


		Element child = new Element("user");
		child.addContent(new Element("username").setText(username));
		child.addContent(new Element("password").setText(password));
		child.addContent(new Element("email").setText(email));

		root.addContent(child);
		document.setContent(root);
	
}catch (JDOMException | IOException IOException ){
	
}
		
		try {
			FileWriter writer = new FileWriter("./UserCred.xml");
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


