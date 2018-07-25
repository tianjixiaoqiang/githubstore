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
<div class='sccg'></div>
<style>
.sccg{
position:absolute;
width:100px;
height:50px;
border-radius:8px;
font-size:15px;
text-align:center;
line-height:50px;
color:#85f7b3;
background-color:#f7f7f7;
}
</style>
<!--top begin -->
	<jsp:include page="header.jsp"></jsp:include>
<!--container begin -->
<div class="container">
    <!--banner begin -->
    <div class="list_banner"><a href="" target="_blank"><img src="images/list_banner.jpg" width="1100" height="92" /></a></div>
    <!--1begin -->
    <div class="buy_one">
    
         <div class="buy_one_t">
              <div class="buy_one_t1"><input name="sele" id="J_selectAll_1" type="checkbox" value="" class="sele"/>全选</div>
              <div class="buy_one_t2">商品名称</div>
              <div class="buy_one_t3">单价</div>
              <div class="buy_one_t4">数量</div>
              <div class="buy_one_t5">小计</div>
              <div class="buy_one_t6">操作</div>
         </div>
         
         <div class="buy_one_c">
         <%
         User user=new User();
         if(session.getAttribute("user")!=null){
         	 user=(User)session.getAttribute("user");
         }
         else{
         	
         }
         List<Cart> carts=new ArrayList<Cart>();
         if(session.getAttribute("mycart")!=null){
        	 carts=(List<Cart>)session.getAttribute("mycart");
         }else{
        	 
         }        
         %>
         
           <ul>
           <%
             double totalprice=0;
             if(carts.size()!=0&&carts!=null)
             for(int i=0;i<carts.size();i++){
            	 Cart cart=carts.get(i);
            	 totalprice+=cart.getUnitprice()*cart.getBuynum();
           %>
               <li id="item-<%=cart.getCartid() %>">
                    <div class="buy_one_c1"><input name="sele" type="checkbox" value="<%=cart.getCartid() %>" class="sele"/></div>
                    <div class="buy_one_c2">
                         <div class="buy_one_c2l"><a href=""><img src="<%=cart.getImageurl() %>" width="38" height="54" /></a></div>
                         <div class="buy_one_c2r"><%=cart.getGoodsname() %></div>
                    </div>
                    <div class="buy_one_c3">￥<b class="pr1" id="pr1-<%=cart.getGoodsid()%>"><%=cart.getUnitprice() %></b></div>
                    <div class="buy_one_c4">
                          <div class="wrap-input2">
                              <a onclick="" href="javascript:reducenum(<%=cart.getUserid() %>,<%=cart.getGoodsid() %>)" class="btn-reduce2">减少数量</a>
                              <a onclick="" href="javascript:addnum(<%=cart.getUserid() %>,<%=cart.getGoodsid() %>)" class="btn-add2">增加数量</a>
                              <input onKeyUp="value=value.replace(/\D/g,'')" onchange="value=value.replace(/\D/g,'')" onblur="changenum(<%=cart.getUserid() %>,<%=cart.getGoodsid()%>,this.value)" value="<%=cart.getBuynum() %>" id=<%=cart.getGoodsid() %> class="text2">
                          </div>
                          <script>
								     function reducenum(userid,goodsid) {
								    	 var input=document.getElementById(goodsid);
								    	 var num=parseInt($("#"+goodsid).val());
								    	 //alert(num);
								    	 if(num>1){
								    		 num--;
								    		 //alert(input);
								    	 }
								    	 var url="Cart/changenum";
								    	 var data={"userid":userid,"goodsid":goodsid,"num":num};
								    	 var success=function(msg){
								    		    if(msg=="修改成功"){
								    		    $("#"+goodsid).val(num);
								    		    $("#pr2-"+goodsid).html(num*parseFloat($("#pr1-"+goodsid).html()));
								    		    var total=qiuhe();
								    		    $(".price").html(total);
								    		    }
								    		    else alert(msg);
								    		 };
								    	 $.post(url,data,success,"html");
									};
									function addnum(userid,goodsid) {
										var input=document.getElementById(goodsid);
										var num=parseInt($("#"+goodsid).val());
										//alert(num);
										num++;
										//alert(num);
										//alert(input);
										var url="Cart/changenum";
								    	 var data={"userid":userid,"goodsid":goodsid,"num":num};
								    	 var success=function(msg){
								    		     if(msg=="修改成功"){
								    		     $("#"+goodsid).val(num);
								    			 $("#pr2-"+goodsid).html(num*parseFloat($("#pr1-"+goodsid).html()));
								    			 var total=qiuhe();
									    		    $(".price").html(total);
								    			 }
								    		     else alert(msg);
								    		 };
								    	 $.post(url,data,success,"html");
									}
									function changenum(userid,goodsid,num){
										var url="Cart/changenum";
								    	 var data={"userid":userid,"goodsid":goodsid,"num":num};
								    	 var success=function(msg){
								    		 if(msg!="修改成功") 
								    			 alert(msg);
								    		   else{
								    			   $("#pr2-"+goodsid).html(num*parseFloat($("#pr1-"+goodsid).html()));//可能出现隐藏bug
								    			   var total=qiuhe();
									    		    $(".price").html(total);
								    		   }
								    			   
								    		 };
								    	 $.post(url,data,success,"html");
									}
									function qiuhe(){
										var suzu=new Array();
											$(".pr2").each(function(){
												suzu.push($(this).html());
											});
										var total=0;
										for(var i=0;i<suzu.length;i++){
											total+=parseFloat(suzu[i]);
										}
										return total;
									}
								</script>
                    </div>
                    <div class="buy_one_c5">￥<b class="pr2" id="pr2-<%=cart.getGoodsid()%>"><fmt:formatNumber><%=cart.getUnitprice()*cart.getBuynum()%></fmt:formatNumber></b></div>
                    <div class="buy_one_c6">
                         <div class="buy_one_c61"><a onclick="xsshoucang(<%=cart.getGoodsid() %>)" id="shoucangxianshi-<%=cart.getGoodsid() %>" href="javascript:addcollection(<%=cart.getUserid() %>,<%=cart.getGoodsid() %>)">收藏</a></div>
                         <div class="buy_one_c61"><a href="javascript:deletecartitems(<%=cart.getCartid()%>)">删除</a></div>
                         <script>
                         function xsshoucang(goodsid){
                        	 $(".sccg").css({"display":"none","left":function(){
 	                            return $("#shoucangxianshi-"+goodsid).offset().left-50;
                                },"top":function(){
 	                             return $("#shoucangxianshi-"+goodsid).offset().top-50;
                                }
                               });
                         }
                            
                         </script>
                         <script>
                         function addcollection(userid,goodsid){
                        	 var url="Cart/collect";
                        	 var data={"userid":userid,"goodsid":goodsid};
                        	 var success=function(msg){
                        		 if(msg=="收藏成功"){
                        			 $("#shoucangxianshi-"+goodsid).html("取消收藏");
                        			 //console.log($("#shoucangxianshi").offset().left);
                        		 }
                        		 if(msg=="取消收藏成功"){
                        			 $("#shoucangxianshi-"+goodsid).html("收藏");
                        		 }
                        		 $(".sccg").html(msg).fadeIn(500);
                    			 $(".sccg").fadeOut();
                        	 };
                        	 $.post(url,data,success,"html");
                         }
                         function deletecartitems(cartid){
                        	 var r=confirm("确认删除？");
                        	 if(r){
                        		 var cartitemstr="";
                        		 var cartitems=[];
                        		 /*
                        		 var a=[];
                                 console.log(a instanceof Array) //如果a是数组返回true
                        		 */
                        		 if(typeof(cartid)=="number")//number、string、object、Boolean、null、undefined
                        		 {
                        			cartitemstr=cartid+"";
                        			cartitems.push(cartid);
                        		 }
                                 if(cartid instanceof Array)
                                 {
                                	 for(var i=0;i<cartid.length;i++){
                                		 cartitems.push(cartid[i]);
                                	 }                               		 
                                	cartitemstr=cartitems.join(",");
                                 }
                        		 
                        		 //
                                 //cartitems.concat(cartid);concat只能连接字符串
                                 console.log(cartid);
                                 console.log(cartitems);
                                 console.log(cartitemstr);
                                 console.log(typeof(cartitemstr)=="string");
                        		 var url="Cart/deletegoods";
                            	 var data={"cartitemstr":cartitemstr};
                            	 var success=function (msg){
                            		 if(msg!="删除成功")alert(msg);
                            		 else {
                            			 for(var i=0;i<cartitems.length;i++)
                            			 $("#item-"+cartitems[i]).remove();
                            			 
                            			 var total=qiuhe();
							    		    $(".price").html(total);
                            		      }           
                            	 };                           	                           	 
                            	 /*$.ajax({
                            		 url:"Cart/deletegoods",
                            		 type: "post",
                            		 data: {"cartids":cartitems},
                            		 //dataType: "html",
                            		 traditional: true,
                            		 success: function (msg){
                                		 if(msg!="删除成功")alert(msg);
                                		 else {
                                			 for(var i=0;i<cartitems.length;i++)
                                			 $("#item-"+cartitems[i]).remove();
                                			 
                                			 var total=qiuhe();
    							    		    $(".price").html(total);
                                		      }           
                                	 }
                            	 });*/
                            	 $.post(url,data,success,"html");
                            }                        	 
                         }
                         </script>
                    </div>
               </li>
               <%} %>
           </ul>
         </div>
         
         <div class="buy_one_b">
              <div class="buy_one_bleft">
                   <div id="J_leftBar">
	                       <input type="checkbox" value="all" name="selectAll" id="J_selectAll_2" sign="1" onclick=""><span id = "F_selectAll_2" sign = "1" onclick="">全选</span>
	                        <a href="javascript:deleteitems();" class="mr15" id="J_removeAllBtn">批量删除</a>
	               </div>
	               <script>
	               function deleteitems(){
	            	   var checkboxs=$(".sele");
	            	   var cartids=[];
	            	   for(var i=1;i<$(".sele").size();i++){          //在js中:
	            		   if($(".sele").eq(i).prop("checked"))               //document.getElementById("checkboxID").checked   返回true或者false
	            		   cartids.push($(".sele").eq(i).val());      //$("input[type='checkbox']").prop("checked")  返回true或者false
	            	   }
	            	   //console.log($(".sele").size());
	            	  // console.log($(".sele").eq(1).prop("checked"));
	            	  // console.log($(".sele").eq(1).val()+"7777777");
	            	   //console.log(cartids+"6666666");
	            	   deletecartitems(cartids);
	               }
	               $("#J_selectAll_1").click(function(){
	            	   if(this.checked){
	            		   $("[type=checkbox]").prop("checked",true);//1.添加属性名称该属性就会生效应该使用prop();
	            		                                             //2.是有true,false两个属性使用prop();
	            		                                             // 3.其他则使用attr();
	            	   }
	            	   else{
	            		   $("[type=checkbox]").prop("checked",false);
	            	   }
	               });
	               $("#J_selectAll_2").click(function(){
	            	   if(this.checked){
	            		   $("[type=checkbox]").prop("checked",true);//1.添加属性名称该属性就会生效应该使用prop();
	            		                                             //2.是有true,false两个属性使用prop();
	            		                                             // 3.其他则使用attr();
	            	   }
	            	   else{
	            		   $("[type=checkbox]").prop("checked",false);
	            	   }
	               });
	               </script>
              </div>
              
              <div class="buy_one_bright">
                  <p>
                      <span class="cartsum">
                          <span id = "J_totalProductCount"><%=carts.size() %></span>
                          件商品金额总计：
                      </span>
                      <span style = "font-family: Arial; font-size: 14px;">&yen;</span>
                      <span class="price" id = "J_totalMoney"><%=totalprice %></span>
                  </p>
                  <p class="subtotal">
                      <span class="cartsum">应付总额(不含运费)：</span>
                      <span style = "color: #C30; font-size: 18px; font-weight: bold; font-family: Arial;">&yen;</span>
                      <span class="price"><fmt:formatNumber><%=totalprice %></fmt:formatNumber></span>
                  </p>
                  <p><a href="Dingdan/Showaddress" class="ch_bt" id="ch_bt" ></a></p>

              </div>
              
         </div>
         
    </div>
    <!--1end -->
    <!--hot begin -->
    <div class="buy_hot">
         <div class="buy_hot_t">热卖商品</div>
           <div class="today_b">
              <ul>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   <li class="last">
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="dj">定价：<del>￥30.5</del></span><span class="yhj">优惠价<b>￥112.3</b></span></div>
                        </a>
                   </li>
                   
                 
                   
              </ul>
         </div>  
    </div>
    <!--hot end -->
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
