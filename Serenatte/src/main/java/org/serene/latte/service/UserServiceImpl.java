package org.serene.latte.service;

import org.serene.latte.dto.UserDTO;
import org.serene.latte.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;
	
	@Override
	public boolean userRegister(UserDTO userDTO) {
		userMapper.userRegister(userDTO);
		return false;
	}

	@Override
	public UserDTO userLogin(String userId, String password) {
		return userMapper.userLogin(userId, password);
	}

	@Override
	public boolean userUpdate(UserDTO userDTO) {
		userMapper.userUpdate(userDTO);
		return false;
	}
}
