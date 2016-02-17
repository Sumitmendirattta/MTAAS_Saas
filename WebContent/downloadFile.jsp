<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.Part" %>
<%@ page import="javax.servlet.annotation.MultipartConfig" %>

<% 

String driver ="com.mysql.jdbc.Driver";
String dburl = "jdbc:mysql://localhost:3306/mtaas";
String dbusername = "root";
String dbpassword = "root";


Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
String message= null;
String query = "SELECT app_name,app_desc,app FROM app_details WHERE app_id=?";
//size of byte buffer to send file

int BUFFER_SIZE = 20480;  
int appid = Integer.parseInt(request.getParameter("appid"));
try {
	Class.forName(driver).newInstance();

	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
	ps=con.prepareStatement(query);

	ps.setInt(1, appid);
	
	ResultSet result = ps.executeQuery();

	if (result.next()) {
        // gets file name and file blob data
        String appName = result.getString("app_name");
        String appDesc = result.getString("app_desc");
        Blob blob = result.getBlob("app");
        InputStream inputStream = blob.getBinaryStream();
        int fileLength = inputStream.available();
         
        System.out.println("fileLength = " + fileLength);

        ServletContext context = getServletContext();
        
        String mimeType = context.getMimeType(appName);
        if (mimeType == null) {        
            mimeType = "application/vnd.android.package-archive";
        }              
        // set content properties and header attributes for the response
        response.setContentType(mimeType);
        response.setContentLength(fileLength);
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", appName);
        response.setHeader(headerKey, headerValue);

        // writes the file to the client
        OutputStream outStream = response.getOutputStream();
         
        byte[] buffer = new byte[BUFFER_SIZE];
        int bytesRead = -1;
         
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }
         
        inputStream.close();
        outStream.close();             
    } else {
        // no file found
        response.getWriter().print("File not found for the id: " + "5");  
    }
	



} catch (SQLException ex) {
	 ex.printStackTrace();
     response.getWriter().print("ERROR"+ex.getMessage());
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
    request.setAttribute("Message", message);
     
    // forwards to the message page
    getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
}
 


%>