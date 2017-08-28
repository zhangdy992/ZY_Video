package com.zhiyou100.video.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou100.video.mapper.speaker.SpeakerMapper;
import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.speaker.Speaker;
import com.zhiyou100.video.model.speaker.SpeakerExample;
import com.zhiyou100.video.service.SpeakerService;
import com.zhiyou100.video.util.Page;
@Service
public class SpeakerServiceImpl implements SpeakerService {
	@Autowired
	SpeakerMapper sp;

	@Override
	public List<Speaker> findAllSpeaker() {
		// TODO Auto-generated method stub
		return sp.selectByExample(null);
	}

	@Override
	public Page<Speaker> findAllSpeakerBy(Rolevo rv) {
		
		Page<Speaker> page= new Page<Speaker>();
		page.setPage(rv.getStartPage());
		page.setSize(10);
		page.setRows(sp.findAllSpeaker(rv));
		page.setTotal(sp.findCount(rv));

		return page;
	}

	@Override
	public void addSpeaker(Speaker s) {
		sp.insert(s);
		
	}

	@Override
	public void delete(Integer id) {
		sp.deleteByPrimaryKey(id);
		
	}

	@Override
	public Speaker findSpeakerById(Integer id) {
		
		return sp.selectByPrimaryKey(id);
	}

	@Override
	public void updatespeaker(Speaker ske) {
		SpeakerExample sm= new SpeakerExample();
		sm.createCriteria().andIdEqualTo(ske.getId());
		sp.updateByExample(ske, sm);
		
	}

	
	}
	

