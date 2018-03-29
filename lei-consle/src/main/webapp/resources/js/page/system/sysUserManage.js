mainApp.controller("sysUserManageCtrl", function ($scope, $http) {
    $scope.a = '123';

    $scope.search = function () {
        $http({
            url: "/system/getAllUsers",              //请求的url路径
            method: "POST",                            //GET/DELETE/HEAD/JSONP/POST/PUT
        }).success(function (response, status, header, config, statusText) {
            $('#sysUserTable').bootstrapTable({
                columns: [{
                    field: 'id',
                    title: '用户ID'
                }, {
                    field: 'username',
                    title: '用户名'
                }, {
                    field: 'password',
                    title: '密码'
                }],
                data:response.data,
            });
        }).error(function (data, header, config, status) {
            //错误处理
        });

    }

    $scope.search();
});