package xyz.itwill.snb.dao;

import java.util.Map;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.snb.dto.Board;


@Repository
public class BoardMapper {

	private static final Logger logger = LoggerFactory.getLogger(BoardMapper.class);
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	public List<Board> select() {
		return sessionTemplate.selectList("select");
	}
	
	public List<Board> selectByLocation(String location) {
		return sessionTemplate.selectList("selectByLocation", location);
	}
	
	
}
