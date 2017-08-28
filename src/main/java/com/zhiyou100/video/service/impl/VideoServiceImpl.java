package com.zhiyou100.video.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou100.video.mapper.video.VideoMapper;
import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.course.Course;
import com.zhiyou100.video.model.speaker.Speaker;
import com.zhiyou100.video.model.video.Video;
import com.zhiyou100.video.model.video.VideoExample;
import com.zhiyou100.video.service.VideoService;
import com.zhiyou100.video.util.Page;
@Service
public class VideoServiceImpl implements VideoService {
@Autowired	
VideoMapper vm;
@Override
public Page<Video> findAllVideoBy(Rolevo rv) {
	Page<Video> page= new Page<Video>();
	page.setPage(rv.getCurrent());
	page.setSize(10);
	page.setTotal(vm.selectCont(rv));
	System.out.println(vm.selectCont(rv));
	page.setRows(vm.findVideoBy(rv));
System.out.println(vm.findVideoBy(rv));
	return page;
}
@Override
public void deleteBy(List<Video> li) {
	
	
	for(Video v:li){
	
	vm.deleteByPrimaryKey(v);
	}

	
	
}
@Override
public void addVideo(Video v) {
	vm.insert(v);
	
}



@Override
public void deletevideo(Integer id) {
	
	VideoExample apl=new VideoExample();
	apl.createCriteria().andIdEqualTo(id);
	
	vm.deleteByExample(apl);
	
}
@Override
public Video findAllVideoBy(Integer id) {
	
	return vm.findVideoById(id);
}
@Override
public void update(Video vd) {
	VideoExample apl=new VideoExample();
	apl.createCriteria().andIdEqualTo(vd.getId());

	vm.updateByExample(vd, apl);
	
}
@Override
public void delete(String[] idAll) {
	
	
	/*VideoExample ve=new VideoExample();
	ve.createCriteria().andIdIn(values)*/
	
	
	
		vm.deleteBy(idAll);
		
		
		
	
	
}

@Override
public void delete(List<Integer> list) {
	VideoExample vem= new VideoExample();
	
	vem.createCriteria().andIdIn(list);
	vm.deleteByExample(vem);
	
}

}
