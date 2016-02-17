<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.Part" %>
<%@ page import="javax.servlet.annotation.MultipartConfig" %>

<% 
Properties prop = new Properties();
String driver ="com.mysql.jdbc.Driver";
String dburl = "jdbc:mysql://localhost:3306/mtaas";
String dbusername = "root";
String dbpassword = "root";

Part filePart = request.getPart("uploadFile");
InputStream inputStream = null;

Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
String message= null;
String query = "INSERT INTO app_details (app_name,app_desc,app,device,priority,developer_name,app_status) values (?, ?, ?,?,?,?,?)";
String appname=null,appSize=null;

String priority= request.getParameter("priority");
String platform= request.getParameter("platform");
Random rand = new Random();
if (filePart != null) {
    // prints out some information for debugging
    appname= session.getAttribute("user").toString()+"_app"+rand.nextInt(50) + 1;
    System.out.println(filePart.getSize());
    System.out.println(filePart.getContentType());
     
    
    // Print on page 
    out.println("Name is : "+filePart.getName());
    out.println("\n Size is :"+filePart.getSize());
    out.println("\n Content Type :"+filePart.getContentType());
    
    // obtains input stream of the upload file
    inputStream = filePart.getInputStream();
    
    out.println("\n InputStream :"+filePart.getContentType());
}


try {
	Class.forName(driver).newInstance();

	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
	ps=con.prepareStatement(query);


    ps.setString(1, appname);
    ps.setString(2, "App Desc");
    ps.setString(4, platform);
    ps.setString(5, priority);
    ps.setString(6, session.getAttribute("user").toString());
    ps.setString(7, "Uploaded");
     
    if (inputStream != null) {
        // fetches input stream of the upload file for the blob column
        ps.setBinaryStream(3, inputStream);
    }

    // sends the statement to the database server
    int row = ps.executeUpdate();
    if (row > 0) {
     
     response.sendRedirect("DeveloperProfile.jsp");
     
     
   
    }
} catch (SQLException ex) {
	
	response.sendRedirect("DeveloperProfile.jsp");
	out.println("Error:"+ex.getMessage());
    ex.printStackTrace();
  
  
} finally {
    if (con != null) {
        // closes the database connection
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    // sets the message in request scope
   
}
 


%>