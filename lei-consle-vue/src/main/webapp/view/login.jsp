<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <%--<link rel="stylesheet" href="resources/css/element.css">--%>
        <!-- 引入样式 -->
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">

    <script src="resources/js/jquery.slim.min.js"></script>
    <script src="resources/js/vue.js"></script>
    <script src="resources/js/element.js"></script>
    <title>登录页面</title>
</head>

<style>
    .el-row {
        margin-bottom: 20px;

    }
    :last-child {
        margin-bottom: 0;
    }

    .login-box {
        margin-top: 20%;
        margin-left: 40%;
    }
</style>

<body>
    <div class="login-box" id="login" >
        <el-row>
            <el-col :span="8">
                <el-input id="name"  v-model="name" placeholder="请输入帐号">
                    <template slot="prepend">帐号</template>
                </el-input>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="8">
                <el-input id="password" v-model="password" type="password" placeholder="请输入密码">
                    <template slot="prepend">密码</template>
                </el-input>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="8">
                <el-button id="login" v-on:click="check" style="width:100%" type="primary">登录</el-button>
            </el-col>
        </el-row>
    </div>

</div>
<%--<form class="form-horizontal" action="/auth">
    <div class="form-group">
        <label for="username" class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-6">
            <input name="username" id="username" type="text" class="form-control" placeholder="用户名">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">密码</label>
        <div class="col-sm-6">
            <input name="password" type="password" id="password"  placeholder="密码" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">登录</button>
        </div>
    </div>
</form>--%>

</body>
</html>


<script>
    new Vue({
        el: '#login',
        data: {
            name: '',
            password: ''
        },
        methods: {
            check: function (event) {
                //获取值
                var name = this.name;
                var password = this.password;
                if (name == '' || password == '') {
                    this.$message({
                        message: '账号或密码为空！',
                        type: 'error'
                    })
                    return;
                }
                $.ajax({
                    url: 'login',
                    type: 'post',
                    data: {
                        name: name,
                        password: password
                    },
                    success: function (data) {
                        var result = data.result;
                        if (result == 'true' || result == true) {
                            alert("登录成功");
                        } else {
                            alert("登录失败");
                        }
                    },
                    error: function (data) {
                        alert(data);
                    },
                    dataType: 'json',
                })
            }
        }
    })


</script>
