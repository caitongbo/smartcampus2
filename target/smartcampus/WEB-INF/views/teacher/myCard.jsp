<%--
  Created by IntelliJ IDEA.
  User: SAMSUNG
  Date: 2018/6/26
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<html>
<head>
    <title>商品列表页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">

    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

    <script>

        $(document).ready( function () {
            $('#card').DataTable({
                    "aLengthMenu":false,
                    "searching":false,//禁用搜索（搜索框）
                    "paging":false,
                    "info":false
                }
            );
        } );
    </script>
    <style type="text/css">
        table{
            word-break:keep-all;/* 不换行 */
            white-space:nowrap;/* 不换行 */
        }
    </style>
</head>
<body>
<!-- 导航栏 -->
<%@ include file="header.jsp"%>
<br/>
<div class="container">
    <div class="table-responsive">
        <table class="table" id="Card">
            <thead>
            <tr>
                <th style="text-align: center;">编号</th>
                <th style="text-align: center;">条形码</th>
                <th style="text-align: center;">余额</th>
                <th style="text-align: center;">申请ID</th>
                <th style="text-align: center;">权限</th>
                <th style="text-align: center;">状态</th>
            </tr>
            </thead>
            <tbody>
            <tr class="text-center">
                <td title=${Card.id}>${Card.id}</td>
                <td title=${Card.cardVid}>${Card.cardVid}</td>
                <td title=${Card.cardBalance}>${Card.cardBalance}</td>
                <td title=${Card.sqId}>${Card.sqId}</td>
                <td><c:if test="${Card.authId=='0'}">学生</c:if>
                    <c:if test="${Card.authId=='1'}">教师</c:if>
                </td>
                <td><c:if test="${Card.state=='1'}"><font color="green">可用</font></c:if>
                    <c:if test="${Card.state=='0'}"><font color="red">不可用</font></c:if></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>


