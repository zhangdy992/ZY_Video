package com.zhiyou100.video.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.zhiyou100.video.mapper.AdminMapper;
import com.zhiyou100.video.model.Admin;
import com.zhiyou100.video.model.AdminExample;
import com.zhiyou100.video.model.AdminExample.Criteria;
import com.zhiyou100.video.service.LoginService;
@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	AdminMapper am;

	@Override
	public List<Admin> findAdmin(String username, String password) {
		
		byte[] bytes = password.getBytes();
		String pwd = DigestUtils.md5DigestAsHex(bytes);
		

		
		AdminExample  apl=new AdminExample();
		apl.createCriteria().andLoginNameEqualTo(username).andLoginPwdEqualTo(pwd);
		
		
		
		

		return am.selectByExample(apl);
	}

}
