<%@ page import="java.sql.*" %>
<%


       String tester=request.getParameter("testers");
       String app=request.getParameter("apps");
       String priority =request.getParameter("priority");
       
  	 String driver ="com.mysql.jdbc.Driver";
  	 String dburl = "jdbc:mysql://localhost/mtaas";
  	 String dbusername = "root";
  	 String dbpassword = "root";

      Connection con=null;
      ResultSet rs=null;
      PreparedStatement ps=null;
      String query1="UPDATE app_details set tester_name = ? , priority = ? where app_name = ?";
     
      
      try{
  		
  		Class.forName(driver).newInstance();

      	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
      	ps=con.prepareStatement(query1);
      
      	
     	ps.setString(1, tester);     
    	ps.setString(2, priority);   
  		ps.setString(3, app);
     
     
            
      	int updateQuery=0;
		updateQuery = ps.executeUpdate();
		
		if (updateQuery != 0) {
			
		
			 response.sendRedirect("TesterProfile.jsp");
			 out.println("<h2>Tester Assigned Successfully </h2");
		} 	
   
		System.err.println("Assign Success !");
    		
      	
  	}
      	catch (Exception e) {
  		System.out.println("Unable to make connection with DB");
       e.printStackTrace();
      
   }finally{
  	
  	
      String query2="UPDATE tester_details set app_assigned = ? where username = ?";


      try{
    		
    		Class.forName(driver).newInstance();

        	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
        	ps=con.prepareStatement(query2);
        
        	
       	ps.setString(1, app);     
       	ps.setString(2, tester);  

              
      	int updateQuery2=0;
		updateQuery2 = ps.executeUpdate();
		
		if (updateQuery2 != 0) {
			
		
			 response.sendRedirect("TesterProfile.jsp");
			 out.println("<h2>Application Assigned Successfully </h2>");
		} 	
   
		System.err.println("App Assign Success !");
        	
    	}
        	catch (Exception e) {
    		System.out.println("Unable to make connection with DB in Assign Tester");
         e.printStackTrace();
        
     }
   }











%>