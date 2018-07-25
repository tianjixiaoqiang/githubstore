<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>申请查询退换货</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
</head>

<body>

    <div class="user_top">
       <div class="user_c">
         <div class="user_top_l">
             <a href="" target="_blank">回到首页</a>
             欢迎您，uesr  &nbsp;&nbsp;&nbsp;
             <a href="" target="_blank">退出</a>
         </div>
         <div class="user_top_r">
               <ul>
                   <li><a href="" target="_blank">帮助中心</a></li>
                   <li><a href="" target="_blank">关于我们</a></li>

               </ul>
         </div>
       </div>
    </div>
    
    <div class="user_nav">
         <div class="user_c">
               <div class="user_nav_l">用户中心</div>
               <div class="user_nav_r">
                     <input name="search2" type="text"  class="uesr_s"/>
                     <input name="search2" type="button"  class="uesr_b"/>
               </div>
         </div>
    </div>
    
    <div class="user_cont">
         <!--left begin -->
         <div class="user_cont_left">
               <dl>
                   <dt>我的交易</dt>
                   <dd><a href="">我的订单</a></dd>
                   <dd><a href="">我的收藏</a></dd>
                   <dd><a href="">我的账单</a></dd>
                   <dd><a href="">我的购物车</a></dd>
                   <dd><a href="">已经购买的商品</a></dd>
               </dl>
               <dl>
                   <dt>自助服务</dt>
                   <dd  class="active"><a href="">申请查询退换货</a></dd>
                   <dd><a href="">查询退换货记录</a></dd>
               </dl>
               <dl>
                   <dt>我的账户</dt>
                   <dd><a href="">我的积分</a></dd>
                   <dd><a href="">我的消息</a></dd>
                   <dd><a href="">我的收获地址</a></dd>
                   <dd><a href="">个人档案</a></dd>
               </dl>
               <dl>
                   <dt>社区中心</dt>
                   <dd><a href="">我的评论</a></dd>
                   <dd><a href="">兑换专区</a></dd>
               </dl>
         </div>
         <script type="text/javascript">
$(document).ready(function(){
		$(".user_cont_left dl dt").click(function(){
		$(this).siblings().slideToggle("slow");
		$(this).toggleClass("jia"); return false;
	});
	
});
</script>
         <!--left end -->
         <!--right begin -->
         <div class="user_cont_right">
           <div class="user_lmt">
                    <div class="user_lmt1">申请查询退换货</div>
                    
           </div>
               <div class="user_coment">
                 <table width="713" border="0" cellspacing="0" cellpadding="0"  class="my_dd">
                       <tr>
                            <th height="48" colspan="4">书籍信息</th>
                            <th width="81" height="48">订单状态</th>
                            <th colspan="2">实付款（元）</th>
                        </tr>
                        <tr>
                            <td width="32" height="149" style="border-right:none; vertical-align:text-top;">
                              
                            </td>
                            <td width="163">
                                 <div class="dd_img"><a href="" target="_blank"><img src="images/user_img.jpg" width="132" height="121" /></a></div>
                               
                            </td>
                            <td colspan="2" style="padding:0 5px; text-align:left;"><a href="" target="_blank">英语阅读理解与完形填空150篇：七年级</a></td>
                            <td>已发货</td>
                            <td colspan="2" style=" text-align:left;padding-left:20px;">
                                 <div class="user_ck"><a href="" target="_blank">申请退货</a></div>
                                 <div class="user_pj"><a href="" target="_blank">申请换货</a></div>
                            </td>
                        </tr>
                         <tr>
                            <td width="32" height="149" style="border-right:none; vertical-align:text-top;">
                              
                            </td>
                            <td width="163">
                                 <div class="dd_img"><a href="" target="_blank"><img src="images/user_img.jpg" width="132" height="121" /></a></div>
                               
                            </td>
                            <td colspan="2" style="padding:0 5px; text-align:left;"><a href="" target="_blank">英语阅读理解与完形填空150篇：七年级</a></td>
                            <td>已发货</td>
                            <td colspan="2" style=" text-align:left;padding-left:20px;">
                                 <div class="user_ck"><a href="" target="_blank">申请退货</a></div>
                                 <div class="user_pj"><a href="" target="_blank">申请换货</a></div>
                            </td>
                        </tr>
                    </table>
                    <!--分页开始 -->
                 <div style="clear:both;"></div>
                    <div class="fenyeys" >
                    <a href="">上一页</a>
                    <a href=""  class="active">1</a>
                    <a href="">2</a>
                    <a href="">3</a>
                    <a href="">4</a>
                    <a href="">5</a>
                    <a href="">下一页</a>
                    </div>
                    <div style="clear:both;"></div>
                    <!--分页结束 -->
                   
           </div>
         </div>
         <!--right end -->
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
