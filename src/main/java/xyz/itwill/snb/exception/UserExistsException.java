
package xyz.itwill.snb.exception;

import lombok.Getter;
import lombok.Setter;
import xyz.itwill.snb.dto.User;

@Getter
@Setter
public class UserExistsException extends Exception {
	private static final long serialVersionUID = 1L;

	private User user;

	public UserExistsException() { // TODO Auto-generated constructor stub 
	}

	public UserExistsException(String message, User user) {
		super(message);
		this.user = user;
	}

}
