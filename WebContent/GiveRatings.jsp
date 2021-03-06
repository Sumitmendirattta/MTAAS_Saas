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




    <link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="js/star-rating.js" type="text/javascript"></script>
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

            <!-- page content -->
            <div class="right_col" role="main">

           
                    <div class="clearfix"></div>
<div id="content1" style="width:100px;height:100px">
                    <div class="row">
               
                    <div class="page-title">
                        <div class="title_left">
                            <h3>Rating </h3>
                        </div>

                      
                    </div>
                    <div class="clearfix"></div>
 <div id="content1">
                    <div class="row">
                       
<form>
  
     <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> How do you feel about your performance on this test?</label>
                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select class="form-control" id="skills" name="skills" >
                                                  
                                                    <option>Fantastic</option>
                                                    <option>Great</option>
                                                    <option>Pretty Good</option>
                                                    <option>OK</option>
                                                      <option>Not So Good</option>
                                                    
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                           <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"> Do You want to come back again for our website ?</label>
                                          <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select class="form-control" id="skills" name="skills" >
                                                  
                                                    <option>Yes Absolutely..!!</option>
                                                    <option>No</option>
                                                     <option>May Be</option>
                                                    
                                                    
                                                    
                                                </select>
                                            </div>
                                        </div>
      <br>
                                        <br>
                                        <br>
                                        <br>
    
    <div class="form-group" style="margin-top:10px">
    <button type="submit" class="btn btn-primary" onclick="alert('Thank You..!!')">Submit</button>
    <button type="reset" class="btn btn-default">Reset</button>
   
    </div>
</form>
</div>
                    </div>
                    
           
                </div>
                </div>
                    
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

    <script src="js/bootstrap.min.js"></script>

 

   <script>
    jQuery(document).ready(function () {
        $("#input-21f").rating({
            starCaptions: function(val) {
                if (val < 3) {
                    return val;
                } else {
                    return 'high';
                }
            },
            starCaptionClasses: function(val) {
                if (val < 3) {
                    return 'label label-danger';
                } else {
                    return 'label label-success';
                }
            },
            hoverOnClear: false
        });
        
        $('#rating-input').rating({
              min: 0,
              max: 5,
              step: 1,
              size: 'lg',
              showClear: false
           });
           
        $('#btn-rating-input').on('click', function() {
            $('#rating-input').rating('refresh', {
                showClear:true, 
                disabled:true
            });
        });
        
        
        $('.btn-danger').on('click', function() {
            $("#kartik").rating('destroy');
        });
        
        $('.btn-success').on('click', function() {
            $("#kartik").rating('create');
        });
        
        $('#rating-input').on('rating.change', function() {
            alert($('#rating-input').val());
        });
        
        
        $('.rb-rating').rating({'showCaption':true, 'stars':'3', 'min':'0', 'max':'3', 'step':'1', 'size':'xs', 'starCaptions': {0:'status:nix', 1:'status:wackelt', 2:'status:geht', 3:'status:laeuft'}});
    });
</script>

</body>

</html>