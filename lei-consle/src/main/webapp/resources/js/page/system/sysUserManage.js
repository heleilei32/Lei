mainApp.controller("sysUserManageCtrl", function ($scope, $http) {
    $scope.data;

    $scope.search = function () {
        $http({
            url: "/system/getAllUsers",              //请求的url路径
            method: "POST",                            //GET/DELETE/HEAD/JSONP/POST/PUT
        }).success(function (response, status, header, config, statusText) {
            $scope.data = response.data;
            $scope.tableInit();
        }).error(function (data, header, config, status) {
            //错误处理
        });

    }


    /*
    * data-cell-style 扩展方法处理 单元格样式
    * data-align 设置当前列的对齐方式，包括表头
    * data-halign 设置表格标题的对齐方式，优先级大于 align
    * data-sorter 可以自定义扩展排序方法
    */
    $scope.tableInit = function () {
        $('#sysUserTable').bootstrapTable({
            columns: [{
                field: 'id',
                title: '用户ID',
                align: 'center',
                halign:'center',
                sortable:true,
                cellStyle: function (value, row, index) {
                    //当前列，奇数单元格显示绿色
                    if (index%2==0)
                        return {
                            classes: 'success'
                        };

                    return {};
                }
            }, {
                field: 'username',
                title: '用户名'
            }, {
                field: 'password',
                title: '密码'
            }, {
                field: 'createTime',
                title: '创建时间',
                formatter:function (value) {
                    return new Date(value).format("yyyy-MM-dd")
                }
            }, {
                field: 'updateTime',
                title: '更新时间',
                formatter:function (value) {
                    return new Date(value).format("yyyy-MM-dd")
                }
            }],
            data: $scope.data,
        });
    }

    $scope.search();


});


