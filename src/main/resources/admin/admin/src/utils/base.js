const base = {
    get() {
                return {
            url : "http://localhost:8080/homestay/",
            name: "homestay",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/homestay/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "民宿管理平台"
        } 
    }
}
export default base
