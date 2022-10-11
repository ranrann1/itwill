
package xyz.itwill.snb.service;

import java.lang.reflect.Member;

import org.mindrot.jbcrypt.BCrypt;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.snb.dao.UserDAO;
import xyz.itwill.snb.dto.User;
import xyz.itwill.snb.exception.LoginAuthFailException;
import xyz.itwill.snb.exception.UserExistsException;
import xyz.itwill.snb.exception.UserNotFoundException;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
	private final UserDAO userDAO;

	@Transactional
	@Override
	public void addUser(User user) throws UserExistsException {

		if (userDAO.selectUser(user.getId()) != null) {
			throw new UserExistsException("이미 사용중인 아이디를 입력 하였습니다.", user);
		}

		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
		user.setPhone(user.getMobile1() + "-" + user.getMobile2() + "-" + user.getMobile3());
		user.setLocation(user.getAddress1());

		userDAO.insertUser(user);
	}

	@Transactional
	@Override
	public void modifyUser(User user) throws UserNotFoundException {
		if (userDAO.selectUser(user.getId()) == null) {
			throw new UserNotFoundException("아이디가 존재하지 않습니다.");
		}

		user.setPhone(user.getMobile1()+ "-" + user.getMobile2() + "-" + user.getMobile3());
		user.setLocation(user.getZipcode() + " "+ user.getAddress1()+ " " + user.getAddress2());
		
		userDAO.updateUser(user);
	}
	
	@Transactional
	@Override
	public void modifyPasswd(User user) throws UserNotFoundException {
		if(userDAO.selectUser(user.getId())==null) {
			throw new UserNotFoundException("아이디가 존재하지 않습니다.");
		}
				
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
		
		userDAO.updateUser(user);
	}
	@Transactional
	@Override
	public void removeUser(String id) throws UserNotFoundException {
		if (userDAO.selectUser(id) == null) {
			throw new UserNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		userDAO.deleteUser(id);
	}

	@Override
	public User getUser(String id) throws UserNotFoundException {
		User user = userDAO.selectUser(id);
		if (user == null) {
			throw new UserNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		return user;
	}

	@Override
	public void loginAuth(User user) throws LoginAuthFailException {
		User authUser = userDAO.selectUser(user.getId());

		if (authUser == null) {
			throw new LoginAuthFailException("아이디의 회원정보가 존재하지 않습니다", user.getId());
		}
		
		if (!authUser.getPassword().equals(user.getPassword())) {
			if (!BCrypt.checkpw(user.getPassword(), authUser.getPassword())) { //
			throw new LoginAuthFailException("아이디가 없거나 비밀번호가 맞지 않습니다.", user.getId()); //
			}
		}
	}
	
	@Override
	public User findId(User user) throws UserNotFoundException {
		User existUser = userDAO.findId(user);
		
		if(existUser == null) {
			throw new UserNotFoundException("아이디가 존재 하지 않습니다.");
		} 
		if(!(user.getName().equals(existUser.getName()))) {
			throw new UserNotFoundException("이름이 일치하지 않습니다.");
		}
		return existUser;
	}
	
	@Override
	public User findPasswd(User user) throws UserNotFoundException {
		User existUser = userDAO.findPasswd(user);
		
		if(existUser == null) {
			throw new UserNotFoundException ("아이디가 존재하지 않습니다");
		}
		
		if(!(user.getEmail().equals(existUser.getEmail()))) {
			throw new UserNotFoundException("이메일이 일치하지 않습니다.");
		}
				
		return existUser;
	}
	
	@Override
	public int idCheck(String id) {
		int cnt = userDAO.idCheck(id);
		
		return cnt;
		
	}
	
	@Override
	public int emailCheck(String email) {
			int cnt = userDAO.emailCheck(email);
		
		return cnt;
	}
}
	