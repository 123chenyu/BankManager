<%--
  Created by IntelliJ IDEA.
  User: Reus_cy
  Date: 2017/11/18
  Time: 13:48
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
                        <i class="icon-user"></i> 设置
                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a tabindex="-1" href="#">Settings</a></li>
                        <li class="divider"></li>
                        <li><a tabindex="-1" href="sign-in.html">退出</a></li>
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
                    <li ><a href="/BankManager/card/getCards">银行卡查询</a></li>
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
                    <li ><a href="/BankManager/jspweb/jspweb/privacy-policy.jsp">Privacy Policy</a></li>
                    <li ><a href="/BankManager/jspweb/jspweb/terms-and-conditions.jsp">Terms and Conditions</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <script type="text/javascript" src="/BankManagerlib/jqplot/jquery.jqplot.min.js"></script>
            <script type="text/javascript" charset="utf-8" src="/BankManagerlib/javascripts/graphDemo.js"></script>
            <script>

                window.onload = function(){

                    var a = document.getElementById('a');
                    var b = document.getElementById('b');
                    var c = document.getElementById('c');
                    setInterval(function(){

                        var now = new Date();
                        a.innerHTML = now.getHours()
                        b.innerHTML = now.getMinutes();
                        c.innerHTML = now.getSeconds();
                    },1000);
                };

            </script>
            <div class="stats">
                <p class="stat"><span class="number" id="c">53</span>秒</p>
                <p class="stat"><span class="number" id="b">27</span>分</p>
                <p class="stat"><span class="number" id="a">15</span>时</p>
            </div>
            <h1 class="page-title">Welcome</h1>

            <div class="container-fluid">

                <div class="row-fluid">
                    <div class="http-error">
                        <h1>梦宇</h1>
                        <p class="info">欢迎您的到来！</p>
                        <p><i class="icon-home"></i></p>
                        <p><a href="/BankManager/jspweb/index.jsp">这里是您的家！</a></p>

                    </div>
                </div>


                <!---->
                <!-- <div class="row-fluid">
                    <div class="block">
                        <p class="block-heading" data-toggle="collapse" data-target="#chart-container">Performance Chart</p>
                        <div id="chart-container" class="block-body collapse in">
                            <div id="line-chart"></div>
                        </div>
                    </div>
                </div>
                -->

                <!--
                <div class="row-fluid">
                    <div class="block span6">
                        <div class="block-heading" data-toggle="collapse" data-target="#tablewidget">Users</div>
                        <div id="tablewidget" class="block-body collapse in">
                            <table class="table">
                              <thead>
                                <tr>
                                  <th>First Name</th>
                                  <th>Last Name</th>
                                  <th>Username</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>Mark</td>
                                  <td>Tompson</td>
                                  <td>the_mark7</td>
                                </tr>
                                <tr>
                                  <td>Ashley</td>
                                  <td>Jacobs</td>
                                  <td>ash11927</td>
                                </tr>
                                <tr>
                                  <td>Audrey</td>
                                  <td>Ann</td>
                                  <td>audann84</td>
                                </tr>
                                <tr>
                                  <td>John</td>
                                  <td>Robinson</td>
                                  <td>jr5527</td>
                                </tr>
                                <tr>
                                  <td>Aaron</td>
                                  <td>Butler</td>
                                  <td>aaron_butler</td>
                                </tr>
                                <tr>
                                  <td>Chris</td>
                                  <td>Albert</td>
                                  <td>cab79</td>
                                </tr>
                              </tbody>
                            </table>
                            <p><a href="users.html">More...</a></p>
                        </div>
                    </div>
                    <div class="block span6">
                        <div class="block-heading" data-toggle="collapse" data-target="#widget1container">Collapsible </div>
                        <div id="widget1container" class="block-body collapse in">
                            <h2>Using Ruby?</h2>
                            <p>This template was developed with <a href="http://middlemanapp.com/" target="_blank">Middleman</a> and includes .erb layouts and views.</p>
                            <p>All of the views you see here (sign in, sign up, users, etc) are already split up so you don't have to waste your time doing it yourself!</p>
                            <p>The layout.erb file includes the header, footer, and side navigation and all of the views are broken out into their own files.</p>
                            <p>If you aren't using Ruby, there is also a set of plain HTML files for each page, just like you would expect.</p>
                        </div>
                    </div>
                </div>
                -->

                <!--
                <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
                <div class="row-fluid">
                    <div class="block span6">
                        <div class="block-heading" data-toggle="collapse" data-target="#widget2container">History<span class="label label-warning">+10</span></div>
                        <div id="widget2container" class="block-body collapse in">
                            <table class="table">
                              <tbody>
                                  <tr>
                                      <td>
                                          <p><i class="icon-user"></i> Mark Otto</p>
                                      </td>
                                      <td>
                                          <p>Amount: $1,247</p>
                                      </td>
                                      <td>
                                          <p>Date: 7/19/2012</p>
                                          <a href="#">View Transaction</a>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <p><i class="icon-user"></i> Audrey Ann</p>
                                      </td>
                                      <td>
                                          <p>Amount: $2,793</p>
                                      </td>
                                      <td>
                                          <p>Date: 7/12/2012</p>
                                          <a href="#">View Transaction</a>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <p><i class="icon-user"></i> Mark Tompson</p>
                                      </td>
                                      <td>
                                          <p>Amount: $2,349</p>
                                      </td>
                                      <td>
                                          <p>Date: 3/10/2012</p>
                                          <a href="#">View Transaction</a>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <p><i class="icon-user"></i> Ashley Jacobs</p>
                                      </td>
                                      <td>
                                          <p>Amount: $1,192</p>
                                      </td>
                                      <td>
                                          <p>Date: 1/19/2012</p>
                                          <a href="#">View Transaction</a>
                                      </td>
                                  </tr>

                              </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="block span6">
                        <p class="block-heading">Not Collapsible</p>
                        <div class="block-body">
                            <h2>Tip of the Day</h2>
                            <p>Fava bean jícama seakale beetroot courgette shallot amaranth pea garbanzo carrot radicchio peanut leek pea sprouts arugula brussels sprout green bean. Spring onion broccoli chicory shallot winter purslane pumpkin gumbo cabbage squash beet greens lettuce celery. Gram zucchini swiss chard mustard burdock radish brussels sprout groundnut. Asparagus horseradish beet greens broccoli brussels sprout bitterleaf groundnut cress sweet pepper leek bok choy shallot celtuce scallion chickpea radish pea sprouts.</p>
                            <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
                        </div>
                    </div>
                </div>
                -->
            </div>
        </div>


        <!--
        <footer>
            <hr>

            <p class="pull-right">Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>


            <p>&copy; 2012 <a href="#">Portnine</a></p>
        </footer>

    -->


        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="/BankManager/lib/bootstrap/js/bootstrap.js"></script>

    </div>
</div>
</body>
</html>


