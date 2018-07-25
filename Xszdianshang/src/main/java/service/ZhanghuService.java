package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Address;
import entity.Collect;
import entity.Good;
import entity.Order;
import entity.Orderitem;
import entity.User;
import mapper.ZhanghuMapper;

@Service
public class ZhanghuService {
	
	private ZhanghuMapper zhanghumapper;
	
	private List<User> user; 
	
	@Autowired
	public ZhanghuService (ZhanghuMapper zhanghumapper) {
		
		this.zhanghumapper=zhanghumapper;
	}
	
	public Order selectOrder(int userid) {
		
		Order o=zhanghumapper.selectOrder(userid);
		return o;
		
	}
	
public List<Orderitem> selectOrderItem(int orderid) {
		
		List<Orderitem> oi=zhanghumapper.selectOrderItem(orderid);
		return oi;
		
	}

public Address selectAddress(int userid) {
	
	Address ad=zhanghumapper.selectAddress(userid);
	return ad;
	
}

public User selectUser(int userid) {
	User user=zhanghumapper.selectUser(userid);
	return user;
	
}

public List<Address> selectAddressList(int userid) {
	List<Address> list=zhanghumapper.selectAddressList(userid);
	return list;
}

public List<Collect> selectShoucang(int userid) {
	List<Collect> list=zhanghumapper.selectShoucang(userid);
	return list;
}

public Good selectGood(Integer goodsid) {
	Good list=zhanghumapper.selectGood(goodsid);
	return list;
}


}
