new Vue({
    el:'#mainApp',
    data:{isCollapse: false,
    icon:"el-icon-minus"},
    methods:{
        changeMenu:function () {
            if (this.isCollapse){
                this.icon = "el-icon-minus" ;
            }else {
                this.icon = "el-icon-plus" ;
            }
            this.isCollapse=!this.isCollapse;
        }
    }
})