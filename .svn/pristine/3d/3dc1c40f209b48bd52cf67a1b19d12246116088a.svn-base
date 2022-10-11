package xyz.itwill.snb.handler;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import xyz.itwill.snb.dto.User;

@Component
public class ChattingHandler extends TextWebSocketHandler {
	private static final Logger logger=LoggerFactory.getLogger(ChattingHandler.class);
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		
		logger.info("#ChattingHandler, afterConnectionEstablished");
		sessionList.add(session);
		
		logger.info(((User)session.getAttributes().get("loginUser")).getId() + "님이 입장하셨습니다.");
		
		for(int i=0;i<sessionList.size(); i++) {
			WebSocketSession s = sessionList.get(i);
			s.sendMessage(new TextMessage(((User)session.getAttributes().get("loginUser")).getId() +" 님이 입장했습니다."));
		}
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		
		logger.info("#ChattingHandler, handleMessage");
		logger.info(session.getId() + ":" + message);
		
		for(String key : session.getAttributes().keySet())
			System.out.println("key = " + key);
		
		Map<String,Object> map = session.getAttributes();
		User user = (User) map.get("loginUser");
		String userid = user.getId();
		
		for(int i=0;i<sessionList.size();i++) {
			WebSocketSession s = sessionList.get(i);
			s.sendMessage(new TextMessage(userid + ":" + message.getPayload()));
		}
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		
		logger.info("#ChattingHandler, afterConnectionClosed");

		sessionList.remove(session);

		logger.info(((User)session.getAttributes().get("loginUser")).getId() + "님이 퇴장하셨습니다.");
		
		for (int i = 0; i < sessionList.size(); i++) {
			WebSocketSession s = sessionList.get(i);
			s.sendMessage(new TextMessage(((User)session.getAttributes().get("loginUser")).getId()+" 님이 퇴장했습니다."));
		}
		
	}
	
}
