<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp" %>
	<section class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box">
				<div class="box-header with-border">
					<h1 class="box-title">Home Page</h1>
				</div>
				<div class="box-body">
						<div class="box-body">
							<div class="form-group">
								<label>Name</label>
								<input type="text" name="name" class="form-control" placeholder="Enter name" value="${project.name }" readonly="readonly">
							</div>
							<div class="form-group">
								<label>Content</label>
								<textarea rows="5" class="form-control" name="content" placeholder="Enter Content" readonly="readonly">${project.content }</textarea>
							</div>    
							<div class="form-group">
								<label>StartDate</label>
								<input type="text" name="start_date" class="form-control" placeholder="Enter StartDate" value="<fmt:formatDate value="${project.start_date }" pattern="yyyy-MM-dd" type="date" dateStyle="short"/>" readonly="readonly">
							</div>
							<div class="form-group">
								<label>EndDate</label>
								<input type="text" name="end_date" class="form-control" placeholder="Enter EndtDate" value="<fmt:formatDate value="${project.end_date }" pattern="yyyy-MM-dd" type="date" dateStyle="short"/>" readonly="readonly">
							</div>
							<div class="form-group">
								<label>Progress</label>
								<input type="text" name="progress" class="form-control" placeholder="Enter Progress" value="${project.progress }" readonly="readonly">
							</div>
						</div>   
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="btnList">Go List</button>
							<button type="submit" class="btn btn-primary" id="btnModify">Modify</button>
							<button type="submit" class="btn btn-primary" id="btnRemove">Remove</button>
						</div>
						
						<form action="" method="post" id="f1">
							<input type="hidden" name="no" value="${project.no }">
						</form>
				</div>
			</div>
		</div>
	</div>
	
</section>

<script>
	$(function() {
		$("#btnList").click(function() {
			location.href = "${pageContext.request.contextPath}/project/listAll";
		})
		
		$("#btnRemove").click(function() {
			var jbResult = confirm( '정말 삭제 하시겠습니까?' );
		      /* document.write( jbResult ); */
		      if(jbResult == false){
		    	/*   history.back(); */
		    	return; 
		      }
			$("#f1").attr("action", "remove"); 
			$("#f1").submit();
		})  
		
		$("#btnModify").click(function() {
			$("#f1").attr("action", "modify");
			$("#f1").attr("method", "get");
			$("#f1").submit();
		})
	})
</script>

	
<%@ include file="../include/footer.jsp" %>