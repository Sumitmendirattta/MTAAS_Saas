<%@ page import="java.sql.*" %>

<%


String apps=request.getParameter("apps");
String status=request.getParameter("status");


 String driver ="com.mysql.jdbc.Driver";
String dburl = "jdbc:mysql://localhost/mtaas";
String dbusername = "root";
String dbpassword = "root";

Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
String query="update app_details set app_status='"+status+"' where app_name ='"+apps+"'";
try{
	
	Class.forName(driver).newInstance();

	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
	ps=con.prepareStatement(query);

	
	
	int rows = ps.executeUpdate();
	out.print("rows" +rows);

	if(rows!=0){
	
		
		out.print("App Status Changed");
		response.sendRedirect("TesterProfile.jsp");
	}
	
	%>
	<%
	
}
	catch (Exception e) {
		System.out.println("Unable to make connection with DB");
     e.printStackTrace();
    
 }
	 





%>