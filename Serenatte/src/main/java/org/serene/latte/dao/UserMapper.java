package org.serene.latte.dao;

import org.apache.ibatis.annotations.Param;
import org.serene.latte.dto.UserDTO;

public interface UserMapper {
	
	public boolean userRegister(UserDTO userDTO);

	public UserDTO userLogin(@Param("userId") String userId, @Param("password") String password);
}
