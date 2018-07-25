package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.Address;


@Repository
public interface AddressMapper {
	@Insert("insert into address(userid,name,province,city,country,addr_detail,postCode,mobile,defaultAddress) values(#{userid},#{name},#{province},#{city},#{country},#{addr_detail},#{postCode},#{mobile},#{defaultAddress})")
	public int addAddress(Address address);
	@Update("update address set name=#{name},province=#{province},city=#{city},country=#{country},addr_detail=#{addr_detail},postCode=#{postCode},mobile=#{mobile},defaultAddress=#{defaultAddress} where id=#{id}") 
	public boolean updateaddress(Address address);
	@Delete("delete from address where id=#{id}") 
	public int deleteaddress(int id);
	@Select("select * from address where id=#{id}") 
	public Address findaddressbyid(int id);
	@Select("select * from address where userid=#{userid}") 
	public List<Address> findaddressByuserid(int userid);
	@Update("update address set defaultAddress=0 where userid=#{userid}")
	public boolean updatedefaultaddress(int userid);
	@Select("select * from address where userid=#{userid} and defaultAddress=1") 
	public Address finddefaultaddress(int userid);
	@Select("select * from address where userid=#{userid} and name=#{name} and province=#{province} and city=#{city} and country=#{country} and addr_detail=#{addr_detail} and postCode=#{postCode} and mobile=#{mobile}") 
	public Address findaddressid(Address address);
}
