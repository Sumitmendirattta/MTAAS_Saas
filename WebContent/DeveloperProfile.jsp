<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>MTAAS </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/ccustom.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    
    
      <!-- Bootstrap core CSS -->

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    
        <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">

    <style type="text/css">
            body {
    color: #333;
    background: #333;
    line-height: 1.5;
}

    </style>
    


   

    
    
   

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="index.html" class="site_title"><i class="fa fa-cloud"></i> <span>MTAAS</span></a>
                    </div>
                    <div class="clearfix"></div>

                   
                    <div class="profile">
                        <div class="p_c">
                            <img src="images/developer.jpg" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2><%=session.getAttribute("user") %></h2>
                        </div>
                    </div>
            

                    <br />
<br>
<br>
                   
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                        <br>
                          
                            <br>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="logout.jsp"><b> Log Out </b></a>
                                        </li>
                                         <li><a href="DeveloperProfile.jsp"><b> Home </b></a>
                                        </li>
                                        
                                    </ul>
                                </li>
                             
                               
                                <li><a><i class="fa fa-table"></i> Actions<span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        
                                        
                                     <li><a href="javascript:uploadA()">Upload Application</a>
                                        </li>
                                        <li><a href="DeveloperProfile.jsp">Show Applications</a>
                                        </li>
                                        <li><a href="javascript:Rate()">Rate Tester</a>
                                        </li>
                                         
                                        
                                          <li><a href="javascript:Payment()">Do Payment</a>
                                        </li>
                                        
                                    </ul>
                                </li>

                              
                                
                            </ul>
                        </div>
                       

                    </div>
                    
                    
                   
                </div>
            </div>

            
            <div class="top_nav">

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav nav-r">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="images/developer.jpg" alt="">Developer
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    
                                   
                                    <li><a href="logout.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                                    </li>
                                </ul>
                            </li>

                            <li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle i_num" data-toggle="dropdown" aria-expanded="false">
                                  
                                    
                                </a>
                                <ul id="menu1" class="dropdown-menu list-unstyled m__lis animated fadeInDown" role="menu">
                                    <li>
                                        <a>
                                           <span class="">
                                                 Menu 1 
                                         </span>
                                        </a>
                                    </li>
                                  
                                </ul>
                            </li>

                        </ul>
                    </nav>
                </div>

            </div>

            <!-- page content -->
            <div class="right_col" role="main">

           <%
            
       	 String driver ="com.mysql.jdbc.Driver";
       	 String dburl = "jdbc:mysql://localhost/mtaas";
       	 String dbusername = "root";
       	 String dbpassword = "root";

       	 String tester = session.getAttribute("user").toString();
         Connection con=null;
         ResultSet rs1=null,rs2=null;
         PreparedStatement ps1=null,ps2=null;
         String query1="select app_id,app_name,app_status,device,tester_name from app_details where developer_name=?";
       
         
         %>     
                    <div class="clearfix"></div>
				<div id="content1">
                    <div class="row">
               
                    <div class="page-title">
                        <div class="title_left">
                            <h3>Welcome <%=session.getAttribute("user") %>..!! </h3>
                        </div>

                    </div>
                    <div class="clearfix"></div>

<div id="content1">
                                   <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Developer </h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                       
                                        <li><a href="#"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">

                                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">

                                        <div class="profile_img">

                                          

                                        </div>
                                        <h3><%=session.getAttribute("user") %></h3>

                                        <ul class="list-unstyled user_data">
                                            <li><i class="fa fa-map-marker user-profile-icon"></i> San Francisco, California, USA
                                            </li>


                                            <li class="m-top-xs">
                                                <i class="fa fa-external-link user-profile-icon"></i>
                                                <a href="http://www.abc.com/profile/" target="_blank">www.xyz.com</a>
                                            </li>
                                        </ul>

                                        
                                        <br />

                                

                                    </div>
                                    <div class="col-md-9 col-sm-9 col-xs-12">

                                       
                                   

                                        <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                            <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                               
                                                <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">My Applications</a>
                                                </li>
                                               
                                            </ul>
                                            <div id="myTabContent" class="tab-content">
                                                <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                                                </div>
                                                <div role="tabpanel" class="tab-pane fade active in" id="tab_content2" aria-labelledby="profile-tab">

                                                    <!-- start user projects -->
                                                    <table class="data table table-striped no-margin">
                                                        <thead>
                                                            <tr>
                                                                
                                                                <th>Application ID</th>
                                                                <th>Application Name</th>
                                                                <th>Application Status</th>
                                                                <th>Application Platform</th>
                                                                <th>Tester</th>
                                                             	
                                                            </tr>
                                                        </thead>
                                                 <% 
         
     	try{
    		
    		Class.forName(driver).newInstance();

        	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
        	ps1=con.prepareStatement(query1);
        	
        	
        	ps1.setString(1, tester);  
        	rs1=ps1.executeQuery();
        //	int count=0;
        
         // int id = rs1.getInt(1);
            
        	while(rs1.next()){
        		int id = rs1.getInt(1);
        		
    
        %>
                    <tbody>
                                            <tr>
                                                <th scope="row"><%=rs1.getString(1)%></th>
                                                <td><%=rs1.getString(2)%></td>
                                                <td><%=rs1.getString(3)%></td>
                                                <td><%=rs1.getString(4)%></td>
                                                  <td><%=rs1.getString(5)%></td>
                                                
                                                
                                            
                                            </tr>
                                           
                                        
    
        
        
        	<%
        	}
    
            
            
     	}catch(Exception ex){
     		
     		out.println("Unable to make connection with DB");
     		  	    
			ex.printStackTrace();
			
     	}
     		
     %>
                                                        </tbody>
                                                    </table>
                                                    <!-- end user projects -->

                                                </div>
                                                <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                                    <p> Proficient in Web Development and Automation Testing </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
           </div>
                </div></div>
                    
                   </div>
                </div>

                <!-- footer content -->
                <footer>
                    <div class="">
                     
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->

            </div>
            <!-- /page content -->
        </div>

    </div>

    <div id="custom_notifications" class="custom-notifications dsp_none">
        <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
        </ul>
        <div class="clearfix"></div>
        <div id="notif-group" class="tabbed_notifications"></div>
    </div>
    <script>
    
   

    function updateA(){
    	     x=document.getElementById("content1");  // Find the element
    $('#content1').load('UpdateApplications.jsp #content1');  
    }
    
    function uploadA(){
	     x=document.getElementById("content1");  // Find the element
$('#content1').load('DeveloperProfile.html #content1');  
}
    
    function Payment(){
    	 x=document.getElementById("content1");  // Find the element
    	 $('#content1').load('invoice.jsp #content1');  
}
    
    function Rate(){
   	 x=document.getElementById("content1");  // Find the element
   	 $('#content1').load('GiveRatings.jsp #content1');  
}
    
    

    
    
    </script>
   <script src="js/generate.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- icheck -->
    <script src="js/icheck/icheck.min.js"></script>

    <script src="js/custom.js"></script>

       <script src="js/dropzone/dropzone.js"></script>
</body>

</html>