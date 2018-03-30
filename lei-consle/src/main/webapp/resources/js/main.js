
/*日期格式化工具*/
Date.prototype.format = function(fmt) {
    var o = {
        "M+" : this.getMonth()+1,                 //月份
        "d+" : this.getDate(),                    //日
        "h+" : this.getHours(),                   //小时
        "m+" : this.getMinutes(),                 //分
        "s+" : this.getSeconds(),                 //秒
        "q+" : Math.floor((this.getMonth()+3)/3), //季度
        "S"  : this.getMilliseconds()             //毫秒
    };
    if(/(y+)/.test(fmt)) {
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    }
    for(var k in o) {
        if(new RegExp("("+ k +")").test(fmt)){
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        }
    }
    return fmt;
}


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

