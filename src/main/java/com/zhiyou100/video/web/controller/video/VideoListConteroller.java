package com.zhiyou100.video.web.controller.video;

import java.util.Arrays;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.course.Course;
import com.zhiyou100.video.model.speaker.Speaker;
import com.zhiyou100.video.model.video.Video;
import com.zhiyou100.video.service.CourseService;
import com.zhiyou100.video.service.SpeakerService;
import com.zhiyou100.video.service.VideoService;
import com.zhiyou100.video.util.Page;

@Controller
@RequestMapping("/video")
public class VideoListConteroller {
	
	@Autowired
	VideoService uds;
	@Autowired
	SpeakerService sp;
	@Autowired
	CourseService cs;
	
		@RequestMapping("/videoList.action")
	public String videoList(@RequestParam(defaultValue="")String keyword,
			@RequestParam(defaultValue="")String serchSpeaker,
			@RequestParam(defaultValue="")String serchCourse,
			@RequestParam(defaultValue="1",value="page")int current,Model ma){
			Rolevo rv= new Rolevo();
			rv.setKeyword(keyword);
			rv.setSerchCourse(serchCourse);
			rv.setSerchSpeaker(serchSpeaker);
			rv.setStartPage((current-1)*10);
			
			ma.addAttribute("keyword", keyword);
            ma.addAttribute("serchSpeaker",serchSpeaker);
            ma.addAttribute("serchCourse",serchCourse);
			
		
		    List<Speaker> li=sp.findAllSpeaker();
		
		    ma.addAttribute("list", li);
		    List<Course> co=cs.findAllCourse();
		    ma.addAttribute("co", co);
		    Page<Video> p=uds.findAllVideoBy(rv);
		    ma.addAttribute("page", p);
		
		    return "/video/videoList";

	
	}
		@RequestMapping("/deleteVideo.action")
		public String delete(List<Video> li){
			
			uds.deleteBy(li);
			
			
			
			
			
			return "forward:/video/videoList.action";
		}
		
		
		@RequestMapping("/addVideo.action" )
		public String addVideo(Model ma){
		
			System.out.println(1111111);
			List<Speaker> li=sp.findAllSpeaker();
			
			ma.addAttribute("list1", li);
			List<Course> co=cs.findAllCourse();
			ma.addAttribute("co1", co);
			
			
			return "/video/addvideo";
		}
		
		
		@RequestMapping("/addVideoList.action" )
		public String addVideo(Video v){
		
			System.out.println(111155555);
			System.out.println(v.getSpeakerId());
			uds.addVideo(v);
			System.out.println(v);

			return "forward:/video/videoList.action";
		}
		@RequestMapping("/deletevideo.action")
		public String  deleteVid(Integer id){
			
			
			uds.deletevideo(id);
			
			
			return "forward:/video/videoList.action";
		}
		
		@RequestMapping("/editvideo.action")
		public String  editVideo(Integer id,Model ma){
			
            List<Speaker> li=sp.findAllSpeaker();
			ma.addAttribute("list2", li);
			List<Course> co=cs.findAllCourse();
			ma.addAttribute("co2", co);
		    Video va= uds.findAllVideoBy(id);
			ma.addAttribute("video",va );

			return "/video/editvideo";
		}
		@RequestMapping("/updateVideo.action")
		public String  updateVideo(Video vd){
			

			uds.update(vd);
			return "forward:/video/videoList.action";
			
		}
		@RequestMapping("/deleteVideoList.action")
		@ResponseBody
		public String deletevideo(String ids){
			
			
			System.out.println(ids);
			
			
			String[] idAll= ids.split(",");
			System.out.println(idAll);
			uds.delete(idAll);
			
			
			
			
			return "forward:/video/videoList.action";
			
		}
		@RequestMapping(value="/deleteVideoList2.action",method=RequestMethod.POST)
		@ResponseBody
		public void deletevideo2(Integer[] name){
			
			
			System.out.println(name);
			
			
			
			List<Integer> list = Arrays.asList(name);
			
			
			System.out.println(list);
			uds.delete(list);
			
			
			
			
		
			
		}
		
		
		
		
		
		
}
