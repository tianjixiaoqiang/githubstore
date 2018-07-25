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
<title>注册</title>
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
       

   </div>
   <form action="Login/findp" method="post">
   <div class="zhuce_c">
        <div class="password_t">
             <span class="fr_pw"><a href="" target="_blank">如何找回密码</a></span><span class="zhmm">找回密码</span>
        </div>
        <div class="password_b">
             <div class="password_b1 bg1">
                   <ul>                                                        
                       <li>1、输入用户名</li>
                       <li>2、回答密保问题</li>
                       <li>3、重设密码</li>
                       <li>4、密码重设成功</li>
                   </ul>
             </div>
              
             <div class="password_bc">
                   <dl>
                        <dt>用户名：</dt>
                        <dd><input name="username" type="text"required="required" class="pass_name" /></dd>
                   </dl>
                   <dl>
                        <dt>验证码：</dt>
                        <dd><input name="vcode" type="text" required="required" class="pass_name" /></dd>
                   </dl>
                   <dl>
                        <dt></dt>
                        <dd>
                            <span class="pass_yzm"><img src="Login/getVcode.action" id="validate_code" width="178" height="50" onclick="reload()" />
                         <a href="javascript:void(0)" onclick="reload()">看不清换一张</a>
                        </dd>
                   </dl>
                   <dl>
                     <span style="color:red;">${errorMsg}</span>
                        <dt></dt>
                        <dd><input  type="submit" target="_blank" class="pass_next"  value="下一步"/></dd>
                   </dl>
             </div>
           
              
        </div>
   </div>
   </form>
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
