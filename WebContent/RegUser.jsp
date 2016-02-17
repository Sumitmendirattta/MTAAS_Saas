<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<%
  String username=request.getParameter("username");
	String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
	String email_id=request.getParameter("email");
	String password=request.getParameter("pwd");
	String user_type=request.getParameter("usertype");
	String gender=request.getParameter("gender");
	String contact_number=request.getParameter("mobile");
	String web_url=request.getParameter("weburl");
	String address=request.getParameter("address");
	String skills = request.getParameter("skills");
	
	 String driver ="com.mysql.jdbc.Driver";
	 String dburl = "jdbc:mysql://localhost/mtaas";
	 String dbusername = "root";
	 String dbpassword = "root";

    Connection con=null;
    ResultSet rs1=null,rs2=null;
    PreparedStatement ps1=null,ps2=null;
    
  //  System.out.println("User Type"+user_type);
  
  String query1="insert into "+
    "tester_details(username,fname,lname,email_id,password,user_type,gender,contact_number,web_url,address,skills) values (?,?,?,?,?,?,?,?,?,?,?)";
  
  String query2="insert into "+
		    "user_info(user_email,user_password,user_type,user_name) values (?,?,?,?)";
    
    if(user_type.equalsIgnoreCase("Tester")){
    	 System.out.println("User Type in loop "+user_type);
    

	try{
		
		Class.forName(driver).newInstance();

    	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
    	
    	ps1 =con.prepareStatement(query1);
    	ps2 =con.prepareStatement(query2);
    	
    	
    	  	
       // into tester_details	
        ps1.setString(1, username); 
   		ps1.setString(2, fname); 
   		ps1.setString(3, lname); 
   		ps1.setString(4, email_id); 
		ps1.setString(5, password);
		ps1.setString(6, user_type);
		ps1.setString(7, gender);
		ps1.setString(8, contact_number);
		ps1.setString(9, web_url);
		ps1.setString(10, address);
		ps1.setString(11, skills);
		
		
		// into user_info
    	ps2.setString(1, email_id); 
   		ps2.setString(2, password); 
   		ps2.setString(3, user_type); 
   		ps2.setString(4, username); 
    	    		    
    	int updateQuery1=0;
		updateQuery1 = ps1.executeUpdate();
		
		int updateQuery2=0;
		updateQuery2 = ps2.executeUpdate();
		
		if (updateQuery1 != 0 || updateQuery2 != 0) {
			out.println("<h2>Tester Profile Created</h2");
		
			response.sendRedirect("UserLogin.html");
		} 	
		
		
	
		System.err.println("Register Connection Successful in Tester");
    		
    
    	
	}
    	catch (Exception e) {
		System.out.println("Unable to make connection with DB in Tester");
     e.printStackTrace();
    
 }

	
    }
    else if(user_type.equalsIgnoreCase("Developer")){
    	
    	String query3="insert into "+
    		    "dev_details(fname,lname,email_id,password,user_type,gender,contact_number,web_url,address,username) values (?,?,?,?,?,?,?,?,?,?)";
    		
    	try{
    				
    				Class.forName(driver).newInstance();

    		    	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
    		    	ps1=con.prepareStatement(query3);
    		    	ps2=con.prepareStatement(query2);
    		    
    		    	
    		    	// into dev_details
    		   		ps1.setString(1, fname); 
    		   		ps1.setString(2, lname); 
    		   		ps1.setString(3, email_id); 
    				ps1.setString(4, password);
    				ps1.setString(5, user_type);
    				ps1.setString(6, gender);
    				ps1.setString(7, contact_number);
    				ps1.setString(8, web_url);
    				ps1.setString(9, address);
    				ps1.setString(10, username);
    				
       				// into user_info
			    	ps2.setString(1, email_id); 
			   		ps2.setString(2, password); 
			   		ps2.setString(3, user_type); 
			   		ps2.setString(4, username); 
    				 				
    		    	int updateQuery1=0;
    				updateQuery1 = ps1.executeUpdate();
    				
     				
    		    	int updateQuery2=0;
    				updateQuery2 = ps2.executeUpdate();
    				
    				
    				
    				if (updateQuery1 != 0 || updateQuery2 != 0) {
    					out.println("<h2>Developer Profile Created</h2");
    				
    					response.sendRedirect("DeveloperLogin.html");
    				} 	
    		   
    				System.err.println("Connection Successful in Developer");
    		    		
    		    
    		    	
    			}
    		    	catch (Exception e) {
    				System.out.println("Unable to make connection with DB in Developer");
    		     e.printStackTrace();
    		    
    		 }
    	
    }
    
	
%>