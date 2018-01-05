﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="测试jquery的on事件.aspx.cs" Inherits="测试web.测试jquery的on事件" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>测试</title>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //动态添加
            $(".add").on("click", function () {
                console.log("进来了");
                $(".info").append('<div class="delete"><h3>单击我来删除我</h3></div>');
            });
            //对动态添加的元素添加事件-删除
            $(".info").on("click", ".delete", function () {
                console.log("进来了Delete！");
                $(this).remove();
            });
        });
    </script>
</head>
<body>
    <h2 class='add'>单击我添加动态元素</h2>
    <div class="info"></div>
</body>
</html>
