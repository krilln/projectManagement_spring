package com.yi.projectManagement;

import java.util.Date;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.ProjectManagementVO;
import com.yi.persistence.ProjectManagementDao;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ProjectManagementDaoTest {
	
	@Autowired
	private ProjectManagementDao dao;
	
	@Test
	public void test01Insert() {
		ProjectManagementVO vo = new ProjectManagementVO();
		vo.setName("돌쇠");
		vo.setContent("일주일 동안 마님을 위해 나무 3000그루 베기");
		vo.setStart_date(new Date());
		vo.setEnd_date(new Date());
		vo.setProgress("진행중");
		dao.insert(vo);
	}
}
