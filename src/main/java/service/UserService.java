package service;

import java.util.List;

import pojo.User;

public interface UserService {

	public List<User> userList() throws Exception;
	public User login(User user) throws Exception;
	//注册用户
	public int resgiter(User user);

}
