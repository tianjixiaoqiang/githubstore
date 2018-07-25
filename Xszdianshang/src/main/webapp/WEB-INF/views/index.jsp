<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">

window.onbeforeunload = onbeforeunload_handler; 
window.onunload = onunload_handler; 
function onbeforeunload_handler(){ 
    var warning="确认退出?";    
return warning; 
    } 
    
function onunload_handler(){ 
    var warning="谢谢光临"; 
    alert(warning); 
    } 

</script>  

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
               <div class="nav_left">全部分类</div>
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
     <!--1 begin --> 
     <div class="con_one">
          <!--left begin -->
          <div class="con_one_left">
               <!--fenlei begin -->
               <div class="category">
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
               <!--fenlei end -->
               <!--hot begin -->
               <div class="hotsell">
                    <div class="hotsell_t">热销排行榜</div>
                    <div class="hotsell_b">
                         <ul>
                                <li>
                                  <div class="dis_pi"><a href="" target="_blank"><img src="images/book4.jpg" width="70" height="82"  alt="" title=""/></a> <span class="pic_r"><em>火车头</em> <i>￥23.80</i> <del>￥39.00 </del> </span> </div>
                                  <p><a href="" target="_blank">新概念英语三培养技能</a></p>
                                  <div class="num lbg">1</div>
                                </li>
                                <li>
                                  <div class="dis_pi"><a href="" target="_blank"><img src="images/book4.jpg" width="70" height="82" alt="" title=""/></a> <span class="pic_r"><em>火车头</em> <i>￥23.80</i> <del>￥39.00 </del> </span> </div>
                                  <p><a href="" target="_blank">新概念英语三培养技能</a></p>
                                  <div class="num lbg">2</div>
                                </li>
                                <li>
                                  <div class="dis_pi"><a href="" target="_blank"><img src="images/book4.jpg" width="70" height="82" alt="" title=""/></a> <span class="pic_r"><em>火车头</em> <i>￥23.80</i> <del>￥39.00 </del> </span> </div>
                                  <p><a href="" target="_blank">新概念英语三培养技能</a></p>
                                  <div class="num lbg">3</div>
                                </li>
                               <li>
                                  <div class="dis_pi"><a href="" target="_blank"><img src="images/book4.jpg" width="70" height="82" alt="" title=""/></a> <span class="pic_r"><em>火车头</em> <i>￥23.80</i> <del>￥39.00 </del> </span> </div>
                                  <p><a href="" target="_blank">新概念英语三培养技能</a></p>
                                  <div class="num">4</div>
                                </li>
                                <li>
                                  <div class="dis_pi"><a href="" target="_blank"><img src="images/book4.jpg" width="70" height="82" alt="" title=""/></a> <span class="pic_r"><em>火车头</em> <i>￥23.80</i> <del>￥39.00 </del> </span> </div>
                                  <p><a href="" target="_blank">新概念英语三培养技能</a></p>
                                  <div class="num">5</div>
                                </li>
                                <li>
                                  <div class="dis_pi"><a href="" target="_blank"><img src="images/book4.jpg" width="70" height="82" alt="" title=""/></a> <span class="pic_r"><em>火车头</em> <i>￥23.80</i> <del>￥39.00 </del> </span> </div>
                                  <p><a href="" target="_blank">新概念英语三培养技能</a></p>
                                  <div class="num">6</div>
                                </li>
                                <li>
                                  <div class="dis_pi"><a href="" target="_blank"><img src="images/book4.jpg" width="70" height="82" alt="" title=""/></a> <span class="pic_r"><em>火车头</em> <i>￥23.80</i> <del>￥39.00 </del> </span> </div>
                                  <p><a href="" target="_blank">新概念英语三培养技能</a></p>
                                  <div class="num">7</div>
                                </li>
                      </ul>
                    </div>
               </div>
               <script type="text/javascript">
			  jQuery(".hotsell_b").slide({ titCell:"li",triggerTime:0 });
			  </script>

               <!--hot end -->
               <div class="clearfloat"></div>
               <!--ads1 begin -->
               <div class="ads1">
                   <ul>
                       <li><a href=""><img src="images/ad1.jpg" width="235" height="115" /></a></li>
                       <li><a href=""><img src="images/ad2.jpg" width="235" height="115" /></a></li>
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
					<li><a href="" target="_blank"><img src="images/banner1.jpg" width="856" height="335" /></a></li>
					<li><a href="" target="_blank"><img src="images/banner1.jpg" width="856" height="335" /></a></li>
					<li><a href="" target="_blank"><img src="images/banner1.jpg" width="856" height="335" /></a></li>
                  </ul>
                  <ul class="hd">
                      <li></li>
                      <li></li>
                      <li></li>
                  </ul>
               </div>
               <script type="text/javascript">
				  jQuery(".banner").slide({ mainCell:".pic",effect:"left", autoPlay:true, delayTime:300});
			  </script>
               <!--banner end -->
               <!--new book begin -->
               <div class="newbook">
                    <div class="hd">
                        <h2>新书上架</h2>
                        <a class="next"></a>
                        <a class="prev"></a>
                        <ul>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="bd">
                        <ul>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book1.jpg" width="135" height="157" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book2.jpg" width="135" height="157" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book1.jpg" width="135" height="157" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book2.jpg" width="135" height="157" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book1.jpg" width="135" height="157" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book2.jpg" width="135" height="157" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book1.jpg" width="135" height="157" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book2.jpg" width="135" height="157" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            
                        </ul>
                    </div>

               </div>
               <script type="text/javascript">jQuery(".newbook").slide({ mainCell:".bd ul", effect:"left", delayTime:800,vis:5,scroll:1,pnLoop:false,trigger:"click",easing:"easeOutCubic" });</script>

               <!--new book end -->
               
               <!--hot tj begin -->
               <div class="hottj">
                     <div class="hd">
                        <h2> 热门推荐</h2>
                        <ul>
                            <li>小学</li>
                            <li>初中</li>
                            <li>高中</li>
                            <li>教育</li>
                            <li>工具书</li>
                            <li>期刊</li>
                        </ul>
                    </div>
                    <div class="bd">
                          <ul class="tjul">
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典1</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典11</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                          </ul>
                          
                          <ul class="tjul">
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典3</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                          </ul>
                          
                          <ul class="tjul">
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典4</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                          </ul>
                          
                          <ul class="tjul">
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典5</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                          </ul>
                          
                          <ul class="tjul">
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典6</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                          </ul>
                          
                          <ul class="tjul">
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li>
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                            <li class="last">
                              <a href="" target="_blank">
                                   <div class="imgs"><img src="images/book3.jpg" width="132" height="180" alt="" title=""/></div>
                                   <h3>牛解英汉双解小词典</h3>
                                   <div class="shou">
                                        <span class="shou_l">已售：<b class="red">120</b></span>
                                        <span class="shou_r">收藏：<b class="red">19</b></span>
                                   </div>
                                   <div class="price">￥30.20</div>
                              </a>
                            </li>
                          </ul>
                          
                    </div>
               </div>
               <script type="text/javascript">jQuery(".hottj").slide({delayTime:0 });</script>
               <!--hot tj end -->
          </div>
          <!--right end -->
     </div>
     <!--1 end -->
     <!--ads2 beign -->
     <div class="ads2">
         <ul>
             <li><a href=""><img src="images/b1.jpg" width="360" height="125" /></a></li>
             <li><a href=""><img src="images/b2.jpg" width="360" height="125" /></a></li>
             <li class="last"><a href=""><img src="images/b3.jpg" width="360" height="125" /></a></li>
         </ul>
     </div>
     <!--ads2 end -->
     
     <!--today begin -->
     <div class="today">
         <div class="today_t">今日特价</div>
         <div class="today_b">
              <ul>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li class="last">
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" /></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li>
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   <li class="last">
                        <a href="">
                             <div class="pics"><img src="images/book_1.jpg" width="178" height="168" alt="" title=""/></div>
                             <div class="tt">世界历史大冒险（炫酷儿童历史图画书套装共15册）</div>
                             <div class="no_price"><span class="xj">￥12.3</span><span class="cj"><del>￥30.5</del></span></div>
                        </a>
                   </li>
                   
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