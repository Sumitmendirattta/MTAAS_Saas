<%@ page import="java.sql.*" %>
<%


       String aid=request.getParameter("aid");
       
       
  	 String driver ="com.mysql.jdbc.Driver";
  	 String dburl = "jdbc:mysql://localhost/mtaas";
  	 String dbusername = "root";
  	 String dbpassword = "root";

      Connection con=null;
      ResultSet rs=null;
      PreparedStatement ps=null;
      String query1="UPDATE app_details set tester_name = ?,app_status = ? where app_id = ?";
     
      
      try{
  		
  		Class.forName(driver).newInstance();

      	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
      	ps=con.prepareStatement(query1);
      
      	
     	ps.setString(1, session.getAttribute("user").toString());     
    	ps.setString(2, "Assigned");   
  		ps.setString(3, aid);
     
     
            
      	int updateQuery=0;
		updateQuery = ps.executeUpdate();
		
		if (updateQuery != 0) {
			
		
			 response.sendRedirect("TesterProfile.jsp");
			 out.println("<h2>App Assigned To Tester Successfully </h2");
		} 	
   
		System.err.println("Assign Success !");
    		
      	
  	}
      	catch (Exception e) {
  		System.out.println("Unable to make connection with DB");
       e.printStackTrace();
      
   }


%>