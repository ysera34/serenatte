package org.serene.latte.service;

import org.serene.latte.dto.UserDTO;

public interface UserService {
	
	public boolean userRegister(UserDTO userDTO);

	public UserDTO userLogin(String userId, String password);

	public boolean userUpdate(UserDTO userDTO);
}
