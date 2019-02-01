<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  
	<section class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box">
				<div class="box-header with-border">
					<h1 class="box-title">Create Project</h1>
				</div>
					<form role="form" method="post" action="create">
						<div class="box-body">
							<div class="form-group">
								<label>Name</label>
								<input type="text" name="name" class="form-control" placeholder="Enter Name">
							</div>
							<div class="form-group"> 
								<label>Content</label>
								<textarea rows="5" class="form-control" name="content" placeholder="Enter Content"></textarea>
							</div>    
							<div class="form-group">
								<label>StatrtDate</label>
								<input type="text" name="start_date" class="form-control" placeholder="Enter StatrtDate    ex)2019-01-01">
							</div>
							<div class="form-group">
								<label>EndDate</label>
								<input type="text" name="end_date" class="form-control" placeholder="Enter EndDate    ex)2019-01-01">
							</div>
							<div class="form-group">
								<label>Progress</label>
								<select name="progress">
									<option value="준비">준비</option>
									<option value="진행중">진행중</option>
									<option value="종료">종료</option>
									<option value="보류">보류</option>
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