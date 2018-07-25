<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*,entity.*"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
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
<jsp:include page="header.jsp"></jsp:include>
<!--top end -->
<!--container begin -->
<div class="container">
    <!--banner begin -->
    <div class="list_banner"><a href="" target="_blank"><img src="images/list_banner.jpg" width="1100" height="92" /></a></div>
    <!--1begin -->
    <div class="buy_one">
    
         <div class="buy_one_t">
              <div class="buy_one_t1"></div>
              <div class="buy_one_t2">商品名称</div>
              <div class="buy_one_t3">单价</div>
              <div class="buy_one_t4">数量</div>
              <div class="buy_one_t5">小计</div>
              <!-- <div class="buy_one_t6">操作</div> -->
         </div>
         <%
         User user=new User();
         if(session.getAttribute("user")!=null){
         	 user=(User)session.getAttribute("user");
         }
         else{
         	
         }
         List<Cart> carts=new ArrayList<Cart>();
         if(session.getAttribute("mycart2")!=null){
        	 carts=(List<Cart>)session.getAttribute("mycart2");
         }else{
        	 
         }
         Address address=new Address();
         if(session.getAttribute("qraddress")!=null){
        	 address=(Address)session.getAttribute("qraddress");
         }
         %>
         <div class="buy_one_c">
           <ul>
           <%
           for(int i=0;i<carts.size();i++){
          	 Cart cart=carts.get(i);
           %>
               <li>
                    <div class="buy_one_c1"></div>
                    <div class="buy_one_c2">
                         <div class="buy_one_c2l"><a href=""><img src="<%=cart.getImageurl() %>" width="38" height="54" /></a></div>
                         <div class="buy_one_c2r"><%=cart.getGoodsname() %></div>
                    </div>
                    <div class="buy_one_c3"><b class="pr1">￥<%=cart.getUnitprice() %></b></div>
                    <div class="buy_one_c4"><%=cart.getBuynum() %></div>
                    <div class="buy_one_c5"><b class="pr2">￥<fmt:formatNumber><%=cart.getBuynum()*cart.getUnitprice() %></fmt:formatNumber></b></div>
                   <!--  <div class="buy_one_c6">
                         <div class="buy_one_c62"><a href="">修改</a></div>
                        
                    </div> -->
               </li>
              <%} %>
           </ul>
         </div>
         <!--收货人信息beign -->
         <div class="address_xg">
              <div class="address_xg_t"><!-- <span class="edit"><a href="">修改</a></span> -->收货人信息</div>
              <div class="address_xg_b">
                   <dl>
                        <dt>收货人姓名：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="<%=address.getName() %>"/></dd>
                   </dl>
                   <dl>
                        <dt>收货地区：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="<%=address.getProvince()+address.getCity()+address.getCountry()+address.getAddr_detail() %>"/></dd>
                   </dl>
                   <dl>
                        <dt>邮编：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="<%=address.getPostCode() %>"/></dd>
                   </dl>
                   <dl>
                        <dt>手机：</dt>
                        <dd><input name="name" type="text" class="txta" disabled="disabled" value="<%=address.getMobile() %>"/></dd>
                   </dl>
              </div>
         </div>
         <!--收货人信息end -->
         <!--配送方式 begin -->
        <div class="address_xg">
              <div class="address_xg_t">配送方式</div>
              <div class="address_xg_b">
                <form id="form1" name="form1" method="post" action="">
                      <p>
                        <label class="courier">
                          <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_0" />
                          自提</label>
                        <label class="courier">
                          <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1" checked="checked"/>
                          申通快递</label>
                        <label class="courier">
                            <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1" />
                          圆通快递</label>
                        <label class="courier">
                            <input type="radio" name="RadioGroup1" value="单选" id="RadioGroup1_1" />
                          平邮</label>
                      </p>
                </form>
              </div>
        </div>
         <!--配送方式 end -->
    </div>
    <!--1end -->
    <!--zhifu begin -->
  <div class="pay_way">
    <div class="hd">
            选择支付方式
			<ul>
				<li>淘宝支付</li>
				<li>银联支付</li>
			</ul>
		</div>
		<div class="bd">
             <ul>
                  <li>
                        <label>
                          <input type="radio" name="RadioGroup2" value="" id="RadioGroup2_0" />
                          <img src="images/kuaijie.jpg" width="161" height="42"  class="pcs"/>
                        </label>
                  </li>
                  <li>
                       <label>
                          <input type="radio" name="RadioGroup2" value="" id="RadioGroup2_1" />
                          <img src="images/zfb.jpg" width="161" height="42" class="pcs"/>
                        </label>
                  </li>
             </ul>
             <ul>
                    <li>
                        <label>
                          <input type="radio" name="RadioGroup3" value="" id="RadioGroup3_0" />
                          <img src="images/c1.jpg" width="161" height="42"  class="pcs"/>
                        </label>
                  </li>
                  <li>
                       <label>
                          <input type="radio" name="RadioGroup3" value="" id="RadioGroup3_1" />
                          <img src="images/c1.jpg" width="161" height="42" class="pcs"/>
                        </label>
                  </li>
             </ul>
    </div>
  </div>
   <script type="text/javascript">jQuery(".pay_way").slide({delayTime:0 });</script>
    <!--zhifu end -->
  <div class="next_bt"><a href=""></a></div> 
   
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
