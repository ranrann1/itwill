package xyz.itwill.snb.exception;

import lombok.Getter;
import lombok.Setter;

//로그인시 인증 실패가 발생된 경우에 대한 예외처리를 위해 작성된 예외클래스
@Setter
@Getter
public class LoginAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;

	//사용자가 입력한 아이디를 저장하기 위한 필드
	private String id;
	
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}

	//[Alt]+[Shift]+[S] >> [O] >> 부모클래스의 생성자 및 필드 선택 >> Generate
	public LoginAuthFailException(String message, String id) {
		super(message);
		this.id = id;
	}
}
