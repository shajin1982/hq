<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/12
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li><a href="renewal">内审中心</a></li>
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
