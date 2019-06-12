<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/12
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form class="layui-form" action="" lay-filter="example">
    <div class="row">
        <div class="col-lg-4 text-center">
            <select name="city" lay-verify="" lay-search>
                <option value="">选择需要查询的公司名称</option>
                <option value="010">layer</option>
                <option value="021">form</option>
                <option value="0571">layim</option>
            </select>
        </div>
        <div class="col-lg-4 text-center">
            <div class="layui-inline">
                <label>日期范围</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" id="datetest" placeholder=" - ">
                </div>
            </div>
        </div>
        <div class="col-lg-4 text-center">
            <button type="button" class="layui-btn layui-btn-normal">查询数据</button>
        </div>
    </div>
</form>
<script>
    layui.use('form', function () {
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
        //但是，如果你的HTML是动态生成的，自动渲染就会失效
        //因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
        form.render();
    });
    layui.use('laydate', function () {
        var laydate = layui.laydate;
        //日期范围
        laydate.render({
            elem: '#datetest'
            , range: true
        });
    });
</script>
