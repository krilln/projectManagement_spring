package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.ProjectManagementVO;
import com.yi.persistence.ProjectManagementDao;

@Service
public class ProjectManagementServiceImpl implements ProjectManagementService {

	@Autowired
	private ProjectManagementDao dao;
	
	@Override
	public void insert(ProjectManagementVO vo) {
		// TODO Auto-generated method stub
		dao.insert(vo);
	}

	@Override
	public List<ProjectManagementVO> selectByAll() {
		// TODO Auto-generated method stub
		return dao.selectByAll();
	}

	@Override
	public ProjectManagementVO selectByNo(int no) {
		// TODO Auto-generated method stub
		return dao.selectByNo(no);
	}

	@Override
	public void delete(int no) {
		// TODO Auto-generated method stub
		dao.delete(no);
	}

	@Override
	public void update(ProjectManagementVO vo) {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

}
