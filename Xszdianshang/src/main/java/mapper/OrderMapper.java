package mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.Address;
import entity.Order;



@Repository
public interface OrderMapper {
	@Insert("insert into orders(userid,sid,createtime,state,ocount,totalprice) values(#{userid},#{sid},#{createtime},#{state},#{ocount},#{totalprice})")
	public int addOrder(Order order);
	@Select("select * from orders where userid=#{userid} and createtime=#{createtime}") 
	public Order findorderid(@Param("userid")int userid,@Param("createtime")String createtime);
}
