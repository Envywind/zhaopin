package net.stxy.one.service;

import java.util.List;

import javax.print.DocFlavor.STRING;

import net.stxy.one.bean.Company;
import net.stxy.one.bean.Resume;

public interface ResumeService {
	// 更新简历的通过与否
	public int UpdateResume1(String r_id);

	public int UpdateResume2(String r_id);

	// 通过公司ID查阅投简的信息
	public List<Resume> selectResumeByC_id(Integer c_id);

	// 查询需要审核的简历信息
	public List<Resume> list();
}
