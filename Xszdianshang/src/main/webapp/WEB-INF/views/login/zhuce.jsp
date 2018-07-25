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

<script>
function check(){
	var province=document.getElementById("s_province").value;
	var city=document.getElementById("s_city").value;
	var county=document.getElementById("s_county").value;
	var age=document.getElementById("age").value;
	if(age==""||age==null){document.getElementById("age").value="0";}
	if(province=="省份"){alert("你必须选择省份");return false}
	if(city=="地级市"){alert("你必须选择地级市");return false}
	if(county=="市、县级市"){alert("你必须选择市、县级市");return false}
	if(!document.getElementById("aaa").checked){alert("你必须同意协议");return false}
	return true;
}
</script>
   <script type="text/javascript">

	function checkPass(){
  var pwd1=document.getElementById("p1").value;
  var pwd2=document.getElementById("p2").value;
 if(pwd1!=pwd2){
	 alert("输入密码不一致");
    document.getElementById("errorpwd").style.display = "block";
    return false;
 }
}

	function checkPhone(){
		var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;
		//电话
		var phone = document.getElementById("phone").value;
		if (!phoneReg.test(phone)) {
			document.getElementById('showphone').innerText="请输入有效的手机号！"
			return false;
		}
		else{
			document.getElementById('showphone').innerText="";
		}
		}
	function checkQQ(){
		var QQReg = /^\d{5,10}$/;
		//电话
		var QQ = document.getElementById("qq").value;
		if (!QQReg.test(QQ)&&QQ!="") {
			document.getElementById('show').innerText="请输入有效的QQ！"
			return false;
		}
		else
			document.getElementById('show').innerText="";
		}
</script>
<body class="body_login">
   <div class="login_t">
         <div class="login_logo"><a href="" target="_blank" ></a></div>
         <div class="login_title">欢迎注册</div>

   </div>
  
   <form action="Login/zhuce1" method="post">
   <div class="zhuce_c">
        <div class="zhuce_ct">
             <span class="tit">注册新用户</span>
             <span class="relex">以下*标注的为必填选项</span>
        </div>
        <div class="zhuce_cb">
              <dl> <span style="color:red;">${errorMsg}</span>
                  <dt><span class="red">*</span>账号：</dt>
                  <dd><input name="username" type="text" class="usernames" required="required" /></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码：</dt>
                  <dd><input id="p1" name="password" type="password" class="passwords" required="required" ><span id="tishi"></span></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>确认密码：</dt>
                  <dd><input id="p2" name="passwords" type="password" class="passwords" required="required" onblur="return checkPass();" ></dd>
              
              </dl>
              <dl>
                  <dt><span class="red">*</span>EMAIL:</dt>
                  <dd><input name="email" type="email" class="texts"required="required" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" ></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>电话：</dt>
                  <dd><input id="phone" name="phone" type="text" class="texts" maxlength="11" onblur="return checkPhone();" required="required">&nbsp&nbsp&nbsp<span id="showphone" style="color:red;"></dd>
              </dl>
              <dl>
                  <dt></span><span class="red">*</span>QQ</dt>
                  <dd><input name="qq" id="qq" type="text" class="texts"required="required" onBlur="return checkQQ();" >&nbsp&nbsp<span id="show" style="color:red;"></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>地址：</dt>
                  <dd><input name="address" type="text" class="texts" required="required" ></dd>
              </dl>
              <dl>
                  <dt>学校</dt>
                  <dd><input name="school" type="text" class="texts" ></dd>
              </dl>
              <dl>
                  <dt>年龄</dt>
                  <dd><input name="age" type="text" id="age" maxlength="3" onBlur="/^(?:[1-9]?\d|100)$/.test(this.value)?'':alert('请输入正确年龄')"class="texts" ></dd>
              </dl>
              <dl>
                  <dt>班级</dt>
                  <dd><input name="classroom" type="text" class="texts" ></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>地区：</dt>
                  <dd>
                        <div>
                            <select required id="s_province" name="province" class="selects" ></select>  
                            <select required id="s_city" name="city" class="selects"required="required" ></select>  
                            <select required id="s_county" name="country" class="selects"required="required" ></select>
                            <script required class="resources library" src="js/area.js" type="text/javascript"></script>
                            
                            <script type="text/javascript">_init_area();</script>
                        </div>
                        <div id="show"></div>
                         <script type="text/javascript">
								var Gid  = document.getElementById ;
								var showArea = function(){
									Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" + 	
									Gid('s_city').value + " - 县/区" + 
									Gid('s_county').value + "</h3>"
															}
								Gid('s_county').setAttribute('onchange','showArea()');
						</script>
                  </dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码提示问题一：</dt>
                  <dd>
                      <select name="mibaoid1" class="wt1" required="required">
                          <option value ="1">您最崇拜的人是谁?</option>
                          <option value ="2">您父亲的生日是?</option>
                          <option value ="3">您母亲的生日是?</option>
                          <option value ="4">您最喜欢的地方是哪里?</option>
                      </select>
                  </dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码问题一答案：</dt>
                  <dd><input name="answer1" type="text" class="texts" required="required" ></dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码提示问题二：</dt>
                  <dd>
                       <select name="mibaoid2" class="wt1" required="required">
                          <option value ="1">您最崇拜的人是谁?</option>
                          <option value ="2">您父亲的生日是?</option>
                          <option value ="3">您母亲的生日是?</option>
                          <option value ="4">您最喜欢的地方是哪里?</option>
                      </select>
                  </dd>
              </dl>
              <dl>
                  <dt><span class="red">*</span>密码问题二答案：</dt>
                  <dd><input name="answer2" type="text" class="texts" required="required" ></dd>
              </dl>
               <dl>
                  <dt></dt>
                  <dd>
                       <input id="xieyi" type="checkbox" value="" name="aaa" id="aaa" class="check0"/>我已阅读并同意<a href="" class="red" required="required" >《购书网用户注册协议》</a>
                  <span style="color:red;">${error}</span>
                  </dd>
              </dl>
              <div class="zc_bt">
                   <input type="submit"  class="bts" id="tj" value="注册" onclick="return check()"/>   
                   <input type="reset" class="bts"  value="重填"/>
              </div>
              <div class="zc_lj">已经有账号？<a href="Login/toLogin" target="_blank" class="yellow">立即登陆</a></div>
        </div>
        </form>
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
