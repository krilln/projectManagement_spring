package com.yi.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ProjectManagementVO {
	private int no;
	private String name;
	private String content;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date start_date;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date end_date;
	private String progress;
	
	public ProjectManagementVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	@Override
	public String toString() {
		return "ProjectManagementVO [no=" + no + ", name=" + name + ", content=" + content + ", start_date="
				+ start_date + ", end_date=" + end_date + ", progress=" + progress + "]";
	}
	
	
}
