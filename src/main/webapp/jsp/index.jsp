<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link href="css/indexstyles.css" rel="stylesheet">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon20190612.ico">
</head>
<body>
<div class="jq22-container" style="padding-top:100px">
    <div class="login-wrap">
        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1"
                                                                                     class="tab">扫描二维码登录</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">账号密码登录</label>
            <div class="login-form">
                <div class="sign-in-htm">
                    <div class="group" id="wx_reg">
                    </div>
                </div>
                <form method="post" action="index">
                <div class="sign-up-htm">
                    <div class="group">
                        <label for="user" class="label">用户名</label>
                        <input id="user" name="user" type="text" class="input">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">密码</label>
                        <input id="pass" type="password" class="input" data-type="password">
                    </div>
                    <div class="group">
                        <input id="check" type="checkbox" class="check" checked>
                        <label for="check"><span class="icon"></span> 记住账号密码</label>
                    </div>
                    <div class="group">
                        <input type="submit" class="button" value="登录"/>

                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">
                        <a href="#">忘记密码</a>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="vendor/jquery/jquery.min.js"></script>
<!-- 企业微信登录二维码-->
<script src="http://rescdn.qqmail.com/node/ww/wwopenmng/js/sso/wwLogin-1.0.0.js"></script>
<script>
    //企业微信二维码构造
    window.WwLogin({
        "id": "wx_reg",
        "appid": "wx60fb60c92a367e5d",
        "agentid": "1000045",
        "redirect_uri": "http://127.0.0.1:8080/hq_war_exploded/index",
        "state": "",
        "href": ""
    });
</script>
</body>
</html>
