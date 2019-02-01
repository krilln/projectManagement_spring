package com.yi.service;

import java.util.List;

import com.yi.domain.ProjectManagementVO;

public interface ProjectManagementService {
	public void insert(ProjectManagementVO vo);
	public List<ProjectManagementVO> selectByAll();
	public ProjectManagementVO selectByNo(int no);
	public void delete(int no);
	public void update(ProjectManagementVO vo);
}
