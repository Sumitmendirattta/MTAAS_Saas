<%@ page import="java.sql.*" %>
<%
	String email=request.getParameter("uname");
	String password=request.getParameter("pwd");
	
	 String driver ="com.mysql.jdbc.Driver";
	 String dburl = "jdbc:mysql://localhost/mtaas";
	 String dbusername = "root";
	 String dbpassword = "root";

    Connection con=null;
    ResultSet rs=null;
    PreparedStatement ps=null;
    String query="select * from user_info where user_email=? && user_password =?";
	try{
		
		Class.forName(driver).newInstance();

    	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
    	ps=con.prepareStatement(query);
    
    	
   		ps.setString(1, email);     	
		ps.setString(2, password);
		
    	rs=ps.executeQuery();
   
    	int count=0;
    	//db user & pwd
    	
    	String emailid = new String("");
    	String pwd = new String("");
    	String usertype = new String("");
    	String user_name = new String("");
    	
    	while(rs.next()){
    		count++;
    		emailid = rs.getString("user_email");
    		pwd = rs.getString("user_password");
    		usertype = rs.getString("user_type");
    		user_name = rs.getString("user_name");
    		
    		System.out.println("Username from db - "+user_name);
    		System.out.println("Password from db - "+pwd);
    		System.out.println("User Type from db - "+usertype);
    		System.out.println("Count in rs "+count);
    		
    		
    	}
    		//Session
    	
    	 if (count==0){
    		 
    		 

 			%>
 			<script>
 				alert("Authentication Failed, Try Login Again");
 				window.location.href = "UserLogin.html";
 			</script>
 			<%
 			}
      		else if(usertype.equalsIgnoreCase("Tester")){
      			session.setAttribute("user", user_name);
				session.setAttribute("password",pwd);
				session.setAttribute("usertype",usertype);
				response.sendRedirect("TesterProfile.jsp");
				
      		}else if(usertype.equalsIgnoreCase("Developer")){
      			session.setAttribute("user", user_name);
				session.setAttribute("password",pwd);
				session.setAttribute("usertype",usertype);
				response.sendRedirect("DeveloperProfile.jsp");
				
      		}else if(usertype.equalsIgnoreCase("TestManager")){
      			
      			session.setAttribute("user", user_name);
				session.setAttribute("password",pwd);
				session.setAttribute("usertype",usertype);
				response.sendRedirect("TestManagerProfile.jsp");
      			
      		}else{
      			response.sendRedirect("AdminProfile.jsp");
      			
      		}
    	
	}
    	catch (Exception e) {
		System.out.println("Unable to make connection with DB");
     e.printStackTrace();
    
 }
	
	
	
%>