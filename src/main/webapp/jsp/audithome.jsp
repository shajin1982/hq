<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/12
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header d-flex align-items-center">
                <h3 class="h4">内审业务菜单</h3>
            </div>
            <div class="card-body">
                <ul class="layui-nav">
                    <li class="layui-nav-item layui-this"><a href="">展期查询</a></li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">授信额度</a>
                        <dl class="layui-nav-child">
                            <dd><a href="">选项1</a></dd>
                            <dd><a href="">选项2</a></dd>
                            <dd><a href="">选项3</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item"><a href="demobody">季度评审汇总报告</a></li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">季度定期评定报告</a>
                        <dl class="layui-nav-child">
                            <dd><a href="">移动模块</a></dd>
                            <dd><a href="">后台模版</a></dd>
                            <dd class="layui-this"><a href="">选中项</a></dd>
                            <dd><a href="">电商平台</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

