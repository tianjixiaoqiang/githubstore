package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Orderitem;
import mapper.OrderitemMapper;
@Service
public class OrderitemService {
private OrderitemMapper orderitemMapper;
@Autowired
public OrderitemService(OrderitemMapper orderitemMapper) {
	this.orderitemMapper=orderitemMapper;
}

@Transactional
public boolean addOrderitem(Orderitem orderitem) {
	int i=orderitemMapper.addOrderitem(orderitem);
	if(i!=0)return true;
	else return false;
}

public List<Orderitem> getitemsbyorderid(int orderid){
	return orderitemMapper.getitemsbyoid(orderid);
}

}
