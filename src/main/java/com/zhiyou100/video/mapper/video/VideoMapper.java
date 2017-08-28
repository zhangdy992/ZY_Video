package com.zhiyou100.video.mapper.video;

import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.video.Video;
import com.zhiyou100.video.model.video.VideoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VideoMapper {
    int countByExample(VideoExample example);

    int deleteByExample(VideoExample example);

    int deleteByPrimaryKey(Video v);

    int insert(Video record);

    int insertSelective(Video record);

    List<Video> selectByExample(VideoExample example);

    Video selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Video record, @Param("example") VideoExample example);

    int updateByExample(@Param("record") Video record, @Param("example") VideoExample example);

    int updateByPrimaryKeySelective(Video record);

    int updateByPrimaryKey(Video record);

	List<Video> findVideoBy(Rolevo rv);

	int selectCont(Rolevo rv);

	Video findVideoById(Integer id);

	void deleteBy(String[] idAll);

	

	
}