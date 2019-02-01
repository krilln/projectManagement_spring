package com.yi.persistence;

import java.util.List;

import com.yi.domain.ProjectManagementVO;

public interface ProjectManagementDao {
	public void insert(ProjectManagementVO vo);
	public List<ProjectManagementVO> selectByAll();
	public ProjectManagementVO selectByNo(int no);
	public void delete(int no);
	public void update(ProjectManagementVO vo);
}
