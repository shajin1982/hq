<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/12
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form class="layui-form" action="demo" method="post" lay-filter="example" id="defaultForm">
    <div class="row">
        <div class="layui-form-item col-lg-4 text-center">
            <div class="text-center">
                <select  name="customName" lay-verify="" lay-search="">
                    <option value="">直接选择或搜索公司名称</option>
                    <c:if test="${!empty customPostpones}">
                        <c:forEach var="customPostpones" items="${customPostpones}">
                            <option value="${customPostpones.customName}">${customPostpones.customName}</option>
                        </c:forEach>
                    </c:if>
                </select>
            </div>
        </div>
        <div class="layui-inline col-lg-4 text-center">
            <label class="layui-form-label col-lg-4 text-center text-nowrap">选择时间段</label>
            <div class="layui-input-inline col-lg-8 text-center">
                <input type="text" name="date" id="date"  placeholder=" - " autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item col-lg-4 text-center">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </div>
</form>
