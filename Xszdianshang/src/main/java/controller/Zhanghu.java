package controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import entity.Address;
import entity.Collect;
import entity.Good;
import entity.Order;
import entity.Orderitem;
import entity.User;
import service.ZhanghuService;

@Controller
@RequestMapping("/zhanghu")
public class Zhanghu {

	@Autowired
	private ZhanghuService zhanghuservice;
	//int userid=1;
	
	@Autowired
	private HttpSession session;
   

    
	@RequestMapping("/") 
	public String user_8(){ 
		
		
		return "user_8"; 
	} 
    
	@RequestMapping("/jifen")  //我的积分
	public String jifen() {
		
//		Order order = zhanghuservice.selectOrder(userid);
//		int orderid=order.getOrderid();
////		
//		List<Orderitem> list=zhanghuservice.selectOrderItem(orderid);    
		
//
//		session.setAttribute("order", order);
//		session.setAttribute("list",list);
		return "user_8";
	}
	
	@RequestMapping("/personal")  //���˵���
	public String personal() {
		User u=new User();
		int userid=0;
		if(session.getAttribute("user")!=null) {
			 u=(User) session.getAttribute("user");  
			 userid=u.getUserid();
		}		         
         
		User u1=zhanghuservice.selectUser(userid);
		session.setAttribute("user",u1);
		return "user_11";
	}
	
	@RequestMapping("/address")    //�ҵĵ�ַ�б�
	public String address() {
		User u=new User();
		int userid=0;
		if(session.getAttribute("user")!=null) {
			 u=(User) session.getAttribute("user");  
			 userid=u.getUserid();
		}
		List<Address> list=zhanghuservice.selectAddressList(userid);
		session.setAttribute("addresslist", list);
//		Address address=zhanghuservice.selectAddress(userid);
//		session.setAttribute("address", address);
		return "user_10";
	}
	
	@RequestMapping("/editAddress")  //�޸ĵ�ַ
	public String editAddress() {
		
//		Address address=zhanghuservice.selectAddress(userid);
//		session.setAttribute("address", address);
		return "user_10_2";
	}
	
	@RequestMapping("/deleteAddress")  //ɾ����ַ
	public String deleteAddress() {
		
//		Address address=zhanghuservice.selectAddress(userid);
//		session.setAttribute("address", address);
		return "user_10_3";
	}
	
	@RequestMapping("/news")  //�ҵ���Ϣ
	public String news() {
		
		return "user_9";
	}
	
	@RequestMapping("/news_xq")  //��Ϣ����
	public String news_xq() {
		
		return "user_9_xq";
	}
	
	@RequestMapping("/shoucang")  //�ҵ��ղ�
	public String shoucang() {
		User u=new User();
		int userid=0;
		List<Good> list2=new ArrayList<Good>();
		if(( session.getAttribute("user"))!=null) {
			u=(User)session.getAttribute("user");
			userid=u.getUserid();
			List<Collect> list1=zhanghuservice.selectShoucang(userid);
			for(int i=0;i<list1.size();i++) {
				list2.add((Good) zhanghuservice.selectGood(list1.get(i).getGoodsid()));
			}
			session.setAttribute("goodlist", list2);

		}
		
		return "user_2";
	}


}
