package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.User;

@Repository
public interface UserMapper {
	@Insert("insert into user(username,password,email,phone,qq,address,school,age,classroom,province,city,country,mibaoid1,mibaoid2,answer1,answer2) values(#{username},#{password},#{email},#{phone},#{qq},#{address},#{school},#{age},#{classroom},#{province},#{city},#{country},#{mibaoid1},#{mibaoid2},#{answer1},#{answer2})")
	public int addUser(User user);

	@Delete("delete from user where id=#{id}")
	public int deleteUser(int id);

	@Update("update user set username=#{username},password=#{password} where id=#{id}")
	public int updateUser(User user);

	@Select("select * from user where id=#{id}")
	public User getUserById(int id);

	@Select("select * from user where username=#{username} and password=#{password} ")
	public User findUser(User user);

	@Select("select * from user where username=#{username}")
	public User findUserByUserName(String username);

	@Select("select * from user")
	public List<User> getAllUsers();


	
}
