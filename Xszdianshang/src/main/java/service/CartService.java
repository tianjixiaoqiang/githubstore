package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Cart;
import mapper.CartMapper;

@Service
public class CartService {
private CartMapper cartMapper;
@Autowired
public CartService(CartMapper cartMapper) {
	this.cartMapper=cartMapper;
}
@Transactional
public boolean  addintocart(Cart cart) {
	int goodsid=cart.getGoodsid();
	int userid=cart.getUserid();
	int num=cart.getBuynum();
	Cart cart2=cartMapper.findCartByGidandUid(userid, goodsid);
	if(cart2!=null) {
		int num3;
		num3=num+cart2.getBuynum();
		boolean b=cartMapper.updatemycart(num3, userid, goodsid);
		if(b)return true;
		else return false;
	}
	else {
		int cnt=cartMapper.addcart(cart);
		if (cnt != 0)
			return true;
		else {
			return false;
		}
	}
}

public List<Cart> getallcartbyuid(int userid) {
	List<Cart> carts=cartMapper.getAllcarts(userid);
	return carts;
}

@Transactional
public boolean deletegoodsincart(int cartid) {
	boolean b=cartMapper.deletecartitem(cartid);
	if(b)return true;
	else return false;
}

@Transactional
public boolean deletemyallcart(int userid) {
	int i=cartMapper.deleteallcartitem(userid);
	if(i>0)return true;
	else return false;
}

@Transactional
public boolean updatenumincart(int buynum,int userid,int goodsid) {
	boolean b=cartMapper.updatemycart(buynum, userid, goodsid);
	if(b)return true;
	else return false;
}

public int getuserid(int cartid) {
	if(cartMapper.getuseridbycartid(cartid)!=null)
	return cartMapper.getuseridbycartid(cartid).getUserid();
	else 
	return 0;
}

}
