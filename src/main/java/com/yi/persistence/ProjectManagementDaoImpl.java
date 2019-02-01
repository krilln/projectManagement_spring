package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ProjectManagementVO;

@Repository
public class ProjectManagementDaoImpl implements ProjectManagementDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mapper.ProjectMapper";
	
	@Override
	public void insert(ProjectManagementVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public List<ProjectManagementVO> selectByAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectByAll");
	}

	@Override
	public ProjectManagementVO selectByNo(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectByNo", no);
	}

	@Override
	public void delete(int no) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", no);
	}

	@Override
	public void update(ProjectManagementVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".update", vo);
	}

}
