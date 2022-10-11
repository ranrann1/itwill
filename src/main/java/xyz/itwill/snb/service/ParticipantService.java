package xyz.itwill.snb.service;

import java.util.List;

import xyz.itwill.snb.dto.Participant;

public interface ParticipantService {
	void addParticipant(int bid, String pid);
	List<Participant> getParticipantList();
}
