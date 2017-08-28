package com.zhiyou100.video.web.controller.course;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhiyou100.video.model.JsonModel;
import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.course.Course;
import com.zhiyou100.video.model.sub.Subject;
import com.zhiyou100.video.service.CourseService;
import com.zhiyou100.video.service.SubjectService;
import com.zhiyou100.video.util.Page;

@Controller
@RequestMapping("/course")

public class CourseConteroller {
       @Autowired 
	CourseService cs;
       @Autowired
       SubjectService suj;
       @RequestMapping("/courseList.action")
	public String  courseList(Model ma,@RequestParam(defaultValue="1")Integer page){
		
		Rolevo rv= new Rolevo();
		rv.setStartPage((page-1)*10);
		
	    Page<Course> p=cs.findAllCourseList(rv);
		ma.addAttribute("page", p);
		
		return "/course/courseList";
	}
      @RequestMapping("/addCourse.action")
       public String addcourse(Model ma){
    	List<Subject> sub=   suj.findAllSubject();
    	   ma.addAttribute("sub", sub);
    	   return "/course/addcourse";
       }
      @RequestMapping("/addListCourse.action")
      public String add(Course c){
    	  
    	  
    	 cs.addcourse(c); 
    	  
    	  
    	 return "forward:/course/courseList.action";
    	  
      }
      @RequestMapping("/editCourse.action")
      public String add(Integer id,Model md){
    	  
    	  System.out.println(111);
    	  List<Subject> sub= suj.findAllSubject();
    	  md.addAttribute("sub", sub);
    	  
    	    Course cu= cs.findAllCourseBy(id);
    	  System.out.println(cu);
    	    md.addAttribute("cu", cu);
    	  
    	 return "/course/editcourse";
    	  
      } 
      @RequestMapping("/updatecourse.action")
      public String update(Course ce){
    	  
    	  
    	  cs.updateCourseBy(ce);
    	  
    	  
    	
    	  
    	 return "forward:/course/courseList.action";
    	  
      } 
      
      
      
      
      
      
      
      
      
      @RequestMapping("/deletecourse.action") 
      public String deleteCourse(Integer id){
    	  
    	  
    	  cs.delete(id);
    	  
    	  
    	  
    	  
    	  
    	  return "forward:/course/courseList.action";
    	  
    	  
      }
   @RequestMapping("/sub.action")
   public String account(){
   
	   return "/account/picture";
  
   }
       
   @RequestMapping(value="/sub.action",method=RequestMethod.POST)
   @ResponseBody
   public List<JsonModel> data(){
	   
	   List<JsonModel>  lij=new ArrayList<>();
	  
	   System.out.println("woaimi");
	   List<Course> li = cs.findNameAndTime();
	   for(Course cus:li){
		   JsonModel jsm=new JsonModel();
		 System.out.println(cus.getCourseName());
		   jsm.setName(cus.getCourseName());
		   jsm.setAvergeNum(cus.getAvgtimes());
		   
		   
		  System.out.println(cus.getAvgtimes()); 
		   
		  lij.add(jsm);  
	   }
	  

	   
	   return lij;
	   
	   
   }    
       
       
       
       
       
       
       
       
       
}
