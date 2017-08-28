package com.zhiyou100.video.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.zhiyou100.video.mapper.sub.SubjectMapper;
import com.zhiyou100.video.model.sub.Subject;
import com.zhiyou100.video.service.SubjectService;
@Service
public class SubjectServiceImpl implements SubjectService {
@Autowired
SubjectMapper suj;

@Override
public List<Subject> findAllSubject() {
	
	return suj.selectByExample(null);
}
}
