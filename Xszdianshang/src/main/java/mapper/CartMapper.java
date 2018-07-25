package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Cart;

@Repository
public interface CartMapper {
	@Insert("insert into cart(userid,goodsid,goodsname,buynum,imageurl,unitprice) values(#{userid},#{goodsid},#{goodsname},#{buynum},#{imageurl},#{unitprice})")
	public int addcart(Cart cart);
	@Select("select * from cart where userid=#{userid} and goodsid=#{goodsid}") 
	public Cart findCartByGidandUid(@Param("userid")int userid,@Param("goodsid")int goodsid);
	@Update("update cart set buynum=#{buynum} where userid=#{userid} and goodsid=#{goodsid}") 
	public boolean updatemycart(@Param("buynum")int buynum,@Param("userid")int userid,@Param("goodsid")int goodsid);
	@Select("select * from cart where userid=#{userid}")
	public List<Cart> getAllcarts(int userid);
	@Select("select * from cart where cartid=#{cartid}")
	public Cart getuseridbycartid(int cartid);
	@Delete("delete from cart where cartid=#{cartid}") 
	public boolean deletecartitem(int cartid);
	@Delete("delete from cart where userid=#{userid}") 
	public int deleteallcartitem(int userid);
	
}
