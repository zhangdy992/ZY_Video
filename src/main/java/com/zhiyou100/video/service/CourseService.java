package com.zhiyou100.video.service;

import java.util.List;

import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.course.Course;

import com.zhiyou100.video.util.Page;

public interface CourseService {

	List<Course> findAllCourse();

	
	Page<Course> findAllCourseList(Rolevo rv);


	void addcourse(Course c);


	Course findAllCourseBy(Integer id);


	void delete(Integer id);


	void updateCourseBy(Course ce);


List<Course> findNameAndTime();


     

}
