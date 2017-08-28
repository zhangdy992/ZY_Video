package com.zhiyou100.video.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyou100.video.mapper.course.CourseMapper;
import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.course.Course;
import com.zhiyou100.video.model.course.CourseExample;
import com.zhiyou100.video.service.CourseService;
import com.zhiyou100.video.util.Page;
@Service
public class CourseServiceImpl implements CourseService {
@Autowired
	CourseMapper cm;
	
	
	
	@Override
	public List<Course> findAllCourse() {
		// TODO Auto-generated method stub
		return cm.selectByExample(null);
	}



	@Override
	public Page<Course> findAllCourseList(Rolevo rv) {
		
		Page<Course> page= new Page<Course>();
		
		page.setPage(rv.getStartPage());
		page.setRows(cm.selectBy(rv));
		page.setSize(10);
		page.setTotal(cm.countBy());
		
		
		return page;

	}
	@Override
	public void addcourse(Course c) {
		
		cm.insert(c);
		
		
	}



	@Override
	public Course findAllCourseBy(Integer id) {

		
		return cm.selectById(id);
	}



	@Override
	public void delete(Integer id) {
	cm.deleteByPrimaryKey(id);
		
	}



	@Override
	public void updateCourseBy(Course ce) {
		CourseExample cn= new CourseExample();
		cn.createCriteria().andIdEqualTo(ce.getId());
		
		cm.updateByExample(ce, cn);
		
	}



	@Override
	public List<Course> findNameAndTime() {
		
		
		
		cm.seletTime();
		
		
		
		return cm.seletTime();
	}
}
