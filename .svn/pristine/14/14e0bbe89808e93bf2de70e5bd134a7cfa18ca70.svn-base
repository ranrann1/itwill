package xyz.itwill.snb.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import xyz.itwill.snb.dto.Participant;
import xyz.itwill.snb.mapper.ParticipantMapper;

@Repository
@RequiredArgsConstructor
public class ParticipantDAOImpl implements ParticipantDAO {
	private final SqlSession sqlSession;

	@Override
	public int inserParticipant(int bid, String pid) {
		return sqlSession.getMapper(ParticipantMapper.class).insertParticipant(bid, pid);
	}

	@Override
	public List<Participant> selectParticipantList() {
		return sqlSession.getMapper(ParticipantMapper.class).selectParticipantList();
	}

}
