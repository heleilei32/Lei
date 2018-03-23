//左侧折叠栏
$(document).ready(function () {
    var trigger = $('.hamburger'),
        isClosed = true;

    trigger.click(function () {
        hamburger_cross();
    });

    function hamburger_cross() {

        if (isClosed == true) {
            trigger.removeClass('is-open');
            trigger.addClass('is-closed');
            isClosed = false;
        } else {
            trigger.removeClass('is-closed');
            trigger.addClass('is-open');
            isClosed = true;
        }
    }

    $('[data-toggle="offcanvas"]').click(function () {
        $('#wrapper').toggleClass('toggled');
    });
});


var mainApp = angular.module('mainApp',['ngRoute']);

mainApp.config(['$routeProvider', function($routeProvider){
    $routeProvider
        .when('/',{template:'这是首页页面'})
        .when('/sysUserManage',{templateUrl:'/view/page/systemManage/sysUserManage.html'})
        .when('/sysUserGroupManage',{template:'这是电脑分类页面'})
        .when('/sysRoleManage',{template:'这是电脑分类页面'})
        .when('/sysAuthManage',{template:'这是电脑分类页面'})
        .otherwise({redirectTo:'/'});
}]);