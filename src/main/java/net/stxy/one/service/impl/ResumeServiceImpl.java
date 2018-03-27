package net.stxy.one.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.one.bean.Resume;
import net.stxy.one.mapper.ResumeMapper;
import net.stxy.one.service.ResumeService;

@Service
public class ResumeServiceImpl implements ResumeService {
	@Autowired
	private ResumeMapper resumeMapper;
	@Override
	public int UpdateResume1(String r_id) {
		// TODO Auto-generated method stub
		return resumeMapper.UpdateResume1(r_id);
	}

	@Override
	public int UpdateResume2(String r_id) {
		// TODO Auto-generated method stub
		 return resumeMapper.UpdateResume2(r_id);
	}

	@Override
	public List<Resume> selectResumeByC_id(Integer c_id) {
		// TODO Auto-generated method stub
		return resumeMapper.selectResumeByC_id(c_id);
	}

	@Override
	public List<Resume> list() {
		// TODO Auto-generated method stub
		return resumeMapper.list();
	}

	

}
