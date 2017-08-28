package com.zhiyou100.video.web.controller.speaker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhiyou100.video.model.Rolevo;
import com.zhiyou100.video.model.speaker.Speaker;
import com.zhiyou100.video.service.SpeakerService;
import com.zhiyou100.video.util.Page;

@Controller
@RequestMapping("/speaker")
public class SpeakerController {
@Autowired
SpeakerService sp;
	@RequestMapping("/speakerList.action")
	public String  speakerList(Speaker sk,@RequestParam(defaultValue="1")int page ,
			@RequestParam(defaultValue="")String namekeyword,
			@RequestParam(defaultValue="")String jobkeyword,
			Model md){
		Rolevo rv= new Rolevo();
		rv.setStartPage((page-1)*10);
		rv.setJobkeyword(jobkeyword);
		rv.setNamekeyword(namekeyword);
		
		System.out.println(sk.getSpeakerName());
		md.addAttribute("namekeyword", namekeyword);
		md.addAttribute("jobkeyword", jobkeyword);
	    Page<Speaker> p= sp.findAllSpeakerBy(rv);
		
		md.addAttribute("page", p);
		System.out.println(p);
		System.out.println(1111);
		
		return "/speaker/speakerList";
	}
	@RequestMapping("/addspeaker.action")
	public String addspeaker(){	
		return "/speaker/addspeaker";
		
	}
	@RequestMapping("/addspeakerList.action")
	public String addspeaker(Speaker s){
		System.out.println(s);
		sp.addSpeaker(s);
		
		
		
		return "forward:/speaker/speakerList.action";
		
	}	
	@RequestMapping("/deletespeaker.action")
	public String  deleteSpeaker( Integer id){
		
		sp.delete(id);
		
		
		
		
		return "forward:/speaker/speakerList.action" ;
	}
	
	@RequestMapping("/editspeaker.action")
	public String  edit(Integer id,Model ma){
		
		Speaker spk=sp.findSpeakerById(id);
		
		ma.addAttribute("spk", spk);
		return "/speaker/editspeaker";
	}
	
	@RequestMapping("/updatespeaker.action")
	public String update(Speaker ske){
		
		sp.updatespeaker(ske);
		
		
		
		return "forward:/speaker/speakerList.action";
	}
	
	
	
	
	
	
	
	
	
}
