package com.zhiyou100.video.web.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.aspectj.apache.bcel.generic.ReturnaddressType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.zhiyou100.video.model.Admin;
import com.zhiyou100.video.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService lg;

	@RequestMapping(value="/login.action",method=RequestMethod.GET)
	public String  login(){

		return "/admin/index";
	}
	@RequestMapping(value="/login.action",method=RequestMethod.POST)
	public String  login(String username,String password,Model ma,HttpSession session){
		List<Admin> li=lg.findAdmin(username,password);
		
		String str=null;
		
		if(li.isEmpty()==false){
			session.setAttribute("name", li.get(0).getLoginName());		
			str= "forward:/video/videoList.action";
			
		}else{
		
              str ="/admin/index";
		}
		
		return str;
		
	}

}
