<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	String username=request.getParameter("uname");
	String password=request.getParameter("pwd");
	
	 String driver ="com.mysql.jdbc.Driver";
	 String dburl = "jdbc:mysql://localhost/mtaas";
	 String dbusername = "root";
	 String dbpassword = "root";

    Connection con=null;
    ResultSet rs=null;
    PreparedStatement ps=null;
    String query="select lname from tester_details where app_assigned IS NULL";
	try{
	
		Class.forName(driver).newInstance();

    	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
    	ps=con.prepareStatement(query);
    	
    	rs=ps.executeQuery();
    	
    	int count=0;
    	
    	ArrayList<String> testers = new ArrayList<String>();
     	
    	while(rs.next()){
    		count++;
      		
    		testers.add(rs.getString("lname"));
    		
    	}
    	

	}catch (Exception e) {
		System.out.println("Unable to make connection with DB");
     e.printStackTrace();
    
 }
    	
    	%>
    	
    	