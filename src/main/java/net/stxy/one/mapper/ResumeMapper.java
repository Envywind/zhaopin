package net.stxy.one.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.stxy.one.bean.Resume;

@Repository
public interface ResumeMapper {

	// 更新简历的通过与否
	public int UpdateResume1(String r_id);

	public int UpdateResume2(String r_id);

	// 查询需要审核的简历
	public List<Resume> list();

	// 通过公司ID查阅投简的信息
	public List<Resume> selectResumeByC_id(Integer c_id);

}
