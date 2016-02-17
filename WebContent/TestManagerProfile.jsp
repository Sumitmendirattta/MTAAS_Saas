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
                            <img src="images/TestManager.jpg" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2>Test Manager</h2>
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
                                         <li><a href="TestManagerProfile.jsp"><b> Home </b></a>
                                        </li>
                                    </ul>
                                </li>
                             
                               
                                <li><a><i class="fa fa-table"></i> Actions<span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        
                                        
                                        <li><a href="javascript:displayT()">Show Testers</a>
                                        </li>
                                        <li><a href="javascript:displayA()">Show Applications</a>
                                        </li>
                                        <li><a href="javascript:displayD()">Show Developers</a>
                                        </li>
                                         <li><a href="javascript:assignT()">Assign Applications</a>
                                        </li>
                                        <li><a href="javascript:generateBill()">Generate Billing</a>
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
                                    <img src="images/TestManager.jpg" alt="">Test Manager
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

           
                    <div class="clearfix"></div>
				<div id="content1">
                    <div class="row">
               
                    <div class="page-title">
                        <div class="title_left">
                            <h3>Welcome Test Manager..!! </h3>
                        </div>

                    </div>
                    <div class="clearfix"></div>

                    
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Total Users</span>
                            <div class="count">10</div>
                            <span class="count_bottom"><i class="green">4% </i> From last Week</span>
                        </div>
                    </div>
                    
                      <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Total Testers</span>
                            <div class="count green">2</div>
                            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>10% </i> From last Week</span>
                        </div>
                    </div>
           
             <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Total Developers</span>
                            <div class="count">8</div>
                            <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>90% </i> From last Week</span>
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
    
    function show(){
    	
    	$("#result").show();                        	
    }

    function assignT(){
    	     x=document.getElementById("content1");  // Find the element
    $('#content1').load('AssignTesterApp.jsp #assign');  
    }
    
    function displayT(){
	     x=document.getElementById("content1");  // Find the element
$('#content1').load('DisplayTesters.jsp #content1');  
}
    
    function displayD(){
	     x=document.getElementById("content1");  // Find the element
$('#content1').load('DisplayDevelopers.jsp #content1');  
}
    
    function displayA(){
	     x=document.getElementById("content1");  // Find the element
$('#content1').load('DisplayApplications.jsp #content1');  
}
    
    function generateBill(){
	     x=document.getElementById("content1");  // Find the element
$('#content1').load('GenerateBill.jsp #content1');  
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