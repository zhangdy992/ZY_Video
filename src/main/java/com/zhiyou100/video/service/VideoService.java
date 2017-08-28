package com.zhiyou100.video.service;

import java.util.List;

import com.zhiyou100.video.model.Rolevo;

import com.zhiyou100.video.model.video.Video;
import com.zhiyou100.video.util.Page;

public interface VideoService {

	Page<Video> findAllVideoBy(Rolevo rv);

	void deleteBy(List<Video> li);

	void addVideo(Video v);

	void deletevideo(Integer id);

     Video findAllVideoBy(Integer id);

	void update(Video vd);

	void delete(String[] idAll);

	

	void delete(List<Integer> list);

	

	

}
