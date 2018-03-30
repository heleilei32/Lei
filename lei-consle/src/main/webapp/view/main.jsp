<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <h2 class="obtain">北京景点<i></i></h2>
                        <div class="secondary">
                            <a href="#/sysUserManage"><h3>用户管理</h3></a>
                            <h3>十三陵</h3>
                            <h3>圆明园</h3>
                            <h3>长城</h3>
                            <h3>雍和宫</h3>
                            <h3>天坛公园</h3>
                        </div>
                    </li>
                    <li>
                        <h2 class="obtain">南京景点<i></i></h2>
                        <div class="secondary">
                            <h3>栖霞寺</h3>
                            <h3>夫子庙</h3>
                            <h3>海底世界</h3>
                            <h3>中山陵</h3>
                            <h3>乌衣巷</h3>
                            <h3>音乐台</h3>
                        </div>
                    </li>
                    <li>
                        <h2 class="obtain">上海景点<i></i></h2>
                        <div class="secondary">
                            <h3>东方明珠</h3>
                            <h3>外滩</h3>
                            <h3>豫园</h3>
                            <h3>文庙</h3>
                            <h3>世博园</h3>
                            <h3>田子坊</h3>
                        </div>
                    </li>
                    <li>
                        <h2 class="obtain">深圳景点<i></i></h2>
                        <div class="secondary">
                            <h3>华侨城</h3>
                            <h3>观澜湖</h3>
                            <h3>世界之窗</h3>
                            <h3>东门老街</h3>
                            <h3>七娘山</h3>
                            <h3>光明农场</h3>
                        </div>
                    </li>
                    <li>
                        <h2 class="obtain">广州景点<i></i></h2>
                        <div class="secondary">
                            <h3>白云山</h3>
                            <h3>长隆</h3>
                            <h3>黄花岗公园</h3>
                            <h3>中山纪念堂</h3>
                            <h3>华南植物园</h3>
                            <h3>南沙湿地公园</h3>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div   ng-view>
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

