<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/10
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <c:if test="${!empty customPostpones}">
        <c:forEach var="user" items="${customPostpones}">
            姓名：${user.customName} &nbsp;&nbsp;手机号：${user.postponeCause} &nbsp;&nbsp;邮箱：${user.postponeTime} &nbsp;&nbsp;<br>
        </c:forEach>
    </c:if>
</div>
