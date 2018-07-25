package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.User;
import mapper.UserMapper;

@Service
public class UserService {
private UserMapper iuserMapper;
@Autowired
public UserService(UserMapper userMapper) {
	this.iuserMapper = userMapper;
}

 
	@Transactional
	public boolean register(User user) {
		int cnt = iuserMapper.addUser(user);
		if (cnt != 0)
			return true;
		else {
			return false;
		}
	}

	public boolean findUser(String username) {
		User u =iuserMapper.findUserByUserName(username);
		if (u != null)
			return true;
		else {
			return false;
		}
	}
	public User finduserbyusername(String username) {
		User user=iuserMapper.findUserByUserName(username);
		return user;
	}
 
}
