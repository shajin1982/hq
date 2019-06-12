<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/4
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>化轻内部平台首页 </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- layui-->
    <script src="vendor/layui/layui.js"></script>
    <link rel="stylesheet" href="vendor/layui/css/layui.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page">
    <!-- Main Navbar-->
    <header class="header">
        <nav class="navbar">
            <!-- Search Box-->
            <div class="search-box">
                <button class="dismiss"><i class="icon-close"></i></button>
                <form id="searchForm" action="#" role="search">
                    <input type="search" placeholder="What are you looking for..." class="form-control">
                </form>
            </div>
            <div class="container-fluid">
                <div class="navbar-holder d-flex align-items-center justify-content-between">
                    <!-- Navbar Header-->
                    <div class="navbar-header">
                        <!-- Navbar Brand --><a href="index.html" class="navbar-brand d-none d-sm-inline-block">
                        <div class="brand-text d-none d-lg-inline-block"><span>南通化轻</span><strong>内部平台</strong></div>
                        <div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>BD</strong></div>
                    </a>
                        <!-- Toggle Button--><a id="toggle-btn" href="#"
                                                class="menu-btn active"><span></span><span></span><span></span></a>
                    </div>
                    <!-- Navbar Menu -->
                    <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                        <!-- Search-->
                        <!--                <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>-->
                        <!-- Notifications-->
                        <!--                <li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>-->
                        <!--                  <ul aria-labelledby="notifications" class="dropdown-menu">-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item"> -->
                        <!--                        <div class="notification">-->
                        <!--                          <div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>-->
                        <!--                          <div class="notification-time"><small>4 minutes ago</small></div>-->
                        <!--                        </div></a></li>-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item"> -->
                        <!--                        <div class="notification">-->
                        <!--                          <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>-->
                        <!--                          <div class="notification-time"><small>4 minutes ago</small></div>-->
                        <!--                        </div></a></li>-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item"> -->
                        <!--                        <div class="notification">-->
                        <!--                          <div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>-->
                        <!--                          <div class="notification-time"><small>4 minutes ago</small></div>-->
                        <!--                        </div></a></li>-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item"> -->
                        <!--                        <div class="notification">-->
                        <!--                          <div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>-->
                        <!--                          <div class="notification-time"><small>10 minutes ago</small></div>-->
                        <!--                        </div></a></li>-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all notifications</strong></a></li>-->
                        <!--                  </ul>-->
                        <!--                </li>-->
                        <!-- Messages                        -->
                        <!--                <li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>-->
                        <!--                  <ul aria-labelledby="notifications" class="dropdown-menu">-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> -->
                        <!--                        <div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
                        <!--                        <div class="msg-body">-->
                        <!--                          <h3 class="h5">Jason Doe</h3><span>Sent You Message</span>-->
                        <!--                        </div></a></li>-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> -->
                        <!--                        <div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
                        <!--                        <div class="msg-body">-->
                        <!--                          <h3 class="h5">Frank Williams</h3><span>Sent You Message</span>-->
                        <!--                        </div></a></li>-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item d-flex"> -->
                        <!--                        <div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>-->
                        <!--                        <div class="msg-body">-->
                        <!--                          <h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>-->
                        <!--                        </div></a></li>-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages   </strong></a></li>-->
                        <!--                  </ul>-->
                        <!--                </li>-->
                        <!--                &lt;!&ndash; Languages dropdown    &ndash;&gt;-->
                        <!--                <li class="nav-item dropdown"><a id="languages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link language dropdown-toggle"><img src="img/flags/16/GB.png" alt="English"><span class="d-none d-sm-inline-block">English</span></a>-->
                        <!--                  <ul aria-labelledby="languages" class="dropdown-menu">-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/DE.png" alt="English" class="mr-2">German</a></li>-->
                        <!--                    <li><a rel="nofollow" href="#" class="dropdown-item"> <img src="img/flags/16/FR.png" alt="English" class="mr-2">French                                         </a></li>-->
                        <!--                  </ul>-->
                        <!--                </li>-->
                        <!-- Logout    -->
                        <!--                <li class="nav-item"><a href="login.html" class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i class="fa fa-sign-out"></i></a></li>-->
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="page-content d-flex align-items-stretch">
        <!-- Side Navbar -->
        <nav class="side-navbar">
            <!-- Sidebar Header-->
            <div class="sidebar-header d-flex align-items-center">
                <div class="avatar"><img src="${WXUser.avatar}" alt="..." class="img-fluid rounded-circle"></div>
                <div class="title">
                    <h1 class="h4">${WXUser.name}</h1>
                    <p>${WXUser.position}</p>
                </div>
            </div>
            <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
            <ul class="list-unstyled">
                <li class="active"><a href="index.html"> <i class="icon-home"></i>首页</a></li>
                <li><a href="tables.html"> <i class="icon-grid"></i>泛微系统相关报表 </a></li>
                <li><a href="charts.html"> <i class="fa fa-bar-chart"></i>U9系统相关报表 </a></li>
                <li><a href="forms.html"> <i class="icon-padnote"></i>信息查询 </a></li>
                <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i
                        class="icon-interface-windows"></i>部门应用 </a>
                    <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                        <li><a href="#">人行中心</a></li>
                        <li><a href="internalaudit">内审中心</a></li>
                        <li><a href="#">物流中心</a></li>
                        <li><a href="#">安环中心</a></li>
                        <li><a href="#">财务中心</a></li>
                        <li><a href="#">信息中心</a></li>
                    </ul>
                </li>
                <li><a href="/hq_war_exploded"> <i class="icon-interface-windows"></i>登录页面</a></li>
            </ul>
            <span class="heading">后台应用</span>
            <ul class="list-unstyled">
                <li><a href="#"> <i class="icon-flask"></i>Demo </a></li>
                <li><a href="#"> <i class="icon-screen"></i>Demo </a></li>
                <li><a href="#"> <i class="icon-mail"></i>Demo </a></li>
                <li><a href="#"> <i class="icon-picture"></i>Demo </a></li>
            </ul>
        </nav>
        <div class="content-inner">
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">功能页面</h2>
                </div>
            </header>
            <!-- Dashboard Counts Section-->
            <section class="dashboard-counts no-padding-bottom">
                <div class="container-fluid">
                    <div class="row bg-white has-shadow">
                        <!-- Item -->
                        <div class="col-xl-6 col-sm-12">
                            <div class="item text-center">
                                <div class="layui-inline text-center" id="test1"> <!-- 注意：这一层元素并不是必须的 -->
                                </div>
                                <script>
                                    layui.use('laydate', function () {
                                        var laydate = layui.laydate;
                                        //执行一个laydate实例
                                        laydate.render({
                                            elem: '#test1' //指定元素
                                            , show: true //直接显示
                                            , position: 'static'//嵌套在指定容器中
                                            , isInitValue: false //是否允许填充初始值，默认为 true
                                            , btns: ['clear', 'now']//只显示清空和现在
                                            , theme: '#E066FF'//自定义背景色主题 - 非常实用
                                            , calendar: true//允许显示公历节日
                                            , mark: {//标注重要日子
                                                '0-0-08': '工资'
                                            }
                                            , lang: 'cn'
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                        <!-- Item -->
                        <div class="col-xl-6 col-sm-12">
                            <div class="item text-center">
                                <div class="layui-carousel" id="test2">
                                    <div carousel-item>
                                        <div style="background-color: #00F7DE"></div>
                                        <div style="background-color: #5a48ea"></div>
                                        <div style="background-color: #0062cc"></div>
                                        <div style="background-color: #c82333"></div>
                                        <div style="background-color: #FD482C"></div>
                                    </div>
                                </div>
                                <!-- 条目中可以是任意内容，如：<img src=""> -->
                                <script>
                                    layui.use('carousel', function () {
                                        var carousel = layui.carousel;
                                        //建造实例
                                        carousel.render({
                                            elem: '#test2'
                                            , width: '100%' //设置容器宽度
                                            , arrow: 'always' //始终显示箭头
                                            //,anim: 'updown' //切换动画方式
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Dashboard Header Section    -->
            <section class="dashboard-header">
                <div class="container-fluid">
                    <div class="row">
                        <!-- Statistics -->
                        <div class="statistics col-lg-3 col-12">
                            <div class="statistic d-flex align-items-center bg-white has-shadow">

                            </div>

                            <div class="statistic d-flex align-items-center bg-white has-shadow">
                                <div class="icon bg-green"><i class="fa fa-calendar-o"></i></div>
                                <div class="text"><strong>152</strong><br>
                                    <small>Interviews</small>
                                </div>
                            </div>
                            <div class="statistic d-flex align-items-center bg-white has-shadow">
                                <div class="icon bg-orange"><i class="fa fa-paper-plane-o"></i></div>
                                <div class="text"><strong>147</strong><br>
                                    <small>Forwards</small>
                                </div>
                            </div>
                        </div>
                        <!-- 饼状图-->
                        <div class="chart col-lg-6 col-12">
                            <div class="line-chart bg-white d-flex align-items-center justify-content-center has-shadow">
                                <canvas id="lineCahrt"></canvas>
                            </div>
                        </div>
                        <div class="chart col-lg-3 col-12">
                            <!-- Bar Chart   -->
                            <div class="bar-chart has-shadow bg-white">
                                <div class="title"><strong class="text-violet">天气情况</strong><br>
                                    <small>服务来源中国天气</small>
                                </div>
                                <!-- 化轻天气 -->
                                <div id="weather-view-he"></div>
                                <script>
                                    WIDGET = {ID: '7Njza2Cwmt'};
                                </script>
                                <script type="text/javascript"
                                        src="https://apip.weatherdt.com/view/static/js/r.js?v=1111"></script>
                            </div>
                            <!-- Numbers-->
                            <div class="statistic d-flex align-items-center bg-white has-shadow">
                                <div class="icon bg-green"><i class="fa fa-line-chart"></i></div>
                                <div class="text"><strong>99.9%</strong><br>
                                    <small>Success Rate</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Projects Section-->
            <section class="projects no-padding-top">
                <div class="container-fluid">
                    <!-- Project-->
                    <div class="project">
                        <div class="row bg-white has-shadow">
                            <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                                <div class="project-title d-flex align-items-center">
                                    <div class="image has-shadow"><img src="img/project-1.jpg" alt="..."
                                                                       class="img-fluid"></div>
                                    <div class="text">
                                        <h3 class="h4">Project Title</h3>
                                        <small>Lorem Ipsum Dolor</small>
                                    </div>
                                </div>
                                <div class="project-date"><span class="hidden-sm-down">Today at 4:24 AM</span></div>
                            </div>
                            <div class="right-col col-lg-6 d-flex align-items-center">
                                <div class="time"><i class="fa fa-clock-o"></i>12:00 PM</div>
                                <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                                <div class="project-progress">
                                    <div class="progress">
                                        <div role="progressbar" style="width: 45%; height: 6px;" aria-valuenow="25"
                                             aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-red"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Project-->
                    <div class="project">
                        <div class="row bg-white has-shadow">
                            <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                                <div class="project-title d-flex align-items-center">
                                    <div class="image has-shadow"><img src="img/project-2.jpg" alt="..."
                                                                       class="img-fluid"></div>
                                    <div class="text">
                                        <h3 class="h4">Project Title</h3>
                                        <small>Lorem Ipsum Dolor</small>
                                    </div>
                                </div>
                                <div class="project-date"><span class="hidden-sm-down">Today at 4:24 AM</span></div>
                            </div>
                            <div class="right-col col-lg-6 d-flex align-items-center">
                                <div class="time"><i class="fa fa-clock-o"></i>12:00 PM</div>
                                <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                                <div class="project-progress">
                                    <div class="progress">
                                        <div role="progressbar" style="width: 60%; height: 6px;" aria-valuenow="25"
                                             aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-green"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Project-->
                    <div class="project">
                        <div class="row bg-white has-shadow">
                            <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                                <div class="project-title d-flex align-items-center">
                                    <div class="image has-shadow"><img src="img/project-3.jpg" alt="..."
                                                                       class="img-fluid"></div>
                                    <div class="text">
                                        <h3 class="h4">Project Title</h3>
                                        <small>Lorem Ipsum Dolor</small>
                                    </div>
                                </div>
                                <div class="project-date"><span class="hidden-sm-down">Today at 4:24 AM</span></div>
                            </div>
                            <div class="right-col col-lg-6 d-flex align-items-center">
                                <div class="time"><i class="fa fa-clock-o"></i>12:00 PM</div>
                                <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                                <div class="project-progress">
                                    <div class="progress">
                                        <div role="progressbar" style="width: 50%; height: 6px;" aria-valuenow="25"
                                             aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-violet"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Project-->
                    <div class="project">
                        <div class="row bg-white has-shadow">
                            <div class="left-col col-lg-6 d-flex align-items-center justify-content-between">
                                <div class="project-title d-flex align-items-center">
                                    <div class="image has-shadow"><img src="img/project-4.jpg" alt="..."
                                                                       class="img-fluid"></div>
                                    <div class="text">
                                        <h3 class="h4">Project Title</h3>
                                        <small>Lorem Ipsum Dolor</small>
                                    </div>
                                </div>
                                <div class="project-date"><span class="hidden-sm-down">Today at 4:24 AM</span></div>
                            </div>
                            <div class="right-col col-lg-6 d-flex align-items-center">
                                <div class="time"><i class="fa fa-clock-o"></i>12:00 PM</div>
                                <div class="comments"><i class="fa fa-comment-o"></i>20</div>
                                <div class="project-progress">
                                    <div class="progress">
                                        <div role="progressbar" style="width: 50%; height: 6px;" aria-valuenow="25"
                                             aria-valuemin="0" aria-valuemax="100" class="progress-bar bg-orange"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Client Section-->
            <section class="client no-padding-top">
                <div class="container-fluid">
                    <div class="row">
                        <!-- Work Amount  -->
                        <div class="col-lg-4">
                            <div class="work-amount card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard1" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i
                                                class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard1"
                                             class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                     class="dropdown-item remove">
                                            <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit">
                                            <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h3>Work Hours</h3>
                                    <small>Lorem ipsum dolor sit amet.</small>
                                    <div class="chart text-center">
                                        <div class="text"><strong>90</strong><br><span>Hours</span></div>
                                        <canvas id="pieChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Client Profile -->
                        <div class="col-lg-4">
                            <div class="client card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard2" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i
                                                class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard2"
                                             class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                     class="dropdown-item remove">
                                            <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit">
                                            <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-body text-center">
                                    <div class="client-avatar"><img src="img/avatar-2.jpg" alt="..."
                                                                    class="img-fluid rounded-circle">
                                        <div class="status bg-green"></div>
                                    </div>
                                    <div class="client-title">
                                        <h3>Jason Doe</h3><span>Web Developer</span><a href="#">Follow</a>
                                    </div>
                                    <div class="client-info">
                                        <div class="row">
                                            <div class="col-4"><strong>20</strong><br>
                                                <small>Photos</small>
                                            </div>
                                            <div class="col-4"><strong>54</strong><br>
                                                <small>Videos</small>
                                            </div>
                                            <div class="col-4"><strong>235</strong><br>
                                                <small>Tasks</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="client-social d-flex justify-content-between"><a href="#"
                                                                                                 target="_blank"><i
                                            class="fa fa-facebook"></i></a><a href="#" target="_blank"><i
                                            class="fa fa-twitter"></i></a><a href="#" target="_blank"><i
                                            class="fa fa-google-plus"></i></a><a href="#" target="_blank"><i
                                            class="fa fa-instagram"></i></a><a href="#" target="_blank"><i
                                            class="fa fa-linkedin"></i></a></div>
                                </div>
                            </div>
                        </div>
                        <!-- Total Overdue             -->
                        <div class="col-lg-4">
                            <div class="overdue card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard3" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i
                                                class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard3"
                                             class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                     class="dropdown-item remove">
                                            <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit">
                                            <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h3>Total Overdue</h3>
                                    <small>Lorem ipsum dolor sit amet.</small>
                                    <div class="number text-center">$20,000</div>
                                    <div class="chart">
                                        <canvas id="lineChart1"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Feeds Section-->
            <section class="feeds no-padding-top">
                <div class="container-fluid">
                    <div class="row">
                        <!-- Trending Articles-->
                        <div class="col-lg-6">
                            <div class="articles card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard4" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i
                                                class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard4"
                                             class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                     class="dropdown-item remove">
                                            <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit">
                                            <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-header d-flex align-items-center">
                                    <h2 class="h3">Trending Articles </h2>
                                    <div class="badge badge-rounded bg-green">4 New</div>
                                </div>
                                <div class="card-body no-padding">
                                    <div class="item d-flex align-items-center">
                                        <div class="image"><img src="img/avatar-1.jpg" alt="..."
                                                                class="img-fluid rounded-circle"></div>
                                        <div class="text"><a href="#">
                                            <h3 class="h5">Lorem Ipsum Dolor</h3></a>
                                            <small>Posted on 5th June 2017 by Aria Smith.</small>
                                        </div>
                                    </div>
                                    <div class="item d-flex align-items-center">
                                        <div class="image"><img src="img/avatar-2.jpg" alt="..."
                                                                class="img-fluid rounded-circle"></div>
                                        <div class="text"><a href="#">
                                            <h3 class="h5">Lorem Ipsum Dolor</h3></a>
                                            <small>Posted on 5th June 2017 by Frank Williams.</small>
                                        </div>
                                    </div>
                                    <div class="item d-flex align-items-center">
                                        <div class="image"><img src="img/avatar-3.jpg" alt="..."
                                                                class="img-fluid rounded-circle"></div>
                                        <div class="text"><a href="#">
                                            <h3 class="h5">Lorem Ipsum Dolor</h3></a>
                                            <small>Posted on 5th June 2017 by Ashley Wood.</small>
                                        </div>
                                    </div>
                                    <div class="item d-flex align-items-center">
                                        <div class="image"><img src="img/avatar-4.jpg" alt="..."
                                                                class="img-fluid rounded-circle"></div>
                                        <div class="text"><a href="#">
                                            <h3 class="h5">Lorem Ipsum Dolor</h3></a>
                                            <small>Posted on 5th June 2017 by Jason Doe.</small>
                                        </div>
                                    </div>
                                    <div class="item d-flex align-items-center">
                                        <div class="image"><img src="img/avatar-5.jpg" alt="..."
                                                                class="img-fluid rounded-circle"></div>
                                        <div class="text"><a href="#">
                                            <h3 class="h5">Lorem Ipsum Dolor</h3></a>
                                            <small>Posted on 5th June 2017 by Sam Martinez.</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Check List -->
                        <div class="col-lg-6">
                            <div class="checklist card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard5" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i
                                                class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard5"
                                             class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                     class="dropdown-item remove">
                                            <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit">
                                            <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-header d-flex align-items-center">
                                    <h2 class="h3">To Do List </h2>
                                </div>
                                <div class="card-body no-padding">
                                    <div class="item d-flex">
                                        <input type="checkbox" id="input-1" name="input-1" class="checkbox-template">
                                        <label for="input-1">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.</label>
                                    </div>
                                    <div class="item d-flex">
                                        <input type="checkbox" id="input-2" name="input-2" class="checkbox-template">
                                        <label for="input-2">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.</label>
                                    </div>
                                    <div class="item d-flex">
                                        <input type="checkbox" id="input-3" name="input-3" class="checkbox-template">
                                        <label for="input-3">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.</label>
                                    </div>
                                    <div class="item d-flex">
                                        <input type="checkbox" id="input-4" name="input-4" class="checkbox-template">
                                        <label for="input-4">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.</label>
                                    </div>
                                    <div class="item d-flex">
                                        <input type="checkbox" id="input-5" name="input-5" class="checkbox-template">
                                        <label for="input-5">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.</label>
                                    </div>
                                    <div class="item d-flex">
                                        <input type="checkbox" id="input-6" name="input-6" class="checkbox-template">
                                        <label for="input-6">Lorem ipsum dolor sit amet, consectetur adipisicing
                                            elit.</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Updates Section-->
            <section class="updates no-padding-top">
                <div class="container-fluid">
                    <div class="row">
                        <!-- Recent Updates-->
                        <div class="col-lg-4">
                            <div class="recent-updates card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard6" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i
                                                class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard6"
                                             class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                     class="dropdown-item remove">
                                            <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit">
                                            <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-header">
                                    <h3 class="h4">Recent Updates</h3>
                                </div>
                                <div class="card-body no-padding">
                                    <!-- Item-->
                                    <div class="item d-flex justify-content-between">
                                        <div class="info d-flex">
                                            <div class="icon"><i class="icon-rss-feed"></i></div>
                                            <div class="title">
                                                <h5>Lorem ipsum dolor sit amet.</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed.</p>
                                            </div>
                                        </div>
                                        <div class="date text-right"><strong>24</strong><span>May</span></div>
                                    </div>
                                    <!-- Item-->
                                    <div class="item d-flex justify-content-between">
                                        <div class="info d-flex">
                                            <div class="icon"><i class="icon-rss-feed"></i></div>
                                            <div class="title">
                                                <h5>Lorem ipsum dolor sit amet.</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed.</p>
                                            </div>
                                        </div>
                                        <div class="date text-right"><strong>24</strong><span>May</span></div>
                                    </div>
                                    <!-- Item        -->
                                    <div class="item d-flex justify-content-between">
                                        <div class="info d-flex">
                                            <div class="icon"><i class="icon-rss-feed"></i></div>
                                            <div class="title">
                                                <h5>Lorem ipsum dolor sit amet.</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed.</p>
                                            </div>
                                        </div>
                                        <div class="date text-right"><strong>24</strong><span>May</span></div>
                                    </div>
                                    <!-- Item-->
                                    <div class="item d-flex justify-content-between">
                                        <div class="info d-flex">
                                            <div class="icon"><i class="icon-rss-feed"></i></div>
                                            <div class="title">
                                                <h5>Lorem ipsum dolor sit amet.</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed.</p>
                                            </div>
                                        </div>
                                        <div class="date text-right"><strong>24</strong><span>May</span></div>
                                    </div>
                                    <!-- Item-->
                                    <div class="item d-flex justify-content-between">
                                        <div class="info d-flex">
                                            <div class="icon"><i class="icon-rss-feed"></i></div>
                                            <div class="title">
                                                <h5>Lorem ipsum dolor sit amet.</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed.</p>
                                            </div>
                                        </div>
                                        <div class="date text-right"><strong>24</strong><span>May</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Daily Feeds -->
                        <div class="col-lg-4">
                            <div class="daily-feeds card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard7" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i
                                                class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard7"
                                             class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                     class="dropdown-item remove">
                                            <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit">
                                            <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-header">
                                    <h3 class="h4">Daily Feeds</h3>
                                </div>
                                <div class="card-body no-padding">
                                    <!-- Item-->
                                    <div class="item">
                                        <div class="feed d-flex justify-content-between">
                                            <div class="feed-body d-flex justify-content-between"><a href="#"
                                                                                                     class="feed-profile"><img
                                                    src="img/avatar-5.jpg" alt="person"
                                                    class="img-fluid rounded-circle"></a>
                                                <div class="content">
                                                    <h5>Aria Smith</h5><span>Posted a new blog </span>
                                                    <div class="full-date">
                                                        <small>Today 5:60 pm - 12.06.2014</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="date text-right">
                                                <small>5min ago</small>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Item-->
                                    <div class="item">
                                        <div class="feed d-flex justify-content-between">
                                            <div class="feed-body d-flex justify-content-between"><a href="#"
                                                                                                     class="feed-profile"><img
                                                    src="img/avatar-2.jpg" alt="person"
                                                    class="img-fluid rounded-circle"></a>
                                                <div class="content">
                                                    <h5>Frank Williams</h5><span>Posted a new blog </span>
                                                    <div class="full-date">
                                                        <small>Today 5:60 pm - 12.06.2014</small>
                                                    </div>
                                                    <div class="CTAs"><a href="#" class="btn btn-xs btn-secondary"><i
                                                            class="fa fa-thumbs-up"> </i>Like</a><a href="#"
                                                                                                    class="btn btn-xs btn-secondary"><i
                                                            class="fa fa-heart"> </i>Love </a></div>
                                                </div>
                                            </div>
                                            <div class="date text-right">
                                                <small>5min ago</small>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Item-->
                                    <div class="item clearfix">
                                        <div class="feed d-flex justify-content-between">
                                            <div class="feed-body d-flex justify-content-between"><a href="#"
                                                                                                     class="feed-profile"><img
                                                    src="img/avatar-3.jpg" alt="person"
                                                    class="img-fluid rounded-circle"></a>
                                                <div class="content">
                                                    <h5>Ashley Wood</h5><span>Posted a new blog </span>
                                                    <div class="full-date">
                                                        <small>Today 5:60 pm - 12.06.2014</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="date text-right">
                                                <small>5min ago</small>
                                            </div>
                                        </div>
                                        <div class="quote has-shadow">
                                            <small>Lorem Ipsum is simply dummy text of the printing and typesetting
                                                industry. Lorem Ipsum has been the industry's standard dummy text ever
                                                since the 1500s. Over the years.
                                            </small>
                                        </div>
                                        <div class="CTAs pull-right"><a href="#" class="btn btn-xs btn-secondary"><i
                                                class="fa fa-thumbs-up"> </i>Like</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Recent Activities -->
                        <div class="col-lg-4">
                            <div class="recent-activities card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard8" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i
                                                class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard8"
                                             class="dropdown-menu dropdown-menu-right has-shadow"><a href="#"
                                                                                                     class="dropdown-item remove">
                                            <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit">
                                            <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-header">
                                    <h3 class="h4">Recent Activities</h3>
                                </div>
                                <div class="card-body no-padding">
                                    <div class="item">
                                        <div class="row">
                                            <div class="col-4 date-holder text-right">
                                                <div class="icon"><i class="icon-clock"></i></div>
                                                <div class="date"><span>6:00 am</span><br><span class="text-info">6 hours ago</span>
                                                </div>
                                            </div>
                                            <div class="col-8 content">
                                                <h5>Meeting</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                                    ad minim veniam, quis nostrud.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="row">
                                            <div class="col-4 date-holder text-right">
                                                <div class="icon"><i class="icon-clock"></i></div>
                                                <div class="date"><span>6:00 am</span><br><span class="text-info">6 hours ago</span>
                                                </div>
                                            </div>
                                            <div class="col-8 content">
                                                <h5>Meeting</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                                    ad minim veniam, quis nostrud.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="row">
                                            <div class="col-4 date-holder text-right">
                                                <div class="icon"><i class="icon-clock"></i></div>
                                                <div class="date"><span>6:00 am</span><br><span class="text-info">6 hours ago</span>
                                                </div>
                                            </div>
                                            <div class="col-8 content">
                                                <h5>Meeting</h5>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
                                                    ad minim veniam, quis nostrud.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Page Footer-->
            <footer class="main-footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <p>Your company &copy; 2017-2019</p>
                        </div>
                        <div class="col-sm-6 text-right">
                            <p>Design by Bootstrapious.More Templates <a href="http://www.cssmoban.com/" target="_blank"
                                                                         title="模板之家">模板之家</a> - Collect from <a
                                    href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
                            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper.js/umd/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="js/charts-home.js"></script>
<!-- Main File-->
<script src="js/front.js"></script>
</body>
</html>
