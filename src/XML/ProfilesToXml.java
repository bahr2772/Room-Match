package XML;
import java.io.*;
import org.w3c.dom.*;
import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.*;
import javax.xml.transform.stream.*;
 
public class ProfilesToXml {
	
	
    public  void process(String username, String name, String email, String gender) {
        String[] data = {"FROM", "SUBJECT", "CONTENTTYPE", "DATE", "MESSAGEID", "ISMULTIPART"};
        String [] data1 = {"ashish29agre@gmail.com", "hi", "text/html", "21 March'12", "1735299191", "true"};
        String [] data2 = {"makjbytes@gmail.com", "hello", "text/plain", "1'st March'12", "17892892299191", "true"};
 
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
            //String str = sw.toString();
            //System.out.println(str);
            /*BufferedWriter bw = new BufferedWriter(new FileWriter("ProgrammingLanguages.xml"));
            bw.write(str);
            bw.flush();
            bw.close();*/
 
            document = db.parse("Message.xml");
            rootElement = document.getDocumentElement();
            for(int i=0;i<2;i++) {
                Element element = document.createElement("Message");
                for(int j=0;j<data.length;j++) {
                Element elementInside = document.createElement(data[j]);
                Text text = document.createTextNode(data2[j]);
                elementInside.appendChild(text);
                element.appendChild(elementInside);
                rootElement.appendChild(element);
                }
            }
            File ff = new File("Message.xml");
                        StreamResult srf = new StreamResult(ff);
                        Node nodef = document.getDocumentElement();
                        DOMSource srcf = new DOMSource(nodef);
            t.transform(srcf, srf);
        }catch(Exception e) {
            e.printStackTrace();
        }
    }
}


//import java.io.*;
// 
//import javax.xml.parsers.DocumentBuilder;
//import javax.xml.parsers.DocumentBuilderFactory;
//import javax.xml.parsers.ParserConfigurationException;
//import javax.xml.transform.OutputKeys;
//import javax.xml.transform.Transformer;
//import javax.xml.transform.TransformerFactory;
//import javax.xml.transform.dom.DOMSource;
//import javax.xml.transform.stream.StreamResult;
// 
//import org.w3c.dom.*;
// 
//class processXML 
//{ 
//    public void process(String username, String name, String email, String gender) throws Exception, DOMException,ParserConfigurationException { 
//        DocumentBuilderFactory dbf= DocumentBuilderFactory.newInstance(); 
//        DocumentBuilder db = dbf.newDocumentBuilder(); 
// 
//        Document dct=db.parse(new 
//File("/Users/bahr2772/Documents/workspace/RoomieMatch/WebContent/UserProfiles.xml")); 
// 
//        Element child1 = dct.createElement("username"); 
//        Element child2 = dct.createElement("name"); 
//        Element child3 = dct.createElement("email"); 
//        Element child4 = dct.createElement("gender"); 
//
// 
//        Element root = dct.getDocumentElement(); 
//        root.appendChild(child1); 
//        root.appendChild(child2); 
//        root.appendChild(child3); 
//        root.appendChild(child4); 
//      
//
// 
//        Text text1 = dct.createTextNode(name); 
//        root.getLastChild().appendChild(text1); 
// 
//        //Document mainDoc = db.newDocument();
//        Document mainDoc = db.parse(new File("C:\\BN.xml"));
//        if (mainDoc.getDocumentElement() == null){
//            Element root1 = mainDoc.createElement("Root1"); 
//            mainDoc.appendChild(root1);
//        }       
//        mainDoc.getDocumentElement().appendChild(mainDoc.importNode(root, true));       
// 
//        Transformer transformer = TransformerFactory.newInstance().newTransformer(); 
//        transformer.setOutputProperty(OutputKeys.INDENT, "yes"); 
//        StreamResult result = new StreamResult(new 
//FileWriter("/Users/bahr2772/Documents/workspace/RoomieMatch/WebContent/UserProfiles.xml")); 
//        DOMSource source = new DOMSource(mainDoc); 
//        transformer.transform(source, result); 
//        System.out.println("File saved!"); 
//    } 
//} 
// 