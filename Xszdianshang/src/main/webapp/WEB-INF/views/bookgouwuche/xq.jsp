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
<script type="text/javascript" src="jquery/jquery.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="js/jquery.jqzoom.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script src="jquery/jquery.fly.js"></script>
<script>
	$(function() {
		$('.nav_left').mouseover(function() {

			$('.category_ho').show();
		}).mouseout(function() {
			$('.category_ho').hide();
		});
	});
</script>
</head>

<body>
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
}
int userid=user.getUserid();
Good good=(Good)session.getAttribute("good");
%>
	<!--top begin -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--top end -->
	<!--container begin -->
	<div class="container">
		<!--banner begin -->
		<div class="list_banner">
			<a href="" target="_blank"><img src="images/list_banner.jpg"
				width="1100" height="92" /></a>
		</div>
		<!--banner end -->
		<!--left begin -->
		<div class="xq_left">
			<div class="xq_left_dq">
				<a href="" target=""> 购书网</a> > <a href="" target=""> 图书</a> ><a
					href="" target=""> 中小学教辅</a> > 小学一年级
			</div>
			<!--book begin -->
			<div class="xq_book">
				<div class="books">
					<div id="preview" class="spec-preview">
						<span class="jqzoom"><img id="img1" jqimg="<%=good.getImgurl() %>"
							src="<%=good.getImgurl() %>" /></span><!-- images/xq_imgb1.jpg -->
					</div>
					<!--缩图开始-->
					<div class="spec-scroll">
						<a class="prev"></a> <a class="next"></a>
						<div class="items">
							<ul>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
								<li><img alt="" bimg="<%=good.getImgurl() %>"
									src="<%=good.getImgurl() %>" onmousemove="preview(this);"></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- xinxi begin -->
				<div class="books_info">
					<h1><%=good.getGoodsname() %>：<%=good.getIntroduction() %></h1>
					<div class="info">
						<dl>
							<dt>优&nbsp;&nbsp;惠&nbsp;&nbsp;价</dt>
							<dd>
								<b class="price_s">￥<fmt:formatNumber><%=good.getPrice()*good.getDiscount() %></fmt:formatNumber></b><span class="red">（<fmt:formatNumber><%=good.getDiscount()*10 %></fmt:formatNumber>折）</span>
							</dd>
						</dl>
						<dl>
							<dt>定&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价</dt>
							<dd>
								<del>￥<%=good.getPrice() %></del>
							</dd>
						</dl>
						<dl>
							<dt>时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;段</dt>
							<dd>
								<form id="form1" name="form1" method="post" action="">

									<label> <input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_0" /> 单期
									</label> <label> <input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_1" /> 半年
									</label> <label> <input type="radio" name="RadioGroup1"
										value="单选" id="RadioGroup1_1" /> 全年
									</label>

								</form>
							</dd>
						</dl>
						<dl>
							<dt>购买数量</dt>
							<dd>
								<div class="wrap-input">
									<a onclick="" href="javascript:reducenum(<%=good.getGoodsid() %>)" class="btn-reduce">减少数量</a> <a onclick=""
										href="javascript:addnum(<%=good.getGoodsid() %>)" class="btn-add">增加数量</a> 
										<input  value="1" id=<%=good.getGoodsid() %> class="text" onKeyUp="value=value.replace(/\D/g,'')" onchange="value=value.replace(/\D/g,'')">
								</div>
								<script>
								     function reducenum(goodsid) {
								    	 var input=document.getElementById(goodsid);
								    	 var num=parseInt($("#"+goodsid).val());
								    	 //alert(num);
								    	 if(num>1){
								    		 num--;
								    		 input.value=num;
								    		 //alert(input);
								    	 }
									};
									function addnum(goodsid) {
										var input=document.getElementById(goodsid);
										var num=parseInt($("#"+goodsid).val());
										//alert(num);
										num++;
										//alert(num);
										input.value=num;
										//alert(input);
									}
								</script>
							</dd>
						</dl>
						<dl>
							<dt>库&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存</dt>
							<dd>
								<span class="red"><%=good.getNum() %></span>件
							</dd>
						</dl>
						<dl>
							<dt>运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费</dt>
							<dd>
								￥10.00 <a href="" target="_blank" class="red">&nbsp;&nbsp;配送说明</a>
							</dd>
						</dl>
					</div>
					<!--dapei begin -->
					<div class="dapei">
						<div class="dapei_l">搭配可选</div>
						<div class="dapei_r">
							<ul>
								<li>
									<div class="dapei_rli1">
										<a href="" target="_blank"><img src="images/xq_03.jpg"
											width="72" height="86" /></a>
									</div>
									<div class="dapei_rli2">
										<a href="" target="_blank">5全国职称英语资料</a>
									</div>
									<div class="dapei_rli3">
										<input name="checkbox1" type="checkbox" value=""
											class="check1" />￥38.04
									</div>
								</li>
								<li>
									<div class="dapei_rli1">
										<a href="" target="_blank"><img src="images/xq_03.jpg"
											width="72" height="86" /></a>
									</div>
									<div class="dapei_rli2">
										<a href="" target="_blank">5全国职称英语资料</a>
									</div>
									<div class="dapei_rli3">
										<input name="checkbox1" type="checkbox" value=""
											class="check1" />￥38.04
									</div>
								</li>
								<li>
									<div class="dapei_rli1">
										<a href="" target="_blank"><img src="images/xq_03.jpg"
											width="72" height="86" /></a>
									</div>
									<div class="dapei_rli2">
										<a href="" target="_blank">5全国职称英语资料</a>
									</div>
									<div class="dapei_rli3">
										<input name="checkbox1" type="checkbox" value=""
											class="check1" />￥38.04
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--dapei end -->
					<div class="book_but">
						
							<div class="book_but1"><a id="ljgm" href="javascript:buynow(<%=good.getPrice()*good.getDiscount()%>,<%=good.getGoodsid() %>)">立即购买</a></div>
						    
						<script>
						   function buynow(unitprice,goodsid){
							   var buynum=$("#"+goodsid).val(); 
							   var goodtotal=goodsid+"_"+buynum+"_"+unitprice;
							   console.log(goodtotal);
							   url="Dingdan/Buyrightnow";
							   data={"goodtotal":goodtotal};
							   var success=function(msg){
								   //document.write(msg);
							   };
							   //$.post(url,data,success,"html");
							   window.location.href="Dingdan/Buyrightnow?goodtotal="+goodtotal;
						   }
						</script>
						<div class="book_but2">
							<a href="javascript:addintocart(<%=userid %>,<%=good.getGoodsid() %>);" class="button orange addcart"><i></i>加入购物车</a>
						</div>
						<script>
						function addintocart(userid,goodsid) {
							var num=parseInt($("#"+goodsid).val());
							//alert(num+"666");
							var url="Cart/AddCart";
							var data={"userid":userid,"goodsid":goodsid,"num":num};
							var success=function(msg){
								//alert(msg);
								if(msg!="添加成功"){alert(msg);}
								else{
									
								}
							};
							$.post(url,data,success,"html");
						}
						</script>
					</div>
					<script>
						$(function() {
							var offset = $(".icon-cart1").offset();
							$(".addcart")
									.click(
											function(event) {
												// var img = $(this).parent().children('img').attr('src'); //获取当前点击图片链接
												//var flyer = $('<img class="flyer-img" src="' + img + '">'); //抛物体对象
												var img = document
														.getElementById("img1");
												var imgsrc = img.src;
												var flyer = $('<img class="flyer-img" src="' + imgsrc + '">'); //抛物体对象
												flyer.fly({
													start : {
														//left: event.pageX,//抛物体起点横坐标
														//top: event.pageY, //抛物体起点纵坐标
														left : 10,
														top : 200,
													},
													end : {
														left : offset.left + 2,//抛物体终点横坐标
														top : offset.top + 2, //抛物体终点纵坐标
														width : 5, //结束时高度
														height : 10, //结束时高度
													},
													onEnd : function() {
														//$("#tip").show().animate({width: '200px'},300).fadeOut(500);////成功加入购物车动画效果
														this.destroy(); //销毁抛物体
													}
												});
											});
						});
					</script>
				</div>
				<!-- xinxi end -->

			</div>
			<!--book end -->
			<!--book 详情 begin -->
			<div class="book_xq">
				<div class="book_xq_t">商品详情</div>
				<div class="book_xq_b"><%=good.getDetail() %></div>
			</div>
			<!--book 详情 end -->
			<!--pinglun begin -->
			<div class="evaluate">

				<div class="evaluate_2">
					<span class="more"><a href="">查看全部评论>></a></span>
					<ul class="tabbtn_3" id="normaltab_3">
						<li class="current"><a href="">全部(1236)</a></li>
						<li><a href="">好评(1236)</a></li>
						<li><a href="">中评(0)</a></li>
						<li><a href="">差评(0)</a></li>
						<li><a href="">追评(0)</a></li>

					</ul>
					<!--tabbtn end-->
					<div class="tabcon_3" id="normalcon_3">
						<div class="sublist_3">
							<ul style="padding-bottom: 20px;">
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
							</ul>
						</div>
						<!--tabcon end-->
						<div class="sublist_3">

							<ul style="padding-bottom: 20px;">
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
							</ul>

						</div>
						<!--tabcon end-->
						<div class="sublist_3">

							<ul style="padding-bottom: 20px;">
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
							</ul>

						</div>
						<!--tabcon end-->
						<div class="sublist_3">

							<ul style="padding-bottom: 20px;">
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
							</ul>

						</div>
						<!--tabcon end-->
						<div class="sublist_3">

							<ul style="padding-bottom: 20px;">
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
								<li>
									<div class="people_pic">
										<img src="images/xq_pep.jpg">
											<p>sfdsas我的世界g</p>
									</div>
									<div class="pl_txt">
										<div class="pl_txt_1">
											<img src="images/star5.jpg" width="68" height="13" />
										</div>
										<div class="pl_txt_2">
											<p>
												心得：<b>很喜欢，很实用,以后就这家了</b>
											</p>
											<p style="text-indent: 3em;">2014-2-15 &nbsp;10:12:10</p>
											<p style="text-indent: 3em;">购买日期：2014-2-10
												&nbsp;11:10:10</p>

										</div>

									</div>
								</li>
							</ul>

						</div>
						<!--tabcon end-->

					</div>
					<!--tabbox end-->
				</div>
				<script type="text/javascript" src="js/jquery.tabso_yeso.js"></script>
				<script type="text/javascript">
					$(document).ready(function($) {

						//默认选项卡切换
						$("#normaltab_3").tabso({
							cntSelect : "#normalcon_3",
							tabEvent : "mouseover",
							tabStyle : "normal"
						});

					});
				</script>
			</div>
			<!--pinglun end -->
		</div>
		<!--left end -->

		<!--right begin -->
		<div class="xq_right">
			<!--hot begin -->
			<div class="hot_books">
				<div class="hot_books_t">热销排行</div>
				<div class="hot_books_b">
					<ul>
					<c:forEach items="${hotgoods }" var="hotBook"
								varStatus="status">
						<li>
							<div class="p-img">
								<a href="" title="" target="_blank"><img
									src="${hotBook.imgurl }" width="100" height="100" /></a>
							</div>
							<div class="p-name">
								<a href="" title="" target="_blank">${hotBook.goodsname }</a>
							</div>
							<div class="p-price">
								<strong>￥<fmt:formatNumber>${hotBook.discount*hotBook.price}</fmt:formatNumber></strong> <span class="zhe">${hotBook.discount*10}折</span>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!--hot end -->
			<!--other begin -->
			<div class="hot_books">
				<div class="hot_books_t">购买本书的还买了</div>
				<div class="hot_books_b">
					<ul>
						<li>
							<div class="p-img">
								<a href="" title="" target="_blank"><img
									src="images/xq_pic.jpg" width="100" height="100" /></a>
							</div>
							<div class="p-name">
								<a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a>
							</div>
							<div class="p-price">
								<strong>￥25.6</strong> <span class="zhe">[7.5折]</span>
							</div>
						</li>
						<li>
							<div class="p-img">
								<a href="" title="" target="_blank"><img
									src="images/xq_pic.jpg" width="100" height="100" /></a>
							</div>
							<div class="p-name">
								<a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a>
							</div>
							<div class="p-price">
								<strong>￥25.6</strong> <span class="zhe">[7.5折]</span>
							</div>
						</li>
						<li>
							<div class="p-img">
								<a href="" title="" target="_blank"><img
									src="images/xq_pic.jpg" width="100" height="100" /></a>
							</div>
							<div class="p-name">
								<a href="" title="" target="_blank">普鲁士勒绘本典藏（套装共6册）</a>
							</div>
							<div class="p-price">
								<strong>￥25.6</strong> <span class="zhe">[7.5折]</span>
							</div>
						</li>

					</ul>
				</div>
			</div>
			<!--other end -->
		</div>
		<!--right end -->
	</div>
	<!--container end -->
	<!--footer begin -->
	<div class="footer">
		<div class="footer_t">
			<ul>
				<li><a href=""><img src="images/f1.jpg" width="130"
						height="52" /></a></li>
				<li><a href=""><img src="images/f2.jpg" width="130"
						height="52" /></a></li>
				<li><a href=""><img src="images/f3.jpg" width="130"
						height="52" /></a></li>
				<li class="last"><a href=""><img src="images/f4.jpg"
						width="130" height="52" /></a></li>
			</ul>
		</div>
		<div class="footer_b">
			<div class="footer_b1 tb1">
				<span class="f_title">购物指南</span>
				<ul>
					<li><a href="" target="_blank">购物流程</a></li>
					<li><a href="" target="_blank">发票制度</a></li>
					<li><a href="" target="_blank">账户管理</a></li>
					<li><a href="" target="_blank">会员优惠</a></li>
				</ul>
			</div>
			<div class="footer_b1 tb2">
				<span class="f_title">支付方式</span>
				<ul>
					<li><a href="" target="_blank">货到付款</a></li>
					<li><a href="" target="_blank">网上支付</a></li>
					<li><a href="" target="_blank">银行转账</a></li>
					<li><a href="" target="_blank">账户余额</a></li>
				</ul>
			</div>
			<div class="footer_b1 tb3">
				<span class="f_title">支付方式</span>
				<ul>
					<li><a href="" target="_blank">订单状态说明</a></li>
					<li><a href="" target="_blank">订单取消操作</a></li>
					<li><a href="" target="_blank">订单配送说明</a></li>
				</ul>
			</div>
			<div class="footer_b1 tb4">
				<span class="f_title">配送方式</span>
				<ul>
					<li><a href="" target="_blank">配送时间及运费</a></li>
					<li><a href="" target="_blank">验货与签收</a></li>
					<li><a href="" target="_blank">订单配送查询</a></li>
				</ul>
			</div>
			<div class="footer_b1 tb5">
				<span class="f_title">退换货</span>
				<ul>
					<li><a href="" target="_blank">退换货政策</a></li>
					<li><a href="" target="_blank">退换货流程</a></li>
					<li><a href="" target="_blank">退换货申请</a></li>
					<li><a href="" target="_blank">退款说明</a></li>
				</ul>
			</div>
			<div class="footer_b1 tb6">
				<span class="f_title">商家服务</span>
				<ul>
					<li><a href="" target="_blank">常见问题</a></li>
					<li><a href="" target="_blank">找回密码</a></li>
					<li><a href="" target="_blank">汇款单招领</a></li>
					<li><a href="" target="_blank">联系客服</a></li>
				</ul>
			</div>
		</div>
		<div class="footer_m">
			<div class="footer_nav">
				<a href="" target="_blank">关于我们</a>| <a href="" target="_blank">联系我们</a>|
				<a href="" target="_blank">人才招聘</a>| <a href="" target="_blank">广告服务</a>|
				<a href="" target="_blank">友情链接</a>| <a href="" target="_blank">销售联盟</a>|
				<a href="" target="_blank">公司简介</a>
			</div>
			<div class="footer_copyright">网络文化经营许可证鄂网文[2015]0278-060号
				Copyright © 2015-2018 版权所有</div>
		</div>

	</div>
	<!--footer end -->
<div class="mycart">
<div class="icon-cart1"><div class="gouwuche"><a href="" style="color:#FFFFFF">购物车</a></div></div>
<div class="goods-list">
<ul id="celangwc">
<li><span class="tupian">图片</span><span class="jieshao">介绍</span></li>
<%
Cart cart=new Cart();
for(int i=0;i<carts.size();i++){ 
cart=carts.get(i);
%>
  <li><div class="lefttupian"><a><img class="imgleft" src="<%=cart.getImageurl()%>"/></a></div><div class="rightjieshao"><span class="jieshao1"><%=cart.getGoodsname() %></span><span class="shuliang">数量：<%=cart.getBuynum() %></span><span class="danjia">单价：<%=cart.getUnitprice() %></span></div></li>
  <li><hr color="white"></li>
 <%} %>
</ul>
</div>
</div>
<style>
        .lefttupian{
         width:80px;
         height:90px;
         display: inline-block;
     }
    .imgleft{
        width:80px;
        height:90px;
        vertical-align: unset;
    }
    .rightjieshao{
        display: inline-block;
        width:160px;
        height:90px;
        position: relative;
        background-color: #32446b;
    }
    .tupian{
        display:inline-block;
        width:79px;
        height:20px;
        background-color:#192642;
        color:white;
        line-height:20px;
        text-align:center;
        font-size:16px;
        border-right:1px solid #3d3d3d;
    }
    .jieshao{
        display:inline-block;
        width:160px;
        height:20px;
        background-color:#192642;
        color:white;
        line-height:20px;
        text-align:center;
        font-size:16px;
    }
    .rightjieshao .jieshao1{
        display:inline-block;
        width:160px;
        height:75px;
        color:white;
        line-height:20px;
        text-align:left;
        font-size:15px;
        display:-webkit-box !important;
        overflow: hidden;
        text-overflow: ellipsis;
        word-break:break-all;
        -webkit-box-orient: vertical;
        -webkit-line-clamp:4;
    }
    .shuliang{
        display:inline-block;
        width:60px;
        height:15px;
        color:white;
        line-height:15px;
        text-align:center;
        font-size:12px;
        vertical-align: top;
        /*border-right:1px solid #3d3d3d;*/
    }
    .danjia{
        display:inline-block;
        width:100px;
        height:15px;
        color:white;
        line-height:15px;
        text-align:center;
        font-size:12px;
        vertical-align: top;
    }
    .mycart{
        font-size:0;
        position: fixed;
        width: 260px;
        margin-right:-240px;
        height: 71%;
        top: 29%;
        right: 0px;
        /* background-color: #0f143a;*/
        z-index:1001;
        transition: all ease 0.8s
    }
    .mycart:hover{
        margin-right:0;
    }
    .mycart .icon-cart1{
        display: inline-block;
        position:relative;
        width: 20px;
        height: 656px;
        background-color: #ff2832;
    }
    .mycart .icon-cart1 .gouwuche{
        position:absolute;
        top:50%;
        transformY: -50%;
        -webkit-transformY: -50%;
        margin: 0 auto;
        line-height:20px;
        font-size:19px;
        width:20px;
    }
    .mycart .goods-list{
        display: inline-block;
        position:absolute;
        top:0;
        left:20px;
        width:240px;
        height: 656px;
        background-color: #0f143a;
        font-size:12px;
    }
    .mycart .goods-list ul{
        display:block;
        background-color: #f3f3f3;
    }
    .mycart .goods-list ul li{
        display: block;
        background-color: #f3f3f3;
    }
    .mycart .goods-list ul li a{
        display: inline-block;

    }
</style>
</body>
</html>
