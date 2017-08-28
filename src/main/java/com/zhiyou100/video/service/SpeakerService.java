package com.zhiyou100.video.service;

import java.util.List;

import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.speaker.Speaker;
import com.zhiyou100.video.util.Page;

public interface SpeakerService {

	List<Speaker> findAllSpeaker();

	Page<Speaker> findAllSpeakerBy(Rolevo rv);

	void addSpeaker(Speaker s);

	void delete(Integer id);

	Speaker findSpeakerById(Integer id);

	void updatespeaker(Speaker ske);



}
