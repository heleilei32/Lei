<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="mainApp">
<head>
    <%--css--%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <%--bootstrap_table--%>
    <link rel="stylesheet" href="/resources/css/bootstarp_table/bootstrap-table.min.css">


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



<div id="wrapper" class="toggled">
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
                    <%--<li class="dropdown-header">Dropdown heading</li>--%>
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
<!-- /#wrapper -->


</body>
</html>
