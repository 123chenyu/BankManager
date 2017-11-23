<%--
  Created by IntelliJ IDEA.
  User: Reus_cy
  Date: 2017/11/18
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                        <i class="icon-user"></i> 设置
                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a tabindex="-1" href="#">Settings</a></li>
                        <li class="divider"></li>
                        <li><a tabindex="-1" href="sign-in.jsp">退出</a></li>
                    </ul>
                </li>

            </ul>
            <a class="brand" href="/BankManager/jspweb/index.jsp"><span class="first">梦宇</span> <span class="second">银行</span></a>
        </div>
    </div>
</div>


<div class="container-fluid">

    <div class="row-fluid">
        <div class="span3">
            <div class="sidebar-nav">
                <div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>个人中心</div>
                <ul id="dashboard-menu" class="nav nav-list collapse in">
                    <li><a href="/BankManager/jspweb/index.jsp">主页面</a></li>
                    <li ><a href="/BankManager/jspweb/users.jsp">银行卡查询</a></li>
                    <li ><a href="/BankManager/jspweb/user.jsp">个人信息中心</a></li>
                    <li ><a href="/BankManager/jspweb/gallery.jsp">缴费</a></li>
                    <li ><a href="/BankManager/jspweb/calendar.jsp">Calendar</a></li>
                    <li ><a href="/BankManager/jspweb/faq.jsp">账单查询</a></li>
                    <li ><a href="/BankManager/jspweb/help.jsp">帮助</a></li>

                </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>用户管理<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                    <li ><a href="/BankManager/jspweb/sign-in.jsp">登入</a></li>
                    <li ><a href="/BankManager/jspweb/sign-up.jsp">注册</a></li>
                    <li ><a href="/BankManager/jspweb/reset-password.jsp">忘记密码</a></li>
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
            <h1 class="page-title">银行卡管理</h1>
            <div class="btn-toolbar">
                <button class="btn btn-primary"><i class="icon-plus"></i> 添加新银行卡</button>
                <button class="btn">开卡</button>
                <button class="btn">销卡</button>
                <button class="btn">挂失</button>
                <button class="btn">补卡</button>
                <div class="btn-group">
                </div>
            </div>
            <div class="well">
                <table class="table">
                    <thead>
                    <tr>
                        <th>卡号</th>
                        <th>银行卡状态</th>
                        <th>银行卡余额</th>
                        <th>开卡时间</th>
                        <th style="width: 26px;"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="listCard" items="${listCard}" >


                    <tr>
                        <td>${listCard.cardId}</td>
                        <td>${listCard.cardState}</td>
                        <td>${listCard.cardBalance}</td>
                        <td>${listCard.cardTime}</td>
                        <td>
                            <a href="/BankManager/jspweb/user.jsp"><i class="icon-pencil"></i></a>
                            <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
                        </td>
                    </tr>

                    </c:forEach>



                    </tbody>
                </table>
            </div>
            <div class="pagination">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>

            <div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3 id="myModalLabel">Delete Confirmation</h3>
                </div>
                <div class="modal-body">
                    <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
                    <button class="btn btn-danger" data-dismiss="modal">Delete</button>
                </div>
            </div>

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
</div>


</body>
</html>

