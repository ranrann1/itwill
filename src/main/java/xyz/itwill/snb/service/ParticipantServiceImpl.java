package xyz.itwill.snb.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import xyz.itwill.snb.dao.ParticipantDAO;
import xyz.itwill.snb.dto.Participant;

@Service
@RequiredArgsConstructor
public class ParticipantServiceImpl implements ParticipantService{
	private final ParticipantDAO participantDAO;

	@Transactional
	@Override
	public void addParticipant(int bid, String pid) {
		participantDAO.inserParticipant(bid, pid);
		
	}

	@Transactional
	@Override
	public List<Participant> getParticipantList() {
		return participantDAO.selectParticipantList();
	}

}
