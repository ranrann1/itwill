package xyz.itwill.snb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import xyz.itwill.snb.dto.Participant;

public interface ParticipantMapper {
	int insertParticipant(@Param("bid") int bid, @Param("pid") String pid);
	List<Participant> selectParticipantList();
}
