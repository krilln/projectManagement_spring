<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ page trimDirectiveWhitespaces="true" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
	#addProj{
		text-align: center;
	}
	#addProj td a{
		color: white;  
		width: 50%;
	}
	#addProjDiv{
		margin:0 auto;
		width: 40%; 
		height:40px;
		line-height:40px;
		background-color: #BDBDBD;
		
	}
	#addProjDiv:hover {
		background-color: #A6A6A6;
		color: yellow; 
		font-weight: bold;
	}
</style>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
		
		<section class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">Board List All</h3>
				</div>
				<div class="box-body">
					<!-- table -->
					<table class="table">
						    <thead>
						      <tr>
						        <th style="white:10px;">프로젝트 이름</th>
								<th>시작날짜</th>
								<th>종료날짜</th>
								<th style="white:40px;">상태</th>
						      </tr>
						    </thead>
						    <tbody>
						    	<c:forEach var="plist" items="${list }">  
						    	<tr>
						    		<td><a href="${pageContext.request.contextPath}/project/read?no=${plist.no }">${plist.name }</a></td>
									<td><fmt:formatDate value="${plist.start_date }" pattern="yyyy-MM-dd" type="date" dateStyle="short"/></td>
									<td><fmt:formatDate value="${plist.end_date }" pattern="yyyy-MM-dd" type="date" dateStyle="short"/></td>
									<td>${plist.progress }</td>
						    	</tr>	
						    	</c:forEach>
						    	<tr id="addProj"><td colspan="4"><div id="addProjDiv"><a href="${pageContext.request.contextPath}/project/create">[새 프로젝트 등록]</a></div></td></tr>
						    </tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
</section>
	<%@ include file="../include/footer.jsp" %>	
</body>
</html>