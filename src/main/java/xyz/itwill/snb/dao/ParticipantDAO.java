package xyz.itwill.snb.dao;

import java.util.List;

import xyz.itwill.snb.dto.Participant;

public interface ParticipantDAO {
	int inserParticipant(int bid, String pid);
	List<Participant> selectParticipantList();
}
