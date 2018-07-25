package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.Cart;
import entity.Orderitem;

@Repository
public interface OrderitemMapper {
	@Insert("insert into orderitem(orderid,goodsid,bcount) values(#{orderid},#{goodsid},#{bcount})")
	public int addOrderitem(Orderitem orderitem);
	@Select("select * from orderitem where orderid=#{orderid}")
	public List<Orderitem> getitemsbyoid(int orderid);
}
