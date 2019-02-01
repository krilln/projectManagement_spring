<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp" %>
    
	<section class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box">
				<div class="box-header with-border">
					<h1 class="box-title">Modify Project</h1>
				</div>
					<form role="form" method="post" action="modify">
						<div class="box-body">
							<input type="hidden" name="no" class="form-control" placeholder="Enter No" value="${project.no }">
							
							<div class="form-group">  
								<label>Name</label>
								<input type="text" name="name" class="form-control" placeholder="Enter Name" value="${project.name }">
							</div>
							<div class="form-group">
								<label>Content</label>
								<textarea rows="5" class="form-control" name="content" placeholder="Enter Content">${project.content }</textarea>
							</div>    
							<div class="form-group">
								<label>StartDate</label>
								<input type="text" name="start_date" class="form-control" placeholder="Enter StartDate    ex)2019-01-01" value="<fmt:formatDate value='${project.start_date }' pattern='yyyy-MM-dd' type='date' dateStyle='short'/>">
							</div>
							<div class="form-group">
								<label>EndDate</label>
								<input type="text" name="end_date" class="form-control" placeholder="Enter EndDate    ex)2019-01-01" value="<fmt:formatDate value='${project.end_date }' pattern='yyyy-MM-dd' type='date' dateStyle='short'/>">
							</div>
							<div class="form-group">
								<label>Progress</label>
								<input type="hidden" id="inputProg" class="form-control" placeholder="Enter Progress" value="${project.progress }">
								<select name="progress">
									<option value="준비" ${project.progress == '준비' ? 'selected' : ''}>준비</option>
									<option value="진행중" ${project.progress == '진행중' ? 'selected' : ''}>진행중</option>
									<option value="종료" ${project.progress == '종료' ? 'selected' : ''}>종료</option>
									<option value="보류" ${project.progress == '보류' ? 'selected' : ''}>보류</option>
								</select>
							</div>
						</div>   
						<div class="box-footer">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</form>
			</div>
		</div>
	</div>
	
</section>


<%@ include file="../include/footer.jsp" %>