<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

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
    
     <script src="js/downloadApp.js"></script>
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
                            <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2>Sumit Mendiratta</h2>
                        </div>
                    </div>
            

                    <br />

                   
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            <h3>Welcome</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="index.html">Dashboard</a>
                                        </li>
                                        <li><a href="index2.html">Dashboard2</a>
                                        </li>
                                        <li><a href="index3.html">Dashboard3</a>
                                        </li>
                                    </ul>
                                </li>
                             
                               
                                <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="tables.html">Tables</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">Table Dynamic</a>
                                        </li>
                                    </ul>
                                </li>

                                <li><a><i class="fa fa-laptop"></i> Page <span class="label label-success pull-right">Page</span></a>
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
                                    <img src="images/img.jpg" alt="">Sumit Mendiratta
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li><a href="javascript:;"><span><i class="fa fa-user pull-right"></i>  Profile</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                           
                                            <span><i class="fa fa-cog pull-right"></i>Settings</span>
                                        </a>
                                    </li>
                                   
                                    <li><a href="#"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                                    </li>
                                </ul>
                            </li>

                            <li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle i_num" data-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-envelope-o"></i>
                                    
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
            
                 <%
            
       	 String driver ="com.mysql.jdbc.Driver";
       	 String dburl = "jdbc:mysql://localhost/mtaas";
       	 String dbusername = "root";
       	 String dbpassword = "root";

         Connection con=null;
         ResultSet rs=null;
         PreparedStatement ps=null;
         String query1="select developer_name from app_details t where t.app_status LIKE '%Completed%'";
        

%>

       <div class="right_col" role="main">
       <div id="content1">
            <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Generate Bill<small></small></h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                     
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                                      <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Developer<span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                   <select class="form-control" required="required" id="devs" name="devs">
                                                  
  <% 



try{
	
		Class.forName(driver).newInstance();

    	con = DriverManager.getConnection(dburl,dbusername,dbpassword);
    	ps=con.prepareStatement(query1);
    	
    	rs=ps.executeQuery();
    	
    	
    	
    
     	
    	while(rs.next()){
    		
     %>
     
      <option><%=rs.getString(1) %></option>
     
     
     <% 		
    		
    		
    	}
    	

	}catch (Exception e) {
		System.out.println("Unable to make connection with DB in generate bill");
     e.printStackTrace();
    
 }
    	

%>           
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">No. Of Reported Bugs <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">No. Of Actual bugs <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">High Severity Bugs <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Medium Severity Bugs<span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                          <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Low Severity Bugs<span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                       
                                                                            <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <button type="reset" class="btn btn-primary">Cancel</button>
                                                <button type="button" class="btn btn-success" onclick="show()" >Submit</button>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                                
                                  <div class="form-group" id="result" style="color:red;font-size:25px;">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                              
                                            </div>
                                        </div>
                            </div>
                        </div>
                    </div>
                  
       </div>
            
          <script>
                        $(document).ready(function () {
                        	
                            $('#birthday').daterangepicker({
                                singleDatePicker: true,
                                calender_style: "picker_4"
                            }, function (start, end, label) {
                                console.log(start.toISOString(), end.toISOString(), label);
                            });
                        });
                        
                        
                        function show(){
                        	
                        	$("#result").html("Tester Accuracy is 70% ");
                        	$("#result").append("<br>");
                        	var d = $("#devs option:selected").text();
                        	$("#result").append("Bill Amount for App provider : "+d+" is $250.30");
                        	$("#result").append("<br>");
                        	$("#result").append("Tester Amount is 147.6$");
                        	
                        }
                    </script>

                    </div>

                </div>
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

    <script src="js/bootstrap.min.js"></script>

    <!-- icheck -->
    <script src="js/icheck/icheck.min.js"></script>

    <script src="js/custom.js"></script>

       <script src="js/dropzone/dropzone.js"></script>
</body>

</html>