<%--
  Created by IntelliJ IDEA.
  User: Reus_cy
  Date: 2017/11/18
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootstrap Admin</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="/BankManager/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/BankManager/lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="/BankManager/stylesheets/theme.css">
    <link rel="stylesheet" href="/BankManager/lib/font-awesome/css/font-awesome.css">

    <script src="/BankManager/lib/jquery-1.8.1.min.js" type="text/javascript"></script>

    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7"> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8"> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body>
<!--<![endif]-->

<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <ul class="nav pull-right">

                <li id="fat-menu" class="dropdown">
                    <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-user"></i> Jack Smith
                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a tabindex="-1" href="#">Settings</a></li>
                        <li class="divider"></li>
                        <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
                    </ul>
                </li>

            </ul>
            <a class="brand" href="/BankManager/jspweb/index.jsp"><span class="first">Your</span> <span class="second">Company</span></a>
        </div>
    </div>
</div>


<div class="container-fluid">

    <div class="row-fluid">
        <div class="span3">
            <div class="sidebar-nav">
                <div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>Dashboard</div>
                <ul id="dashboard-menu" class="nav nav-list collapse in">
                    <li><a href="/BankManager/jspweb/index.jsp">Home</a></li>
                    <li ><a href="/BankManager/jspweb/users.jsp">Sample List</a></li>
                    <li ><a href="/BankManager/jspweb/user.jsp">Sample Item</a></li>
                    <li ><a href="/BankManager/jspweb/gallery.jsp">Gallery</a></li>
                    <li class="active"><a href="/BankManager/jspweb/calendar.jsp">Calendar</a></li>
                    <li ><a href="/BankManager/jspweb/faq.jsp">Faq</a></li>
                    <li ><a href="/BankManager/jspweb/help.jsp">Help</a></li>

                </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                    <li ><a href="/BankManager/jspweb/sign-in.jsp">Sign In</a></li>
                    <li ><a href="/BankManager/jspweb/sign-up.jsp">Sign Up</a></li>
                    <li ><a href="/BankManager/jspweb/reset-password.jsp">Reset Password</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#settings-menu"><i class="icon-exclamation-sign"></i>Error Pages</div>
                <ul id="settings-menu" class="nav nav-list collapse in">
                    <li ><a href="403.html">403 page</a></li>
                    <li ><a href="404.html">404 page</a></li>
                    <li ><a href="500.html">500 page</a></li>
                    <li ><a href="503.html">503 page</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>Legal</div>
                <ul id="legal-menu" class="nav nav-list collapse in">
                    <li ><a href="/BankManager/jspweb/privacy-policy.jsp">Privacy Policy</a></li>
                    <li ><a href="/BankManager/jspweb/terms-and-conditions.jsp">Terms and Conditions</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <link rel='stylesheet' type='text/css' href='/BankManager/lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.css' />
            <link rel='stylesheet' type='text/css' href='/BankManager/lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.print.css' media='print' />
            <script type='text/javascript' src='/BankManager/lib/fullcalendar-1.5.3/fullcalendar/fullcalendar.min.js'></script>

            <script type='text/javascript'>

                $(document).ready(function() {

                    var date = new Date();
                    var d = date.getDate();
                    var m = date.getMonth();
                    var y = date.getFullYear();

                    $('#calendar').fullCalendar({
                        header: false,
                    });
                    $('#calendar').fullCalendar('next');

                });

            </script>
            <style type='text/css'>

                #calendar {
                    width: 100%;
                    margin: 0 auto;
                }

            </style>



            <div class="stats">
                <p class="stat"><span class="number">5</span>users</p>
                <p class="stat"><span class="number">19</span>Events</p>
            </div>
            <h1 class="page-title">Calendar</h1>

            <div class="well">
                <h2>Upcoming Events</h2>
                <div id='calendar'></div>
            </div>
            <p>This sample is rendered with <a target="_blank" href="http://arshaw.com/fullcalendar/">Full Calendar</a> with no custom styling.</p>

        </div>
    </div>



    <footer>
        <hr>

        <p class="pull-right">Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>


        <p>&copy; 2012 <a href="#">Portnine</a></p>
    </footer>




    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/BankManager/lib/bootstrap/js/bootstrap.js"></script>











</div>

</body>
</html>
