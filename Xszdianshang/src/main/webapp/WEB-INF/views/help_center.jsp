<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script>
$(function(){
    $('.nav_left').mouseover(function(){

		$('.category_ho').show();
	}).mouseout(function(){
		$('.category_ho').hide();
	});  	
});
</script>
</head>
<body>
<!--top begin -->
<div class="header">

    <div class="header_1">
         <div class="warp">
              <div class="header_1_l">
                    欢迎光临购书网！
                    <a href="">请登陆</a>
                    <a href="">免费注册</a>
              </div>
              <div class="header_1_r">
                   <ul>
                        <li><a href="">我的订单</a></li>
                        <li><a href="">购物车<span class="red">0</span>件</a></li>
                        <li><a href="">帮助中心</a></li>
                   </ul>              
              </div> 
         </div>
    </div>
    <!--logo &s begin -->
    <div class="header_2">
         <div class="logo"></div>
         <div class="srarching">
               <div class="srarching_t">
                    <input name="search_txt" type="text"  class="search_txt" value="输入你要搜索的书籍名称" onfocus="if(this.value=='输入你要搜索的书籍名称'){this.value='';}"  onblur="if(this.value==''){this.value='输入你要搜索的书籍名称';}"/>
                    <input name="search_bt" type="button" class="search_bt"  value="搜索"/>
               </div>
               <div class="srarching_b">
                   热门搜索：
                   <a href="">外语考试</a>
                   <a href="">中小学教辅</a>
                   <a href="">百科全书</a>  
                   <a href="">辞典</a>
                   <a href="">牛津系列</a> 
                   <a href="">汉语工具书</a>
                   <a href="">英语工具书</a>
               </div>
         </div>
         <div class="ewm"><img src="images/ewm.jpg" width="92" height="92" /></div>
         
    </div>
    <!--logo &s end -->
    <!--nav begin -->
    <div class="nav">
         <div class="warp">
               <div class="nav_left">
               
                  全部分类
                  <div class="category_ho">
                    <dl>
                         <dt><a href="">小学</a></dt>
                         <dd>
                             <a href="">小学一年级</a>
                             <a href="">小学二年级</a>
                             <a href="">小学三年级</a>
                             <a href="">小学四年级</a>
                             <a href="">小学五年级</a>
                             <a href="">小学六年级</a>
                         </dd>
                    </dl>
                    <dl>
                         <dt><a href="">初中</a></dt>
                         <dd>
                             <a href="">初中一年级</a>
                             <a href="">初中二年级</a>
                             <a href="">初中三年级</a>
                         </dd>
                    </dl>
                    <dl>
                         <dt><a href="">高中</a></dt>
                         <dd>
                             <a href="">高中一年级</a>
                             <a href="">高中二年级</a>
                             <a href="">高中三年级</a>
                         </dd>
                    </dl>
                    <dl>
                         <dt><a href="">教育</a></dt>
                         <dd>
                             <a href="">教材</a>
                             <a href="">外语考试</a>
                             <a href="">中小学教辅</a>
                         </dd>
                    </dl>
                    <dl>
                         <dt><a href="">工具书</a></dt>
                         <dd>         
                             <a href="">汉语工具书</a>
                             <a href="">英语工具书</a>
                             <a href="">其他语种工具</a>
                             <a href="">百科全书</a>
                             <a href="">文学鉴赏</a>
                             <a href="">辞典</a>
                             <a href="">牛津系列</a>
                             <a href="">朗文系列种工具</a>
                             <a href="">民族语工具书</a>
                             <a href="">英文原版书</a>
                         </dd>
                    </dl>
                    <dl class="last">
                         <dt><a href="">期刊</a></dt>
                         <dd></dd>
                    </dl>
                 </div>
                    
               </div>
               <div class="nav_right">
                    <ul>                                                       
                         <li><a href="">首页</a></li>
                         <li><a href="">促销优惠</a></li>
                         <li><a href="">购物车</a></li>
                         <li><a href="">我的订单</a></li>
                         <li><a href="">个人中心</a></li>
                         <li><a href="">客户服务</a></li>
                    </ul>
               </div>
         </div>
    </div>
    <!--nav end -->
    <div class="clearfloat"></div>
</div>
<!--top end -->
<!--container begin -->
<div class="container">
     <!--left begin -->
    <div class="about_left">
        <div class="about_left_1">帮助中心</div>
        <div class="about_left_2">
            <div class="about_left_2s">
                <dl class="clearfloat">
                    <dt>注册和登陆</dt>
                     <dd id="one">
                        <ul>
                            <li><a href=""><i></i>注册</a></li>
                            <li><a href=""><i></i>登陆</a></li>
                        </ul>
                     </dd>
                  </dl>
                  <dl class="clearfloat">
                     <dt>账户管理</dt>
                     <dd></dd>
                  </dl>
                  <dl class="clearfloat">
                    <dt>购物流程</dt>
                    <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                    <dt>订单状况说明</dt>
                     <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                     <dt>发票制度</dt>
                     <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                     <dt><a href="">退换货政策</a></dt>
                     <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                      <dt><a href="">商家中心</a></dt>
                      <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                      <dt><a href="">订单状态说明</a></dt>
                      <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                      <dt><a href="">退款方式和时间</a></dt>
                      <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                      <dt><a href="">配送范围及免邮标准</a></dt>
                      <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                      <dt><a href="">怎么下订单</a></dt>
                      <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                      <dt><a href="">如何修改订单</a></dt>
                      <dd></dd>
                   </dl>
                   <dl class="clearfloat">
                      <dt><a href="">如何取消订单</a></dt>
                      <dd></dd>
                   </dl>
            </div>
        </div>
        
    </div>
  
    <!--left end -->
     <!--right begin -->
    <div class="about_right">
        <div class="about_right_1">首页>>帮助中心>>注册</div>
        <div class="about_right_li">
            <h3>手机快速注册是怎么回事？</h3>
            <p>用手机进行快速注册，编辑短信“TRZJ”发送到“1068403713684552”，系统将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。用手机进行快速注册，
编辑短信“TRJ”发送到“10690037136457”，系统将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到
“10690037136457”，系统将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到“10690037136457”，系统
将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到“10690037136457”，系统将回复一组注册密码，即可
登录网站进行操作，用户名为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到“10690037136457”，系统将回复一组注册密码，即可登录网站进行操作，用户名
为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到“10690037136457”，系统将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。用手机进行快
速注册，编辑短信“TRJ”发送到“10690037136457”，系统将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。用手机进行快速注册，编辑短信“TRJ”
发送到“10690037136457”，系统将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到“10690037136457”，
系统将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到“10690037136457”，系统将回复一组注册密码，
即可登录网站进行操作，用户名为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到“10690037136457”，系统将回复一组注册密码，即可登录网站进行操作，用
户名为手机号码。用手机进行快速注册，编辑短信“TRJ”发送到“10690037136457”，系统将回复一组注册密码，即可登录网站进行操作，用户名为手机号码。
，用户名为手机号码。</p>
        </div>
    </div>
    <!--right end -->
    
</div>
<!--container end -->
<!--footer begin -->
<div class="footer">
     <div class="footer_t">
          <ul>
               <li><a href=""><img src="images/f1.jpg" width="130" height="52" /></a></li>
               <li><a href=""><img src="images/f2.jpg" width="130" height="52" /></a></li>
               <li><a href=""><img src="images/f3.jpg" width="130" height="52" /></a></li>
               <li class="last"><a href=""><img src="images/f4.jpg" width="130" height="52" /></a></li>
          </ul>
     </div>
     <div class="footer_b">
           <div class="footer_b1 tb1">
                <span class="f_title">购物指南</span>
                <ul>
                    <li><a href="" target="_blank">购物流程</a></li>
                    <li><a href="" target="_blank">发票制度</a></li>
                    <li><a href="" target="_blank" >账户管理</a></li>
                    <li><a  href="" target="_blank">会员优惠</a></li>
                </ul>
           </div>
           <div class="footer_b1 tb2">
                <span class="f_title">支付方式</span>
                <ul>
                    <li><a href="" target="_blank">货到付款</a></li>
                    <li><a href="" target="_blank" >网上支付</a></li>
                    <li><a href="" target="_blank" >银行转账</a></li>
                    <li><a  href="" target="_blank">账户余额</a></li>
                </ul>
           </div>
            <div class="footer_b1 tb3">
                <span class="f_title">支付方式</span>
                <ul>
                    <li><a href="" target="_blank">订单状态说明</a></li>
                    <li><a href="" target="_blank" >订单取消操作</a></li>
                    <li><a href="" target="_blank" >订单配送说明</a></li>
                </ul>
           </div>
           <div class="footer_b1 tb4">
                <span class="f_title">配送方式</span>
                <ul>
                    <li><a href="" target="_blank">配送时间及运费</a></li>
                    <li><a href="" target="_blank" >验货与签收</a></li>
                    <li><a href="" target="_blank" >订单配送查询</a></li>
                </ul>
           </div>
            <div class="footer_b1 tb5">
                <span class="f_title">退换货</span>
                <ul>
                    <li><a href="" target="_blank">退换货政策</a></li>
                    <li><a href="" target="_blank" >退换货流程</a></li>
                    <li><a href="" target="_blank" >退换货申请</a></li>
                    <li><a href="" target="_blank" >退款说明</a></li>   
                </ul>
           </div>
            <div class="footer_b1 tb6">
                <span class="f_title">商家服务</span>
                <ul>
                    <li><a href="" target="_blank">常见问题</a></li>
                    <li><a href="" target="_blank" >找回密码</a></li>
                    <li><a href="" target="_blank" >汇款单招领</a></li>
                    <li><a href="" target="_blank" >联系客服</a></li>   
                </ul>
           </div>
     </div>
     <div class="footer_m">
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
     
</div>
<!--footer end -->

</body>
</html>
