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
         <%
            User user=(User)session.getAttribute("user");
            List<Cart> carts=new ArrayList<Cart>();
            if(session.getAttribute("mycart2")!=null){
            	carts=(List<Cart>)session.getAttribute("mycart2");
            }          
            List<Address> addresses=new ArrayList<Address>();
            if(session.getAttribute("address")!=null){
            	 addresses=(List<Address>)session.getAttribute("address");
            }
            else{
            	
            }
            int defaultaddressid=0;
            if(session.getAttribute("defaultaddressid")!=null){
            	  defaultaddressid=(int)session.getAttribute("defaultaddressid");
            }
           
            double totalprice=0.0;
         %>
         <script>
             
         </script>
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
              <div class="buy_one_t6">操作</div>
         </div>
         
         <div class="buy_one_c">
           <ul>
           <%
           String goodsids="";
           String bcounts="";
           if(carts.size()!=0)
              for(int i=0;i<carts.size();i++){
            	  Cart cart=carts.get(i);
            	  totalprice+=cart.getBuynum()*cart.getUnitprice();
            	  goodsids+=cart.getGoodsid()+"-";
            	  bcounts+=cart.getBuynum()+"-";
           %>
               <li id="cartitem-<%=cart.getCartid()%>">
                    <div class="buy_one_c1"></div>
                    <div class="buy_one_c2">
                         <div class="buy_one_c2l"><a href=""><img src="<%=cart.getImageurl() %>" width="38" height="54" /></a></div>
                         <div class="buy_one_c2r"><%=cart.getGoodsname() %></div>
                    </div>
                    <div class="buy_one_c3"><b class="pr1">￥<%=cart.getUnitprice() %></b></div>
                    <div class="buy_one_c4"><%=cart.getBuynum() %></div>
                    <div class="buy_one_c5">￥<b class="pr2"><fmt:formatNumber><%=cart.getBuynum()*cart.getUnitprice()%></fmt:formatNumber></b></div>
                    <div class="buy_one_c6">
                         <div class="buy_one_c62"><a href="javascript:putback(<%=cart.getCartid()%>,<%=cart.getGoodsid()%>)">放回购物车</a></div>
                        
                    </div>
               </li>
               <%} %>
           </ul>
         </div>
         <script>
           function putback(cartid,goodsid){
        	   var b=confirm("确认放回？");
        	   if(b){
        		   var url="Dingdan/Putback";
            	   var data={"cartid":cartid,"goodsid":goodsid};
            	   var success=function(msg){
            		   if(msg=="放回成功"){
            			   $("#cartitem-"+cartid).remove();        			   
            		   }
            		   else 
            			   alert(msg);
            	   };
            	   $.post(url,data,success,"html");
        	   }        
           }
         </script>
         <div class="buy_one_b">
               <div class="address_t">.收货地址</div>
               <%
               
               %>
                <div class="oldaddress">
                   <ul class="ul_cart">
                   <%
                     if(addresses.size()!=0)
                    	 for(int i=0;i<addresses.size();i++){
                    		 Address address=addresses.get(i);
                   %>
                    
                     <li class="oldaddr"><input name="oldaddr" type="radio" value="tianmenshi" id="addr-<%=address.getId() %>"/>&nbsp;&nbsp;<span class="neirong" id="neirong-<%=address.getId()%>"><%=address.getName() %>&nbsp;<%=address.getMobile() %>&nbsp;<%=address.getProvince() %>&nbsp;<%=address.getCity() %>&nbsp;<%=address.getCountry() %>&nbsp;<%=address.getAddr_detail() %>&nbsp;<%=address.getPostCode() %></span><a class="bianji" href="javascript:bianjiaddr(<%=address.getId() %>)" style="color:blue">编辑</a></li>
                     <hr></hr>
                     <%} %>
                   </ul>
                  <script>
                  var inputs=$("#addr-"+<%=defaultaddressid%>);
                  if(inputs!=null){
                	  $("#addr-"+<%=defaultaddressid%>).attr("checked","checked");
                  }
                  </script>
                </div>
             <style>
                 .oldaddress{
                     position: relative;
                     left: 48px;
                 }
                 .oldaddress .oldaddr{
                     width: 600px;
                     height:16px;
                     /*border:1px solid #c40000;*/
                 }
                 .oldaddress .bianji{
                     float:right;
                 }
                 .oldaddress .neirong{
                     line-height:16px
                     display: inline-block;
                     width: 550px;
                     /*border:1px solid green;*/
                     overflow:hidden;
                     white-space:nowrap;
                     text-overflow:ellipsis;
                 }
             </style>
             
             <!-- 66666666666666666 -->
             <div class="changeaddr">
                 <div class="address_cc">
                 <span style="display: none" id="span-address"></span>
                     <dl>
                         <dt><span class="red">*</span>收&nbsp;&nbsp;货&nbsp;人：</dt>
                         <dd><input name="name" type="text" class="txt1" id="shr"/></dd>
                     </dl>
                     <dl>
                         <dt><span class="red">*</span>收货地区：</dt>
                         <dd>
                             <div>
                                 <select id="s_province2" name="s_province2" class="selects1"></select>  
                                 <select id="s_city2" name="s_city2" class="selects1"></select>  
                                 <select id="s_county2" name="s_county2" class="selects1"></select>


                                 <script class="resources library" src="js/area2.js" type="text/javascript"></script>
                             </div>
                             <div id="show2"></div>
                             <script type="text/javascript">_init_area2();</script>
                             <script type="text/javascript">
                                 var Gid1  = document.getElementById ;
                                 var showArea1 = function(){
                                     Gid1('show2').innerHTML = "<h3>省" + Gid1('s_province2').value + " - 市" +
                                         Gid1('s_city2').value + " - 县/区" +
                                         Gid1('s_county2').value + "</h3>"
                                 };
                                 Gid1('s_county2').setAttribute('onchange','showArea1()');
                             </script>
                         </dd>

                     </dl>
                     <dl>
                         <dt><span class="red">*</span>详细地址：</dt>
                         <dd><input name="name" type="text" class="txt2" id="xxdz"/></dd>
                     </dl>
                     <dl>
                         <dt><span class="red">*</span>邮政编码：</dt>
                         <dd><input name="code" type="text" class="txt1" id="yzbm"/></dd>
                     </dl>
                     <dl>
                         <dt><span class="red">*</span>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</dt>
                         <dd>
                             <input name="code" type="text" class="txt1" id="sj"/>
                             或&nbsp; &nbsp; 固定电话
                             <input name="code" type="text" class="txt1" id="dianhua1" readonly="readonly"/>
                         </dd>
                     </dl>
                     <dl>
                         <dt></dt>
                         <dd><input name="sheding" type="checkbox" value="" class="sheding" id="morenadd2"/>设为默认地址</dd>
                     </dl>
                     <div class="querenshdz"><a href="javascript:changeaddress(<%=user.getUserid() %>)" id="qrshdz3"><div class="address_qr"></div></a><a class="guanbi" href="javascript:guanbi()">关闭</a></div>
                 </div>
             </div>

             <style>
                #qrshdz3{
                  display:inline-block;
                }
                .querenshdz{
                   width:800px;
                   height:30px;
                   padding:0;
                }
                .querenshdz .guanbi{
                   display:inline-block;
                   height: 30px;
                   width:  100px;
                   font-size:20px;
                   line-height:30px;
                   background-color:orange;
                   color:white;
                   text-align:center;
                   margin-left:100px;
                }
                 .changeaddr{
                     position:absolute;
                     background-color:#f7f7f7;
                     width:750px;
                     height:300px;
                     box-shadow:5px 5px 4px rgba(191,191,191,0.5);
                     border-radius: 10px;
                     display:none;
                     left:50%;
                     top:50%;
                     z-index: 3;
                     transform:translate(-50%,-50%);
                     -webkit-transform:translate(-50%,-50%);
                 }
                 .changeaddr .address_cc{
                     position:absolute;
                     top:50%;
                     left:65%;
                     z-index: 4;
                     transform:translate(-50%,-50%);
                     -webkit-transform:translate(-50%,-50%);
                     -moz-transform:translate(-50%,-50%);
                     -o-transform:translate(-50%,-50%);
                     -ms-transform:translate(-50%,-50%);
                 }
             </style>
             <script>
                 function bianjiaddr(addressid) {     
                     var address=$("#neirong-"+addressid).html().split("&nbsp;");
                     var name=address[0];
                     //console.log("name:"+name);
                     var mobile=address[1];
                     //console.log("mobile:"+mobile);
                     var province=address[2];
                     //console.log("province:"+province);
                     var city=address[3];
                     //console.log("city:"+city);
                     var country=address[4];
                     //console.log("country:"+country);
                     var addrdetail=address[5];
                     //console.log("addrdetail:"+addrdetail);
                     var postcode=address[6];
                     //console.log("postcode:"+postcode);
                     //$(".selector").find("option[text='pxx']").attr("selected",true);
                     $("#shr").val(name);
                    // $("#s_province2").find("option:contains("+province+")").attr("selected",true);//可能存在隐藏bug
                     //$("#s_city2").find("option:contains("+city+")").attr("selected",true);// $(".selector").find("option:contains('pxx')").attr("selected",true);
                    // $("#s_county2").find("option:contains("+country+")").attr("selected",true);
                     //$("#s_city2").text(city); cuowu
                     //$("#s_county2").text(country);
                     $("#xxdz").val(addrdetail);
                     $("#yzbm").val(postcode);
                     $("#sj").val(mobile);
                     $("#span-address").val(addressid);
                     $(".changeaddr").fadeIn(1000);
                    
                 }
                 function changeaddress(userid){
                	 var addressid=parseInt($("#span-address").val())
                	 console.log("addressid:"+addressid);
                	 var name=$("#shr").val();
                	 console.log("name:"+name);
                	 var addrdetail=$("#xxdz").val();
                	 console.log("addrdetail:"+addrdetail);
                	 var postcode=$("#yzbm").val();
                	 console.log("postcode:"+postcode);
                	 var mobile=$("#sj").val();
                	 console.log("mobile:"+mobile);
                	 var province=$("#s_province2 option:selected").text();
                	 console.log("province:"+province);
               	     var city=$("#s_city2 option:selected").text();
               	     console.log("city:"+city);
               	     var country=$("#s_county2 option:selected").text();
               	     console.log("country:"+country);
               	     function getdadd2(){
            		    if($('#morenadd2').prop('checked'))
            			  return 1;
            		    else 
            			  return 0;
            	     };
            	     var defaultAddress=getdadd2();
            	     var address=addressid+"_"+userid+"_"+name+"_"+province+"_"+city+"_"+country+"_"+addrdetail+"_"+postcode+"_"+mobile+"_"+defaultAddress;
            	     var address2={          	    	   
            	    	  "id":addressid,
            	    	  "userid":userid,
               			  "name":name,
               			  "province":province,
               			  "city":city,
               			  "country":country,
               			  "addr_detail":addrdetail,
               			  "postCode":postcode,
               			  "mobile":mobile,
               			  "defaultAddress":defaultAddress
               	      };
            	     var url="Dingdan/Changeaddress";
            	     var data={
            	    		 "address":address
            	     };
            	     var success=function(msg){
            	    	 if(msg!="修改成功")
            	    		 alert(msg);
            	    	 else{
            	    		 $("#neirong-"+addressid).html(name+"&nbsp;"+mobile+"&nbsp;"+province+"&nbsp;"+city+"&nbsp;"+country+"&nbsp;"+addrdetail+"&nbsp;"+postcode);
            	    		 $(".changeaddr").fadeOut(200);
            	    	 }
            	     };
            	     $.post(url,data,success,"html");
                 }
                 function guanbi(){
                	 $(".changeaddr").fadeOut(200);
                 }
             </script>
             <!-- 66666666666666666 -->
               <div class="address_x"><input name="oldaddr" type="radio" value=""/>使用新地址</div>
               <div class="address_cc">
                    <dl>
                         <dt><span class="red">*</span>收&nbsp;&nbsp;货&nbsp;人：</dt>
                         <dd><input name="name" type="text" class="txt1" id="name1"/></dd>
                    </dl>
                    <dl>
                         <dt><span class="red">*</span>收货地区：</dt>
                         <dd>
                             <div>
                                <select id="s_province" name="s_province" class="selects1"></select>  
                                <select id="s_city" name="s_city" class="selects1"></select>  
                                <select id="s_county" name="s_county" class="selects1"></select>
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
                         <dt><span class="red">*</span>详细地址：</dt>
                         <dd><input name="name" type="text" class="txt2" id="detail1"/></dd>
                    </dl>
                    <dl>
                         <dt><span class="red">*</span>邮政编码：</dt>
                         <dd><input name="code" type="text" class="txt1" id="postcode1"/></dd>
                    </dl>
                    <dl>
                         <dt><span class="red">*</span>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</dt>
                         <dd>
                               <input name="code" type="text" class="txt1" id="mobile1"/>
                               或&nbsp; &nbsp; 固定电话
                                <input name="code" type="text" class="txt1" id="dianhua" />
                         </dd>
                    </dl>
                    <dl>
                         <dt></dt>
                         <dd><input name="sheding" type="checkbox" value="" class="sheding" id="morenadd"/>设为默认地址</dd>
                    </dl>
                   <a href="javascript:newaddress(<%=user.getUserid() %>)" id="qrshdz"><div class="address_qr"></div></a>
               </div>   
               <style>
                  #qrshdz{
                      display:block;
                  }
               </style>
               <script>
                  function clearform(){
                	  $("#name1").val("");
                	  $("#s_province option:selected").text("省份");
                	  $("#s_city option:selected").text("地级市");
                	  $("#s_county option:selected").text("市、县级市");
                	  $("#detail1").val("");
                	  $("#postcode1").val("");
                	  $("#mobile1").val("");
                	  $("#dianhua").val("");
                  }
                  function clearform2(){
                	  
                  }
                  function newaddress(userid){
                	  console.log(userid);
                	  var name=$("#name1").val();
                	  console.log(name);
                	  var province=$("#s_province option:selected").text();
                	  console.log(province);
                	  var city=$("#s_city option:selected").text();
                	  console.log(city);
                	  var country=$("#s_county option:selected").text();
                	  console.log(country);
                	  var addr_detail=$("#detail1").val();
                	  console.log(addr_detail);
                	  var postCode=$("#postcode1").val();
                	  console.log(postCode);
                	  var mobile=$("#mobile1").val();
                	  console.log(mobile);
                	  //var mobile2=$(".txt1").eq(2).text();
                	  function getdadd(){
                		  if($('#morenadd').prop('checked'))
                			  return 1;
                		  else 
                			  return 0;
                	  };
                	  var defaultAddress=getdadd();
                	  console.log(defaultAddress);
                	  if(name!=null&&province!="省份"&&city!="地级市"&&country!="市、县级市"&&addr_detail!=null&&postCode!=null&&mobile!=null){
                		  var address=userid+"_"+name+"_"+province+"_"+city+"_"+country+"_"+addr_detail+"_"+postCode+"_"+mobile+"_"+defaultAddress;
                    	  var address2={
                    			  "userid":userid,
                    			  "name":name,
                    			  "province":province,
                    			  "city":city,
                    			  "country":country,
                    			  "addr_detail":addr_detail,
                    			  "postCode":postCode,
                    			  "mobile":mobile,
                    			  "defaultAddress":defaultAddress
                    	  };
                    	  var url="Dingdan/Addintoaddress";
                    	  var data={"address":address};
                    	  var success=function(msg){
                    		  if(msg!="信息未完善，请完善收货地址"){
                    			  var msg2=msg.split("+")[0];
                        		  var msg3=msg.split("+")[1];      		
                        			   $(".ul_cart").append($("<li class='oldaddr'><input name='oldaddr' type='radio' checked='checked' id='addr-"+msg3+"'><span class='neirong' id='neirong-"+msg3+"'>"+name+"&nbsp;"+mobile+"&nbsp"+province+"&nbsp;"+city+"&nbsp;"+country+"&nbsp;"+addr_detail+"&nbsp;"+postCode+"</span><a class='bianji' href='javascript:bianjiaddr("+msg3+")' style='color:blue'>编辑</a></li>"));
                        			   //$(".ul_cart").append($("<hr></hr>"));
                        			   clearform();
                    		  }
                    		  else{
                    			  alert(msg);
                    		  }
                    		  
                    		  
                    	  };
                    	  $.post(url,data,success,"text");
                	  }
                	  else{
                		  alert("请完善收货地址");
                	  }
                	 
                	  //var c = $('#select option:selected').text();    // 结果为 456
                  }
               </script>
               
         </div>
        
    </div>
    <!--1end -->
    <!--2begin -->
     <div class="buy_one_z">
             <p>商品金额：￥<fmt:formatNumber><%=totalprice %></fmt:formatNumber></p>
             <p>应付纵总额（含运费）：<b>￥<fmt:formatNumber><%=totalprice+10 %></fmt:formatNumber></b></p>
             <p><a onclick="submitdingdan('<%=user.getUserid() %>','<%=totalprice %>','<%=goodsids %>','<%=bcounts %>')" href="Dingdan/Buyzhifu" class="z_bt"></a></p>
     </div>
         <script>
             function submitdingdan(userid,totalprice,goodsids,bcounts){
            	 console.log("进入函数");
            	 var addr_id=$("input[type='radio']:checked").attr("id");//Dingdan/Buyzhifu
            	 //console.log("收货地址id:"+addr_id);
            	 var sid=parseInt(addr_id.split("-")[1]);
            	 console.log("sid收货地址id:"+sid);
            	 var d = new Date();//获取系统当前时间
            	 var createtime='';
            	 createtime +=d.getFullYear()+'年'; //获取当前年份
            	 createtime +=d.getMonth()+1+'月'; //获取当前月份（0——11）
            	 createtime +=d.getDate()+'日';
            	 createtime +=d.getHours()+'时';
            	 createtime +=d.getMinutes()+'分';
            	 createtime +=d.getSeconds()+'秒';
            	 console.log("订单生成时间:"+createtime);
            	 var state=0;
            	 //var ocounts=$(".buy_one_c4").html();
            	 var ocount=0;
            	 for(var i=0;i<$(".buy_one_c4").size();i++)
            		 ocount+=parseInt($(".buy_one_c4").eq(i).html());//parseFloat()
            	 var ordertotal=userid+"_"+sid+"_"+createtime+"_"+state+"_"+ocount+"_"+totalprice+"_"+goodsids+"_"+bcounts;
            	 var order={
            			 "userid":userid,
            			 "sid":sid,
            			 "createtime":createtime,
            			 "state":state,
            			 "ocount":ocount,
            			 "totalprice":totalprice
            	 };
            	 var url="Dingdan/Shengchengdingdan"; //Shengchengdingdan
            	 var data={
            			 "ordertotal":ordertotal    			
            	 };
            	 var success=function(msg){
            		 if(msg!="提交成功")
            			 alert(msg);
            	 };
            	 $.post(url,data,success,"html");
            	 /*
            	 var val=$('input:radio[name="sex"]:checked').val();
                               附三种方法都可以：
                 $('input:radio:checked').val()； 
                 $("input[type='radio']:checked").val();
                 $("input[name='rd']:checked").val();
            	 */
             }
         </script>
    <!--2end -->
   
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
