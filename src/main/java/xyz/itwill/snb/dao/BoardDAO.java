package xyz.itwill.snb.dao;



import xyz.itwill.snb.dto.Board;

public interface BoardDAO {
	int insertBoard(Board board);
	int updateBoard(Board board);
	int deleteBoard(int num);
	Board choiceBoard(int num);
	Board selectBoard(String userid);
	int updateStatusBoard(int num);
	
}
