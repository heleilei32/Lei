<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html ng-app="mainApp">
<head>

    <%--css--%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="/resources/css/style.css">--%>
    <%--bootstrap_table--%>
    <link rel="stylesheet" href="/resources/css/bootstarp_table/bootstrap-table.min.css">
    <%--菜单--%>
    <link rel="stylesheet" href="/resources/css/menu/base.css"> <!--初始化文件-->
    <link rel="stylesheet" href="/resources/css/menu/menu.css"> <!--主样式-->


    <%--菜单控制js--%>
    <script src="/resources/js/meun/adapter.js"></script> <!--rem适配js-->
    <script src="/resources/js/meun/menu.js"></script> <!--控制js-->
    <%--js--%>
    <script src="/resources/js/jquery.slim.min.js"></script>
    <script src="/resources/js/angular.min.js"></script>
    <script src="/resources/js/angular-route.js"></script>
    <script src="/resources/js/popper.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/main.js"></script>
    <%--bootstrap_table--%>
    <script src="/resources/js/bootstarp_table/bootstrap-table.min.js"></script>
    <script src="/resources/js/bootstarp_table/bootstrap-table-zh-CN.min.js"></script>
    <%--单独页面的js--%>
    <script src="/resources/js/page/system/sysUserManage.js"></script>

    <title>主页面</title>
</head>

<body>
<div  style="width: 100%;height: 100%;display: flex;">
    <div id="menu">
        <!--隐藏菜单-->
        <div id="ensconce">
            <h2>
                <img src="/resources/images/show.png" alt="">
                控制台
            </h2>
        </div>

        <!--显示菜单-->
        <div id="open">
            <div class="navH">
                控制台
                <span><img class="obscure" src="/resources/images/obscure.png" alt=""></span>
            </div>
            <div class="navBox">
                <ul>
                    <li>
                        <h2 class="obtain"><b>系统管理</b><i></i></h2>
                        <div class="secondary">
                            <a href="#/sysUserManage" style="text-decoration:none"><h3>用户管理</h3></a>
                            <a href="#/sysUserManage" style="text-decoration:none"><h3>用户组管理</h3></a>
                            <a href="#/sysUserManage" style="text-decoration:none"><h3>角色管理</h3></a>
                            <a href="#/sysUserManage" style="text-decoration:none"><h3>权限管理</h3></a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div style="margin-left: 14px;height: 100%;width: 100%;flex: 1;">
        <div style="display: flex; flex-flow: column;margin-right: 10px">
            <div style="height: 40px;background-color:#eee;margin-top: 2px"></div>
            <div style="flex: 1;margin-top : 15px ;height: 1100px" ng-view></div>
        </div>

    </div>

</div>








<%--<div id="wrapper" class="toggled">
    <nav class=" navbar navbar-default " >
        <div class="container-fluid top_daohang">
            <button type="button" class="hamburger is-open animated fadeInLeft" data-toggle="offcanvas">
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
                <a href="#/"><i class="fa fa-fw fa-home"></i> 主页</a>
            </li>
            <li>
                <a href="#/computers"><i class="fa fa-fw fa-folder"></i> 第一页</a>
            </li>
            <li class="dropdown">
                <a href="return false;" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-fw fa-plus"></i> 系统管理
                    <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    &lt;%&ndash;<li class="dropdown-header">Dropdown heading</li>&ndash;%&gt;
                    <li><a href="#/sysUserManage">用户管理</a></li>
                    <li><a href="#/sysUserGroupManage">用户组管理</a></li>
                    <li><a href="#/sysRoleManage">角色管理</a></li>
                    <li><a href="#/sysAuthManage">权限管理</a></li>
                </ul>
            </li>
            <li>
                <a href="#/printers"><i class="fa fa-fw fa-bank"></i> Page four</a>
            </li>
        </ul>
    </nav>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div  id="page-content-wrapper" ng-view>


    </div>
    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->--%>


</body>
</html>

