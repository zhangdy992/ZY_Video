package com.zhiyou100.video.mapper.speaker;

import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.speaker.Speaker;
import com.zhiyou100.video.model.speaker.SpeakerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SpeakerMapper {
    int countByExample(SpeakerExample example);

    int deleteByExample(SpeakerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Speaker record);

    int insertSelective(Speaker record);

    List<Speaker> selectByExample(SpeakerExample example);

    Speaker selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Speaker record, @Param("example") SpeakerExample example);

    int updateByExample(@Param("record") Speaker record, @Param("example") SpeakerExample example);

    int updateByPrimaryKeySelective(Speaker record);

    int updateByPrimaryKey(Speaker record);

	List<Speaker> findAllSpeaker(Rolevo rv);

	int findCount(Rolevo rv);
}