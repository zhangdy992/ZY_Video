package com.zhiyou100.video.mapper.course;

import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.course.Course;
import com.zhiyou100.video.model.course.CourseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CourseMapper {
    int countByExample(CourseExample example);

    int deleteByExample(CourseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Course record);

    int insertSelective(Course record);

    List<Course> selectByExample(CourseExample example);

    Course selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByExample(@Param("record") Course record, @Param("example") CourseExample example);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);

	List<Course> selectBy(Rolevo rv);

	int countBy();

	Course selectById(Integer id);

	List<Course> seletTime();
}