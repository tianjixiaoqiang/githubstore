package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mchange.io.StringMemoryFile;

import entity.Order;
import mapper.OrderMapper;

@Service
public class OrderService {
private OrderMapper orderMapper;
@Autowired
public OrderService(OrderMapper orderMapper) {
	this.orderMapper=orderMapper;
}

@Transactional
public boolean addOrder(Order order) {
	int i=orderMapper.addOrder(order);
	if(i!=0)return true;
	else {
		 return false;
	}
}

public Order findorderid(int userid,String createtime) {
	return orderMapper.findorderid(userid, createtime);
}

}
