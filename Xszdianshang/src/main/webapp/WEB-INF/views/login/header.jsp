<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<!--top begin -->
	<div class="header">

		<div class="header_1">
			<div class="warp">
				<div class="header_1_l">
					<c:if test="${user.username != null }">
						<span style="font: bold;">${user.username}</span>,欢迎您光临购书网！ 
						<a href="Login/outLogin">退出</a>
				</c:if>
					<c:if test="${user.username == null }">
					欢迎您光临购书网！<a href="Login/toLogin">请登陆</a>
						<a href="Login/zhuce">免费注册</a>
					</c:if>
				</div>
				<div class="header_1_r">
					<ul>
						<li><a href="">我的订单</a></li>
						<li><a href="">购物车<span class="red">0</span>件
						</a></li>
						<li><a href="Login/help_center">帮助中心</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--logo &s begin -->
		<div class="header_2">
			<div class="logo"></div>
			<div class="srarching">
				<div class="srarching_t">
					<input name="search_txt" type="text" class="search_txt"
						value="输入你要搜索的书籍名称"
						onfocus="if(this.value=='输入你要搜索的书籍名称'){this.value='';}"
						onblur="if(this.value==''){this.value='输入你要搜索的书籍名称';}" /> <input
						name="search_bt" type="button" class="search_bt" value="搜索" />
				</div>
				<div class="srarching_b">
					热门搜索： <a href="">外语考试</a> <a href="">中小学教辅</a> <a href="">百科全书</a>
					<a href="">辞典</a> <a href="">牛津系列</a> <a href="">汉语工具书</a> <a
						href="">英语工具书</a>
				</div>
			</div>
			<div class="ewm">
				<img src="images/ewm.jpg"
					width="92" height="92" />
			</div>

		</div>
		<!--logo &s end -->
		<!--nav begin -->
		<div class="nav">
			<div class="warp">
				<div class="nav_left">

					全部分类
					<div class="category_ho">
						<dl>
							<dt>
								<a href="Good/fenleilist?specialty=1">小学</a>
							</dt>
							<dd>
								<a href="Good/fenleilist2?grade=1">小学一年级</a> <a href="Good/fenleilist2?grade=2">小学二年级</a> <a href="Good/fenleilist2?grade=3">小学三年级</a> <a
									href="Good/fenleilist2?grade=4">小学四年级</a> <a href="Good/fenleilist2?grade=5">小学五年级</a> <a href="Good/fenleilist2?grade=6">小学六年级</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="Good/fenleilist?specialty=2">初中</a>
							</dt>
							<dd>
								<a href="Good/fenleilist2?grade=7">初中一年级</a> <a href="Good/fenleilist2?grade=8">初中二年级</a> <a href="Good/fenleilist2?grade=9">初中三年级</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="Good/fenleilist?specialty=3">高中</a>
							</dt>
							<dd>
								<a href="Good/fenleilist2?grade=10">高中一年级</a> <a href="Good/fenleilist2?grade=11">高中二年级</a> <a href="Good/fenleilist2?grade=12">高中三年级</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="Good/fenleilist?specialty=9">百科</a>
							</dt>
							<dd>
								<a href="Good/fenleilist2?grade=18">儿童百科</a> <a href="Good/fenleilist2?grade=19">青年百科</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="Good/fenleilist?specialty=7">工具书</a>
							</dt>
							<dd>
								<a href="Good/fenleilist2?grade=14">汉语工具书</a> <a href="Good/fenleilist2?grade=15">英语工具书</a> <a href="Good/fenleilist2?grade=16">诗词工具</a>
								<a href="Good/fenleilist2?grade=17">其它</a>
							</dd>
						</dl>
						<dl class="last">
							<dt>
								<a href="Good/fenleilist?specialty=8">小说</a>
							</dt>
							<dd></dd>
						</dl>
					</div>

				</div>
				<div class="nav_right">
					<ul>
						<li><a
							href="Good/toIndex">首页</a></li>
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
</body>
</html>