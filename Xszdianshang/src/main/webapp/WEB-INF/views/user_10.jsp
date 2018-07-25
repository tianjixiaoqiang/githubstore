<%@ page language="java" contentType="text/html; charset=utf-8"
	import="entity.*" pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的收获地址</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
	</head>

	<body>

		<div class="user_top">
			<div class="user_c">
				<div class="user_top_l">
					<a href="" target="_blank">回到首页</a> 欢迎您，uesr &nbsp;&nbsp;&nbsp; <a
						href="" target="_blank">退出</a>
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
					<input name="search2" type="text" class="uesr_s" /> <input
						name="search2" type="button" class="uesr_b" />
				</div>
			</div>
		</div>

		<div class="user_cont">
			<!--left begin -->
			<div class="user_cont_left">
				<dl>
					<dt>我的交易</dt>
					<dd>
						<a href="">我的订单</a>
					</dd>
					<dd>
						<a href="">我的收藏</a>
					</dd>
					<dd>
						<a href="">我的账单</a>
					</dd>
					<dd>
						<a href="">我的购物车</a>
					</dd>
					<dd>
						<a href="">已经购买的商品</a>
					</dd>
				</dl>
				<dl>
					<dt>自助服务</dt>
					<dd>
						<a href="">申请查询退换货</a>
					</dd>
					<dd>
						<a href="">查询退换货记录</a>
					</dd>
				</dl>
				<dl>
					<dt>我的账户</dt>
					<dd>
						<a href="zhanghu/jifen">我的积分</a>
					</dd>
					<dd>
						<a href="zhanghu/news">我的消息</a>
					</dd>
					<dd class="active">
						<a href="zhanghu/address">我的收获地址</a>
					</dd>
					<dd>
						<a href="zhanghu/personal">个人档案</a>
					</dd>
				</dl>
				<dl>
					<dt>社区中心</dt>
					<dd>
						<a href="">我的评论</a>
					</dd>
					<dd>
						<a href="">兑换专区</a>
					</dd>
				</dl>
			</div>
			<script type="text/javascript">
				$(document).ready(function() {
					$(".user_cont_left dl dt").click(function() {
						$(this).siblings().slideToggle("slow");
						$(this).toggleClass("jia");
						return false;
					});

				});
			</script>
			<!--left end -->
			<!--right begin -->
			
			<div class="user_cont_right">
				<div class="user_lmt">
					<div class="user_lmt1">我的收货地址</div>

				</div>
			<div class="tiaochukuang">
           <div class="user_coment">
                  <div class="user_address">
                     <dl>
                          <dt class="yellow">修改收货地址</dt>
                          <dd>电话号码、手机号码选填一项，其余均为必填选项</dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>所在地区</dt>
                          <dd>
                               <div>
                                  <select id="s_province" name="s_province" class="selects"></select>  
                                  <select id="s_city" name="s_city" class="selects"></select>  
                                  <select id="s_county" name="s_county" class="selects"></select>
                                  <script class="resources library" src="js/area.js" type="text/javascript"></script>
                                  
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
                          <dt><span class="red">*</span>详细地址</dt>
                          <dd>
                               <textarea id="xxdz" name="address_xx" cols="" rows="" class="address_xx" placeholder="不要重复填写省市区，必须大于5个字符，小于120个字符"></textarea>
                          </dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>邮政编码</dt>
                          <dd><input id="yzbm" name="youbian" type="text"  class="youbian"/></dd>
                     </dl>
                     <dl>
                          <dt><span class="red">*</span>收货人姓名</dt>
                          <dd><input id="xm" name="sh_name" value="aaa" type="text"  class="youbian" value="长度不超过25个字符" onfocus="if(this.value=='长度不超过25个字符'){this.value='';}"  onblur="if(this.value==''){this.value='长度不超过25个字符';}"/>
                          </dd>
                     </dl>
                     <dl>
                          <dt>手机号码</dt>
                          <dd>
                              <input id="sjhm" name="sh_name" type="text"  class="youbian" value="电话号码、手机号码必须填一项" onfocus="if(this.value=='电话号码、手机号码必须填一项'){this.value='';}"  onblur="if(this.value==''){this.value='电话号码、手机号码必须填一项';}"/>
                          </dd>
                     </dl>
                  <!--    <dl>
                          <dt>电话号码</dt>
                          <dd>
                              <input name="p_qh" type="text"  class="p_qh" value="区号" onfocus="if(this.value=='区号'){this.value='';}"  onblur="if(this.value==''){this.value='区号';}"/>-
                              <input name="p_qh" type="text"  class="p_qh" value="电话号码" onfocus="if(this.value=='电话号码'){this.value='';}"  onblur="if(this.value==''){this.value='电话号码';}"/>-
                              <input name="p_qh" type="text"  class="p_qh" value="分机" onfocus="if(this.value=='分机'){this.value='';}"  onblur="if(this.value==''){this.value='分机';}"/>
                          </dd>
                     </dl> -->
                     <dl>
                          <dt></dt>
                          <dd><input name="add_mr" type="checkbox" value="" class="add_mr" id="morenadd2"/>设为默认收货地址</dd>
                     </dl>
                     <dl>
                          <dt></dt>
                          <dd><input name="bc_bt" type="submit" class="bc_bt" value="保存" onclick="baocundz(${user.userid})"/></dd>
                     </dl>
                     <span class="address_id"></span>
                </div>
               <script>
                    function baocundz(userid){
                    	var addressid=parseInt($(".address_id").val())
                   	 console.log("addressid:"+addressid);
                   	 var name=$("#xm").val();
                   	 console.log("name:"+name);
                   	 var addrdetail=$("#xxdz").val();
                   	 console.log("addrdetail:"+addrdetail);
                   	 var postcode=$("#yzbm").val();
                   	 console.log("postcode:"+postcode);
                   	 var mobile=$("#sjhm").val();
                   	 console.log("mobile:"+mobile);
                   	 var province=$("#s_province option:selected").text();
                   	 console.log("province:"+province);
                  	     var city=$("#s_city option:selected").text();
                  	     console.log("city:"+city);
                  	     var country=$("#s_county option:selected").text();
                  	     console.log("country:"+country);
                  	     function getdadd2(){
               		    if($('#morenadd2').prop('checked'))
               			  return 1;
               		    else 
               			  return 0;
               	     };
               	     var defaultAddress=getdadd2();
               	     var address=addressid+"_"+userid+"_"+name+"_"+province+"_"+city+"_"+country+"_"+addrdetail+"_"+postcode+"_"+mobile+"_"+defaultAddress;
               	     var url="Dingdan/Changeaddress";
         	         var data={
         	    		 "address":address
         	          };
         	         var success=function(msg){
         	    	 if(msg!="修改成功")
         	    		 alert(msg);
         	    	 else{
         	    		$("#name-"+addressid).text(name);
         	    		$("#pcc-"+addressid).text(province+city+country);
         	    		$("#detail-"+addressid).text(addrdetail);
         	    		$("#postcode-"+addressid).text(postcode);
         	    		$("#mobile-"+addressid).text(mobile);
         	    		$(".tiaochukuang").fadeOut(100);
         	    	 }
         	     };
         	     $.post(url,data,success,"html");
                    }
               </script>
           </div>
           </div>
           <style>
                .address_id{
                  display:none;
                }
                .tiaochukuang{
                   position:absolute;
                   top:50%;
                   left:50%;
                   z-index:100;
                   transform:translate(-50%,-50%);
                   -webkit-transform:translate(-50%,-50%);
                   display:none;
                   background-color:#a9afbc;
                }
           </style>
           
				<div class="user_coment">
					
					<!--address list begin -->
					<table width="713" border="0" cellspacing="0" cellpadding="0"
						class="address_list">
						<tr class="address_list_t">
							<th width="10%">收货人</th>
							<th width="23%">所在地区</th>
							<th width="31%">详细地址</th>
							<th width="9%">邮编</th>
							<th width="14%">电话/手机</th>
							<th width="13%">操作</th>
						</tr>
						<c:forEach items="${addresslist}" var="address"
								varStatus="status">
							<tr id="${address.id}">
								
								<td><div align="center" id="name-${address.id }">${address.name}</div></td>
								<td><div align="center" id="pcc-${address.id }">${address.province} ${address.city} ${address.country}</div></td>
								<td><div align="center" id="detail-${address.id }">${address.addr_detail}</div></td>
								<td><div align="center" id="postcode-${address.id }">${address.postCode}</div></td>
								<td><div align="center" id="mobile-${address.id }">${address.mobile}</div></td>
								<td><div align="center">
										<a href="javascript:tiaochu(${address.id })">修改</a>/<a href="javascript:deleteaddr(${address.id })">删除</a>
									</div></td>
							</tr>
						</c:forEach>                   
					</table>
					<script>
                 function tiaochu(id){
            	    var name=$("#name-"+id).text();
            	    var detail=$("#detail-"+id).text();
            	    var postcode=$("#postcode-"+id).text();
            	    var mobile=$("#mobile-"+id).text();
            	    $("#xxdz").val(detail);
            	    $("#xm").val(name);
            	    $("#yzbm").val(postcode);
            	    $("#sjhm").val(mobile);
            	    $(".address_id").val(id);
            	    //console.log("daozheli");
            	    $(".tiaochukuang").fadeIn(1000);
                  }
                    </script>
                                  <script>
                                        //Dingdan/Deleteaddress
                                        function deleteaddr(id){
                                        	var r=confirm("确认删除？");
                                        	if(r){
                                        		var url="Dingdan/Deleteaddress";
                                            	var data={"id":id};
                                            	var success=function(msg){
                                            			if(msg!="删除成功")
                                            				alert(msg);
                                            			else{
                                            				$("#"+id).remove();
                                            			}
                                            	};
                                            	$.post(url,data,success,"html");
                                        	}                     	
                                        }
                                  </script>
					<!--address list end -->
				</div>
			</div>
			<!--right end -->
		</div>

		<div class="footer_m mar38">
			<div class="footer_nav">
				<a href="" target="_blank">关于我们</a>| <a href="" target="_blank">联系我们</a>|
				<a href="" target="_blank">人才招聘</a>| <a href="" target="_blank">广告服务</a>|
				<a href="" target="_blank">友情链接</a>| <a href="" target="_blank">销售联盟</a>|
				<a href="" target="_blank">公司简介</a>
			</div>
			<div class="footer_copyright">网络文化经营许可证鄂网文[2015]0278-060号
				Copyright © 2015-2018 版权所有</div>
		</div>

	</body>
</html>
