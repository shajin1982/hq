<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/12
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><tiles:insertAttribute name="title" ignore="true"/></title>
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
    <link rel="shortcut icon" href="img/favicon20190612.ico">
    <!-- layui-->
    <link rel="stylesheet" href="vendor/layui/css/layui.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page">
    <header class="header">
        <tiles:insertAttribute name="header"/>
    </header>
    <div class="page-content d-flex align-items-stretch">
        <tiles:insertAttribute name="menu"/>
        <div class="content-inner">
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">内审中心</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index">首页</a></li>
                    <li class="breadcrumb-item active">内审中心</li>
                </ul>
            </div>
            <section class="tables">
                <div class="container-fluid">
                    <tiles:insertAttribute name="body"/>
                    <tiles:insertAttribute name="service"/>
                </div>
            </section>
            <tiles:insertAttribute name="footer"/>
        </div>
    </div>
</div>
</body>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<!--bootstrap-->
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- layui-->
<script src="vendor/layui/layui.js"></script>
<script>
    $(function () {
        $('#exampledropdownDropdown').collapse('show');
    });
    //启动layui
    layui.use(['form','laydate','element',], function () {
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
        //但是，如果你的HTML是动态生成的，自动渲染就会失效
        //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 1){
                    return '公司名称必填';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });
        form.render();
        //日期选择控件
        var laydate = layui.laydate;
        //日期范围
        laydate.render({
            elem: '#date'
            , range: true
        });
        //导航控件
        var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
        //监听导航点击
        element.on('nav(demo)', function (elem) {
            //console.log(elem)
            layer.msg(elem.text());
        });
        //监听提交
        // form.on('submit(demo1)', function(data){
        //     layer.alert(JSON.stringify(data.field), {
        //         title: '最终的提交信息'
        //     });
        //     return false;
        // });
    });
</script>
</html>
