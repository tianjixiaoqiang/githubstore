package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.Address;
import entity.Cart;
import entity.Good;
import entity.Order;
import entity.Orderitem;
import entity.User;
import service.AddressService;
import service.CartService;
import service.GoodService;
import service.OrderService;
import service.OrderitemService;

@Controller
@RequestMapping("/Dingdan")
public class DingdanController {
	@Autowired
    private AddressService addressService;
	@Autowired
	private CartService cartService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderitemService orderitemService;
	@Autowired
	private GoodService goodService;
	@Autowired
    private HttpSession session;
	
	@RequestMapping("/Buyaddress")
	public String buyaddress() {
		System.out.println("到buy_address界面");
		return "bookdingdan/buy_address";
	}
	@RequestMapping("/Buyzhifu")
	public String buyzhifu() {
		return "bookdingdan/buy_zhifu";
	}
	
	@RequestMapping(value="/Addintoorder", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //此注解不能省略 否则ajax无法接受返回值 
	public String addintodingdan(Order order) {
		boolean b=orderService.addOrder(order);
		if(b)return "添加成功";
		else {
			return "出现未知错误49";
		}
	}
	
	@RequestMapping(value="/Addintoorderitem", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //此注解不能省略 否则ajax无法接受返回值 
	public String addintodingdanmingxi(Orderitem orderitem) {
		boolean b=orderitemService.addOrderitem(orderitem);
		if(b)return "添加成功";
		else {
			return "出现未知错误59";
		}
	}
	
	@RequestMapping(value="/Addintoaddress", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //此注解不能省略 否则ajax无法接受返回值 
	public String addintoaddress(String address) {
		System.out.println(address+"-68");
		int userid=Integer.valueOf(address.split("_")[0]);
		System.out.println(userid);
		String name=address.split("_")[1];
		System.out.println(name);
		String province=address.split("_")[2];
		String city=address.split("_")[3];
		String country=address.split("_")[4];
		String addrDetail=address.split("_")[5];
		String postcode=address.split("_")[6];
		String mobile=address.split("_")[7];
		int defaultaddress=Integer.valueOf(address.split("_")[8]);
		System.out.println(defaultaddress);
		String defaultaddress2=defaultaddress+"";
		if(name!=null
		&&province!=null
		&&city!=null
		&&country!=null
		&&addrDetail!=null
		&&postcode!=null
		&&mobile!=null
		&&defaultaddress2!=null
		) {
			System.out.println("测试代码91");
			Address address2=new Address();
			address2.setUserid(userid);
			address2.setName(name);
			address2.setProvince(province);
			address2.setCity(city);
			address2.setCountry(country);
			address2.setAddr_detail(addrDetail);
			address2.setPostCode(postcode);
			address2.setMobile(mobile);
			address2.setDefaultAddress(defaultaddress);
			if(address2.getDefaultAddress()==1)
			{
				System.out.println("测试代码104");
				addressService.updatedefaddress(address2.getUserid());				
				System.out.println("测试代码106");
			}
			boolean b=addressService.addaddress(address2);
			List<Address> addresses=addressService.findaddressbyuserid(userid);
			session.setAttribute("address", addresses);
			System.out.println("tianjiachenggong");
			Address address3=addressService.findaddressid(address2);
			if(address3.getDefaultAddress()==1) {
				session.setAttribute("defaultaddressid", address3.getId());
			}
                                                                    //JSONArray array = new JSONArray();
			System.out.println("测试代码111");                      //for(int i=0;i<10;i++){
                                                                   //array = new JSONArray();
                                                                   //array.put("data",i);
                                                                   //}
			if(b)return "添加成功+"+address3.getId();
			else {
				return "出现未知错误83";
			}
		}
		else 
			return "信息未完善，请完善收货地址";
		
	}
	
	@RequestMapping(value="/Changeaddress", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //此注解不能省略 否则ajax无法接受返回值 
	public String changeaddress(String address) {
		int addressid=Integer.valueOf(address.split("_")[0]);
		int userid=Integer.valueOf(address.split("_")[1]);
		String name=address.split("_")[2];
		String province=address.split("_")[3];
		String city=address.split("_")[4];
		String country=address.split("_")[5];
		String addr_detail=address.split("_")[6];
		String postCode=address.split("_")[7];
		String mobile=address.split("_")[8];
		String defaultAddress2=address.split("_")[9];
		int defaultAddress=Integer.valueOf(defaultAddress2);
		if(name!=null
				&&province!=null
				&&city!=null
				&&country!=null
				&&mobile!=null
				&&postCode!=null
				&&defaultAddress2!=null
				&&addr_detail!=null
				) {
			Address address2=new Address();
			address2.setId(addressid);
			address2.setUserid(userid);
			address2.setName(name);
			address2.setProvince(province);
			address2.setCity(city);
			address2.setCountry(country);
			address2.setAddr_detail(addr_detail);
			address2.setPostCode(postCode);
			address2.setMobile(mobile);
			address2.setDefaultAddress(defaultAddress);
			if(defaultAddress==1)
			{
				addressService.updatedefaddress(userid);
			}
			boolean b=addressService.changeaddress(address2);
			if(b) {
				List<Address> addresses=addressService.findaddressbyuserid(userid);
				session.setAttribute("address", addresses);
				return "修改成功";
				}
			else {
				return "出现未知错误110";
			}
		} else {
			return "出现未知错误113";
		}		
	}
	
	@RequestMapping(value="/Deleteaddress", produces = {"text/html;charset=UTF-8;"})
	@ResponseBody //此注解不能省略 否则ajax无法接受返回值 
	public String deleteaddress(int id) {
		boolean b=addressService.deleteaddress(id);
		if(b) {
			User user=(User)session.getAttribute("user");
			List<Address> addresses=addressService.findaddressbyuserid(user.getUserid());
			if(addresses.size()!=0) {
				Address address=addressService.finddeadd(user.getUserid());
				if(address!=null) {
					int defadd=address.getId();
					session.setAttribute("defaultaddressid", defadd);
				}
				else {
					session.setAttribute("defaultaddressid", 0);
				}
				session.setAttribute("address", addresses);
			}else {
				List<Address> addresses2=new ArrayList<Address>();
				session.setAttribute("defaultaddressid", 0);
				session.setAttribute("address", addresses2);
			}
			return "删除成功";}
		else {
			return "出现未知错误123";
		}
	}
	
	@RequestMapping(value="/Showaddress",produces= {"text/html;charset=UTF-8;"})
	public String showaddress() {
		User user=(User)session.getAttribute("user");
		int userid=user.getUserid();
		System.out.println(userid+"-129");
		List<Address> addresses=addressService.findaddressbyuserid(userid);
		System.out.println(addresses.size());
		if(addresses.size()!=0) {
			//System.out.println();
			Address address=addressService.finddeadd(userid);
			if(address!=null) {
				int defadd=address.getId();
				session.setAttribute("defaultaddressid", defadd);
			}
			else {
				session.setAttribute("defaultaddressid", 0);
			}
			session.setAttribute("address", addresses);
			/////////////////
			List<Cart> carts2=new ArrayList<Cart>();
			List<Cart> carts3=new ArrayList<Cart>();
	         if(session.getAttribute("mycart")!=null){
	        	 carts2=(List<Cart>)session.getAttribute("mycart");
	        	 session.setAttribute("mycart", carts3);
	        	 session.setAttribute("mycart2", carts2);
	        	 cartService.deletemyallcart(userid);
	         }else{
	        	 session.setAttribute("mycart2", carts3);
	         } 
	         ///////////////////
			return "redirect:/Dingdan/Buyaddress";
		}
		else {
			List<Address> addresses2=new ArrayList<Address>();
			session.setAttribute("defaultaddressid", 0);
			session.setAttribute("address", addresses2);
			return "redirect:/Dingdan/Buyaddress";
			}
		}
	
	@RequestMapping(value="/Shengchengdingdan",produces= {"text/html;charset=UTF-8;"})
	@ResponseBody //此注解不能省略 否则ajax无法接受返回值 
	public String shengchengdingdan(String ordertotal) {
		System.out.println(ordertotal);
		int userid=Integer.valueOf(ordertotal.split("_")[0]);
		String userid2=userid+"";
		int sid=Integer.valueOf(ordertotal.split("_")[1]);
		String sid2=sid+"";
		String createtime=ordertotal.split("_")[2];
		String state=ordertotal.split("_")[3];
		int ocount=Integer.valueOf(ordertotal.split("_")[4]);
		String ocount2=ocount+"";
		double totalprice=Double.valueOf(ordertotal.split("_")[5]);
		String totalprice2=totalprice+"";
		String goodsids=ordertotal.split("_")[6];
		String bcounts=ordertotal.split("_")[7];
		Address address=addressService.findaddrbyid(sid);
		System.out.println("测试代码263");
		if(address!=null) {
			session.setAttribute("qraddress", address);
			System.out.println("测试代码266");
		}
		else {
			session.setAttribute("qraddress", "");
			System.out.println("测试代码270");
		}
		if(userid2!=null
		   &&sid2!=null
		   &&createtime!=null
		   &&state!=null
		   &&ocount2!=null
		   &&totalprice2!=null
		   &&goodsids!=null
		   &&bcounts!=null) {
			Order order=new Order();
			order.setUserid(userid);
			order.setSid(sid);
			order.setCreatetime(createtime);
			order.setState(state);
			order.setOcount(ocount);
			order.setTotalprice(totalprice);
			boolean b=orderService.addOrder(order);
			System.out.println("测试代码288");
			Order order2=orderService.findorderid(order.getUserid(), order.getCreatetime());
			System.out.println("测试代码290");
			int orderid;
			if(order2!=null) {
				orderid=order2.getOrderid();
				String goodsid[]=goodsids.split("-");
				String bcount[]=bcounts.split("-");
				Orderitem orderitem=new Orderitem();
				System.out.println("测试代码297");
				if(goodsid.length==bcount.length) {
					System.out.println("测试代码299");
					for(int i=0;i<goodsid.length;i++) {
						orderitem.setOrderid(orderid);
						orderitem.setBcount(Integer.parseInt(bcount[i]));
						orderitem.setGoodsid(Integer.parseInt(goodsid[i]));
						System.out.println("测试代码304");
						orderitemService.addOrderitem(orderitem);
						System.out.println("测试代码305");
					}					
					return "提交成功";				
				}
				else {
					return "未知错误169";
				}
			}
			else {
				return "未知错误173";
			}
		}else {
			return "传值为空！";
		}		
	}
	
	@RequestMapping(value="/Putback",produces= {"text/html;charset=UTF-8;"})
	@ResponseBody //此注解不能省略 否则ajax无法接受返回值 
	public String fanghuigwc(int cartid,int goodsid) {
		List<Cart> carts=new ArrayList<Cart>();
		List<Cart> carts1=new ArrayList<Cart>();
		if(session.getAttribute("mycart")!=null) {
			carts1=(List<Cart>)session.getAttribute("mycart");
		}
		if(session.getAttribute("mycart2")!=null) {
			carts=(List<Cart>)session.getAttribute("mycart2");
		}
		for(int i=0;i<carts.size();i++) {
			if(carts.get(i).getCartid()==cartid&&carts.get(i).getGoodsid()==goodsid) {
				carts1.add(carts.get(i));
				cartService.addintocart(carts.get(i));
				carts.remove(i);
				session.setAttribute("mycart",carts1);
				session.setAttribute("mycart2", carts);
			}
		}
		if(carts1.size()!=0) {
			return "放回成功";
		}
		else {
			return "出现未知错误360";
		}
	}
	
	@RequestMapping(value="/Buyrightnow",produces= {"text/html;charset=UTF-8;"})
	public String buynow(String goodtotal) {
		System.out.println(goodtotal);
		User user=(User)session.getAttribute("user");
		String username=user.getUsername();
		System.out.println(username);
		int userid=user.getUserid();
		String userid2=userid+"";
		System.out.println("获取的userid:"+userid);
		int goodsid=Integer.valueOf(goodtotal.split("_")[0]);
		String goodsid2=goodsid+"";
		Good good=goodService.getgoodbyid(goodsid);
		String goodsname=good.getGoodsname()+good.getIntroduction();
		int buynum=Integer.valueOf(goodtotal.split("_")[1]);
		String buynum2=buynum+"";	
		String imageurl=good.getImgurl();
		Double unitprice=Double.valueOf(goodtotal.split("_")[2]);
		String unitprice2=unitprice+"";
		Cart cart=new Cart();
		List<Cart> carts=new ArrayList<Cart>();
		if(userid2!=null
		   &&goodsid2!=null
		   &&goodsname!=null
		   &&buynum2!=null
		   &&imageurl!=null
		   &&unitprice2!=null) {
			cart.setUserid(userid);
			cart.setGoodsid(goodsid);
			cart.setGoodsname(goodsname);
			cart.setBuynum(buynum);
			cart.setImageurl(imageurl);
			cart.setUnitprice(unitprice);
			cart.setCartid(99);
			carts.add(cart);
			session.setAttribute("mycart2", carts);
			List<Address> addresses=new ArrayList<Address>();
			addresses=addressService.findaddressbyuserid(userid);
			session.setAttribute("address", addresses);
			Address address=addressService.finddeadd(userid);
			if(address!=null) {
				int defadd=address.getId();
				session.setAttribute("defaultaddressid", defadd);
			}
			else {
				session.setAttribute("defaultaddressid", 0);
			}
			System.out.println("测试代码401");
			return "redirect:/Dingdan/Buyaddress";
		}else {
			session.setAttribute("mycart2", carts);
			System.out.println("测试代码405");
			return "redirect:/Dingdan/Buyaddress";
		}
			
	}
	
}
