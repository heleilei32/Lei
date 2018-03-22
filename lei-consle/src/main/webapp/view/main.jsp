<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/3/21
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/style.css">

    <script src="/resources/js/jquery.slim.min.js"></script>
    <script src="/resources/js/angular.min.js"></script>
    <script src="/resources/js/angular-route.js"></script>
    <script src="/resources/js/popper.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/main.js"></script>

    <title>主页面</title>
</head>
<body>
<div id="wrapper">
    <div class="overlay"></div>

    <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
                <span class="hamb-top"></span>
                <span class="hamb-middle"></span>
                <span class="hamb-bottom"></span>
            </button>
        </div>
    </nav>


    <!-- Sidebar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
        <ul class="nav sidebar-nav">
            <li class="sidebar-brand">
                <a href="#">
                    导航栏
                </a>
            </li>
            <li>
                <a href="#"><i class="fa fa-fw fa-home"></i> 主页</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-fw fa-folder"></i> 第一页</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i> Dropdown
                    <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header">Dropdown heading</li>
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-fw fa-bank"></i> Page four</a>
            </li>
        </ul>
    </nav>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper" ne-view>

        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2" >
                    主要内容
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->


</body>
</html>
