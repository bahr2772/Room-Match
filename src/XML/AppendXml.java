package XML;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.xml.sax.SAXException;

public class AppendXml {
	
	   public void replaceInfo( String newname,String gender,String newemail) throws  SAXException, IOException, ParserConfigurationException {
		   
		   String widgetXMLFile = "./UserProfiles.xml";
	        DocumentBuilderFactory domFactory = DocumentBuilderFactory.newInstance();

	        domFactory.setNamespaceAware(true);
	        DocumentBuilder docBuilder = domFactory.newDocumentBuilder();
	        Document doc = docBuilder.parse(widgetXMLFile);
	        @SuppressWarnings("unused")
			Node n = doc.getElementById("/user/username");
	        
		   Element root = doc.getDocumentElement();
		   NodeList rootlist = root.getChildNodes();
		   
		   for(int i=0; i<rootlist.getLength(); i++) {
		       Element person = (Element)rootlist.item(i);
		       NodeList personlist = person.getChildNodes();
		       Element name = (Element)personlist.item(0);
		       NodeList namelist = name.getChildNodes();
		       Text nametext = (Text)namelist.item(0);
		       String oldname = nametext.getData();
		       if(oldname.equals(newname)) {
		           Element email = (Element)personlist.item(1);
		           NodeList emaillist = email.getChildNodes();
		           Text emailtext = (Text)emaillist.item(0);
		           emailtext.setData(newemail);
		           
		       }
		   }
	   }
}
