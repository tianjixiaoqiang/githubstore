<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">

</script>  

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>


<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!--container begin -->
	<div class="container">
		<!--1 begin -->
		<div class="con_one">
			<!--left begin -->
			<div class="con_one_left">
				<!--fenlei begin -->
				<div class="category">
					<dl>
						<dt>
							<a
								href="Good/fenleilist?specialty=1">小学</a>
						</dt>
						<dd>
							<a
								href="Good/fenleilist2?grade=1">小学一年级</a>
							<a
								href="Good/fenleilist2?grade=2">小学二年级</a>
							<a
								href="Good/fenleilist2?grade=3">小学三年级</a>
							<a
								href="Good/fenleilist2?grade=4">小学四年级</a>
							<a
								href="Good/fenleilist2?grade=5">小学五年级</a>
							<a
								href="Good/fenleilist2?grade=6">小学六年级</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a
								href="Good/fenleilist?specialty=2">初中</a>
						</dt>
						<dd>
							<a
								href="Good/fenleilist2?grade=7">初中一年级</a>
							<a
								href="Good/fenleilist2?grade=8">初中二年级</a>
							<a
								href="Good/fenleilist2?grade=9">初中三年级</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a
								href="Good/fenleilist2?specialty=3">高中</a>
						</dt>
						<dd>
							<a
								href="Good/fenleilist2?grade=10">高中一年级</a>
							<a
								href="Good/fenleilist2?grade=11">高中二年级</a>
							<a
								href="Good/fenleilist2?grade=12">高中三年级</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a
								href="Good/fenleilist?specialty=9">百科</a>
						</dt>
						<dd>
							<a href="Good/fenleilist2?grade=18">儿童百科</a> <a href="Good/fenleilist2?grade=19">青少年百科</a>
						</dd>
					</dl>
					<dl>
						<dt>
							<a
								href="Good/fenleilist?specialty=7">工具书</a>
						</dt>
						<dd>
							<a href="Good/fenleilist2?grade=14">汉语工具书</a> <a href="Good/fenleilist2?grade=15">英语工具书</a> <a href="Good/fenleilist2?grade=16">诗词工具</a>
							<a href="Good/fenleilist2?grade=17">其它</a>
						</dd>
					</dl>
					<dl class="last">
						<dt>
							<a
								href="Good/fenleilist?specialty=8">小说</a>
						</dt>
						<dd></dd>
					</dl>
				</div>
				<!--fenlei end -->
				<!--hot begin -->
				<div class="hotsell">
					<div class="hotsell_t">热销排行榜</div>
					<div class="hotsell_b">
						<ul>
							<c:forEach items="${goods.hotSold }" var="hotBook"
								varStatus="status">
								<li>
									<div class="dis_pi">
										<a href="Good/toXq?id=${hotBook.goodsid}" target="_blank"><img src="${hotBook.imgurl}"
											width="70" height="82" alt="" title="" /></a> <span
											class="pic_r"><em class="pic_t">${hotBook.goodsname}</em>
											<style>
											.pic_t{
											overflow: hidden;
											white-space: nowrap;
											text-overflow: ellipsis;
											}
											</style>
											 <i><fmt:formatNumber
													value="${hotBook.price*hotBook.discount }"
													type="currency" /></i> <del>
												<fmt:formatNumber value="${hotBook.price}" type="currency" />
											</del> </span>
											
									</div>
									<p>
							
										<a href="" target="_blank">${hotBook.goodsname}</a>
									</p> <c:if test="${status.count<=3}">
										<div class="num lbg">${status.count}</div>
									</c:if> <c:if test="${status.count>3}">
										<div class="num">${status.count}</div>
									</c:if>

								</li>
							</c:forEach>
							<!-- <li>
								<div class="dis_pi">
									<a href="" target="_blank"><img src="images/book4.jpg"
										width="70" height="82" alt="" title="" /></a> <span class="pic_r"><em>火车头</em>
										<i>￥23.80</i> <del>￥39.00 </del> </span>
								</div>
								<p>
									<a href="" target="_blank">新概念英语三培养技能</a>
								</p>
								<div class="num lbg">2</div>
							</li>
							<li>
								<div class="dis_pi">
									<a href="" target="_blank"><img src="images/book4.jpg"
										width="70" height="82" alt="" title="" /></a> <span class="pic_r"><em>火车头</em>
										<i>￥23.80</i> <del>￥39.00 </del> </span>
								</div>
								<p>
									<a href="" target="_blank">新概念英语三培养技能</a>
								</p>
								<div class="num lbg">3</div>
							</li>
							<li>
								<div class="dis_pi">
									<a href="" target="_blank"><img src="images/book4.jpg"
										width="70" height="82" alt="" title="" /></a> <span class="pic_r"><em>火车头</em>
										<i>￥23.80</i> <del>￥39.00 </del> </span>
								</div>
								<p>
									<a href="" target="_blank">新概念英语三培养技能</a>
								</p>
								<div class="num">4</div>
							</li>
							<li>
								<div class="dis_pi">
									<a href="" target="_blank"><img src="images/book4.jpg"
										width="70" height="82" alt="" title="" /></a> <span class="pic_r"><em>火车头</em>
										<i>￥23.80</i> <del>￥39.00 </del> </span>
								</div>
								<p>
									<a href="" target="_blank">新概念英语三培养技能</a>
								</p>
								<div class="num">5</div>
							</li>
							<li>
								<div class="dis_pi">
									<a href="" target="_blank"><img src="images/book4.jpg"
										width="70" height="82" alt="" title="" /></a> <span class="pic_r"><em>火车头</em>
										<i>￥23.80</i> <del>￥39.00 </del> </span>
								</div>
								<p>
									<a href="" target="_blank">新概念英语三培养技能</a>
								</p>
								<div class="num">6</div>
							</li>
							<li>
								<div class="dis_pi">
									<a href="" target="_blank"><img src="images/book4.jpg"
										width="70" height="82" alt="" title="" /></a> <span class="pic_r"><em>火车头</em>
										<i>￥23.80</i> <del>￥39.00 </del> </span>
								</div>
								<p>
									<a href="" target="_blank">新概念英语三培养技能</a>
								</p>
								<div class="num">7</div>
							</li> -->
						</ul>
					</div>
				</div>
				<script type="text/javascript">
					jQuery(".hotsell_b").slide({
						titCell : "li",
						triggerTime : 0
					});
				</script>

				<!--hot end -->
				<div class="clearfloat"></div>
				<!--ads1 begin -->
				<div class="ads1">
					<ul>
						<li><a href=""><img src="images/ad1.jpg" width="235"
								height="115" /></a></li>
						<li><a href=""><img src="images/ad2.jpg" width="235"
								height="115" /></a></li>
					</ul>
				</div>
				<!--ads1 end -->
			</div>
			<!--left end -->
			<!--right begin -->
			<div class="con_one_right">
				<!--banner begin -->
				<div class="banner">
					<ul class="pic">
						<li><a href="http://www.17k.com/book/1912829.html" target="_blank"><img
								src="img/天印神座.jpg" width="856" height="335" /></a></li>
						<li><a href="http://ac.qq.com/Comic/comicInfo/id/620575" target="_blank"><img
								src="img/变狗闯异界.jpg" width="856" height="335" /></a></li>
						<!-- <li><a href="" target="_blank"><img
								src="images/banner1.jpg" width="856" height="335" /></a></li> -->
					</ul>
					<ul class="hd">
						<li></li>
						<li></li>
						<!-- <li></li> -->
					</ul>
				</div>
				<script type="text/javascript">
					jQuery(".banner").slide({
						mainCell : ".pic",
						effect : "left",
						autoPlay : true,
						delayTime : 300
					});
				</script>
				<!--banner end -->
				<!--new book begin -->
				<div class="newbook">
					<div class="hd">
						<h2>新书上架</h2>
						<a class="next"></a> <a class="prev"></a>
						<ul>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
					<div class="bd">
						<!-- 新书上架 -->
						<ul>
							<c:forEach items="${goods.newGoods}" var="newBook">
								<li><a href="Good/toXq?id=${newBook.goodsid}" target="_self">
										<div class="imgs">
											<img src="${newBook.imgurl}" width="135" height="157" alt=""
												title="" />
										</div>
										<h3 class="pic_a">${newBook.goodsname}</h3>
										<style>
											.pic_a{
											overflow: hidden;
											white-space: nowrap;
											text-overflow: ellipsis;
											}
											</style>
										
										<div class="shou">
											<span class="shou_l">已售：<b class="red">${newBook.sold}</b></span>
											<span class="shou_r">收藏：<b class="red">${newBook.collection}</b></span>
										</div>
										<div class="price">￥${newBook.price}</div>
								</a></li>
															</c:forEach>
						</ul>
					</div>

				</div>
				<script type="text/javascript">
					jQuery(".newbook").slide({
						mainCell : ".bd ul",
						effect : "left",
						delayTime : 800,
						vis : 5,
						scroll : 1,
						pnLoop : false,
						trigger : "click",
						easing : "easeOutCubic"
					});
				</script>

				<!--new book end -->

				<!--hot tj begin -->
				<div class="hottj">
					<div class="hd">
						<h2>热门推荐</h2>
						<ul>
							<li>小学</li>
							<li>初中</li>
							<li>高中</li>
							<li>工具书</li>
							<li>小说</li>
							<li>百科</li>
						</ul>
					</div>
					<div class="bd">
						<!--热门推荐  小学-->
						<ul class="tjul">
							<c:forEach items="${goods.hotRecommend}" var="recBook">
								<c:if test="${recBook.specialty==1}">
									<li><a href="Good/toXq?id=${recBook.goodsid}"
										target="_blank">
											<div class="imgs">
												<img src="${recBook.imgurl}" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${recBook.goodsname}</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${recBook.sold}</b></span>
												<span class="shou_r">收藏：<b class="red">${recBook.collection}</b></span>
											</div>
											<div class="price">￥${recBook.price}</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!--热门推荐  初中-->
						<ul class="tjul">
							<c:forEach items="${goods.hotRecommend}" var="recBook">
								<c:if test="${recBook.specialty==2}">
									<li><a href="Good/toXq?id=${recBook.goodsid}"
										target="_blank">
											<div class="imgs">
												<img src="${recBook.imgurl}" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${recBook.goodsname}</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${recBook.sold}</b></span>
												<span class="shou_r">收藏：<b class="red">${recBook.collection}</b></span>
											</div>
											<div class="price">￥${recBook.price}</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!--热门推荐  高中-->
						<ul class="tjul">
							<c:forEach items="${goods.hotRecommend}" var="recBook">
								<c:if test="${recBook.specialty==3}">
									<li><a href="Good/toXq?id=${recBook.goodsid}"
										target="_blank">
											<div class="imgs">
												<img src="${recBook.imgurl}" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${recBook.goodsname}</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${recBook.sold}</b></span>
												<span class="shou_r">收藏：<b class="red">${recBook.collection}</b></span>
											</div>
											<div class="price">￥${recBook.price}</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!--热门推荐  教育-->
						<ul class="tjul">
							<c:forEach items="${goods.hotRecommend}" var="recBook">
								<c:if test="${recBook.specialty==7}">
									<li><a href="Good/toXq?id=${recBook.goodsid}"
										target="_blank">
											<div class="imgs">
												<img src="${recBook.imgurl}" width="132" height="180" alt=""
													title="" />
											</div>
											<div>
											<img alt="" src="">
											</div>
											<h3>${recBook.goodsname}</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${recBook.sold}</b></span>
												<span class="shou_r">收藏：<b class="red">${recBook.collection}</b></span>
											</div>
											<div class="price">￥${recBook.price}</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!--热门推荐  工具书-->
						<ul class="tjul">
							<c:forEach items="${goods.hotRecommend}" var="recBook">
								<c:if test="${recBook.specialty==8}">
									<li><a href="Good/toXq?id=${recBook.goodsid}"
										target="_blank">
											<div class="imgs">
												<img src="${recBook.imgurl}" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${recBook.goodsname}</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${recBook.sold}</b></span>
												<span class="shou_r">收藏：<b class="red">${recBook.collection}</b></span>
											</div>
											<div class="price">￥${recBook.price}</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<!--热门推荐  期刊-->
						<ul class="tjul">
							<c:forEach items="${goods.hotRecommend}" var="recBook">
								<c:if test="${recBook.specialty==9}">
									<li><a href="Good/toXq?id=${recBook.goodsid}"
										target="_blank">
											<div class="imgs">
												<img src="${recBook.imgurl}" width="132" height="180" alt=""
													title="" />
											</div>
											<h3>${recBook.goodsname}</h3>
											<div class="shou">
												<span class="shou_l">已售：<b class="red">${recBook.sold}</b></span>
												<span class="shou_r">收藏：<b class="red">${recBook.collection}</b></span>
											</div>
											<div class="price">￥${recBook.price}</div>
									</a></li>
								</c:if>
							</c:forEach>
						</ul>
						<style>
											h3{
											overflow: hidden;
											white-space: nowrap;
											text-overflow: ellipsis;
											}
											</style>
					</div>
				</div>
				<script type="text/javascript">
					jQuery(".hottj").slide({
						delayTime : 0
					});
				</script>
				<!--hot tj end -->
			</div>
			<!--right end -->
		</div>
		<!--1 end -->
		<!--ads2 beign -->
		<div class="ads2">
			<ul>
				<li><a href=""><img src="images/b1.jpg" width="360"
						height="125" /></a></li>
				<li><a href=""><img src="images/b2.jpg" width="360"
						height="125" /></a></li>
				<li class="last"><a href=""><img src="images/b3.jpg"
						width="360" height="125" /></a></li>
			</ul>
		</div>
		<!--ads2 end -->

		<!--today begin -->
		<div class="today">
			<div class="today_t">今日特价</div>
			<div class="today_b">
				<ul>
					<c:forEach items="${goods.dailySpecial }" var="dailyBook">
						<li><a href="Good/toXq?id=${dailyBook.goodsid}">
								<div class="pics">
									<img src="${dailyBook.imgurl }" width="178" height="168" alt=""
										title="" />
								</div>
								<div class="tt">${dailyBook.goodsname }</div>
								<div class="no_price">
									<span class="xj"><fmt:formatNumber
											value="${dailyBook.discount*dailyBook.price}"
											type="currency" /></span><span class="cj"><del>￥${dailyBook.price}</del></span>
								</div>
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<!--today end -->
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
			<div class="footer_copyright">网络文化经营许可证鄂网文[2018]0278-060号
				Copyright © 2018 版权所有</div>
		</div>

	</div>
	<!--footer end -->

</body>
</html>