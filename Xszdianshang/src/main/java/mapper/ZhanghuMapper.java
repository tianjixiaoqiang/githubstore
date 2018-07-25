package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.Address;
import entity.Collect;
import entity.Good;
import entity.Order;
import entity.Orderitem;
import entity.User;

@Repository
public interface ZhanghuMapper {
	
	@Select("select * from order where userid=#{userid}")
	public Order selectOrder(int userid);

	@Select("select * from orderitem where orderid=#{orderid}")
	public List<Orderitem> selectOrderItem(int orderid);

	@Select("select * from address where userid=#{userid}")
	public Address selectAddress(int userid);

	@Select("select * from user where userid=#{userid}")
	public User selectUser(int userid);

	@Select("select * from address where userid=#{userid}")
	public List<Address> selectAddressList(int userid);

	@Select("select * from collects where userid=#{userid}")
	public List<Collect> selectShoucang(int userid);

	@Select("select * from good where goodsid=#{goodsid}")
	public Good selectGood(Integer goodsid);
	
}
