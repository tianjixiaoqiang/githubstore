<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
</head>
<script style="javascript">
    var xmlHttp;
    //异步刷新验证码
    function reload() {
        //针对不同浏览器，不同的方式生成xmlHttp对象
        try{
            xmlHttp=new XMLHttpRequest();
        }catch(e){
            try{
                xmlHttp=new ActiveXObject("Msxml2.XMLHttp");
            }catch(e){
                try{
                    xmlHttp=new ActiveXObject("Microsoft.XMLHttp");
                }catch(e){
                    alert("你的浏览器不支持AJAX")   ;
                    return false;
                }
            }
        }
        var url="Login/getVcode.action";
        xmlHttp.onreadystatechange = deal;//该属性为一个函数
        xmlHttp.open("GET", url, true);//初始化xmlHttp
        xmlHttp.send(null);//发送
    }
    function deal(){
        if(xmlHttp.readyState==4){//当状态值为4时，接收到服务器传输的信息
            //重新从servlet获得图片资源，并且防止浏览器缓存，加了时间
            document.getElementById("validate_code").src ="Login/getVcode.action?" + new Date().getTime();
        }
    }
</script>
<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href="" target="_blank" ></a></div>
         <div class="login_title">欢迎登陆</div>
         <div class="login_txt"><img src="images/login_03.jpg" width="285" height="26" /></div>
   </div>
     <form action="Login/login" method="post">
   <div class="login_c">
        <div class="login_c_left"><img src="images/login_f.jpg" width="369" height="314" /></div>
        <div class="login_c_right">
             <dl>
                  <dt>账&nbsp;&nbsp;&nbsp;号：</dt>
                  <dd><input name="username" type="text"  required="required" class="username"/></dd>
             </dl>
             <dl>
                  <dt>密&nbsp;&nbsp;&nbsp;码：</dt>
                  <dd><input name="password" type="password" required="required" class="password"/></dd>
             </dl>
             <dl>
                  <dt>验证码：</dt>
                  <dd>
                      <input name=vcode type="text" required="required" class="yzm_txt"/>
                      <div class="yzm"><img src="Login/getVcode.action" id="validate_code" width="82" height="30" /></div>
                      <div class="yzm_ot"><a href="javascript:void(0)"
                       onclick="reload()">看不清换一张</a></div>
                  </dd>
             </dl>
             <div class="login_butt">
                   <input name="dl" type="submit" class="bts"  value="登陆"/>
                   <input name="qx" type="reset" class="bts"  value="取消"/>
             </div>
             </form>
             <span style="color:red;">${errorMsg}</span>
             <div class="login_zc">
                  <a href="Login/password_1" target="_blank" class="login_zc1">忘记登陆密码</a>
                  <a href="Login/zhuce" target="_blank" class="login_zc2">免费注册</a>
             </div>
        </div>
   </div>
   <div class="footer_m mar38">
           <div class="footer_nav">
               <a href="" target="_blank">关于我们</a>|
               <a href="" target="_blank">联系我们</a>|
               <a href="" target="_blank">人才招聘</a>|
               <a href="" target="_blank">广告服务</a>|
               <a href="" target="_blank">友情链接</a>|
               <a href="" target="_blank">销售联盟</a>|
               <a href="" target="_blank">公司简介</a>
           </div>
           <div class="footer_copyright">
                网络文化经营许可证鄂网文[2015]0278-060号  Copyright © 2015-2018  版权所有
           </div>
     </div>
</body>
</html>
