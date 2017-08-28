<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="lb" uri="http://zhiyou100.com/common/" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 101 Template</title>


    <link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet">

   
    <script src="${pageContext.request.contextPath }/js/jquery-1.12.4.min.js"></script>

    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
   <script>
   function add(){
	 alert("111")
	   
	   location.href='<c:url value="/speaker/addspeaker.action"/>'

   }
   
   
   
   
   </script>
   

  </head>
  <body >
  <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div  class="row">
        	<div class="col-md-6 col-sm-offset-3">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-9" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">视频管理系统</a>
        </div>
<p class="navbar-text navbar-right">admin<a href="#" class="glyphicon glyphicon-log-out"></a></p>
       
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
          <ul class="nav navbar-nav">
            <li class="active"><a href="<c:url value="/video/videoList.action"/>">视频管理</a></li>
            <li><a href="#">主讲人管理</a></li>
            <li><a href="<c:url value="/course/courseList.action"/>">课程管理</a></li>
             <li><a href="#">统计分析</a></li>
             
          </ul>
        </div>
        </div>
		
       </div>
      </div>
    </nav>
    <div class="container" >
     <div  class="row">
        	<div class="col-md-6 col-sm-offset-1">
	<h1>编辑主讲人-主讲人管理<h1>
		 </div>
		</div>
		 <div  class="row">
        	<div  class="col-md-4 col-sm-offset-1"  >
        	 <button type="submit" class="btn btn-primary btn-lg active" onclick="add()">添加主讲人</button>
        	</div>
			<form class="form-inline" action="<c:url value="/speaker/speakerList.action"/>">
  <div class="form-group">
    <label for="exampleInputName2" >名称</label>
    <input type="text" class="form-control" id="exampleInputName2" placeholder="主讲人名称" name="namekeyword" value="${namekeyword }">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail2">职位</label>
    <input type="text" class="form-control"  placeholder="主讲人职位" name="jobkeyword" value="${jobkeyword }">
  </div>
  <button type="submit" class="btn btn-primary active">查询</button>
</form>
		</div>
		<div class="row">
			
		<table class="table table-hover">
      <thead>
      
        <tr>
        	
          <th>序号</th>
         
          <th>名称</th>
         
          <th>职位</th>
        
          <th>简介</th>
         <th>编辑</th>
         
          <th>删除</th>
        </tr>
  
      </thead>
      <tbody>
      <c:forEach items="${page.rows }" var="p" varStatus="var">
        <tr>
        	
        <th scope="row">${var.count }</th> 
        
          <td>${p.speakerName }</td> 
        
          <td>${p.speakerJob }</td>  
       
          <td>${p.speakerDescr }</td>  
         
          <td><a class="glyphicon glyphicon-edit" href="<c:url value="/speaker/editspeaker.action?id=${p.id}" />"></a></td> 
      
          <td><a class="glyphicon glyphicon-trash" href="<c:url value="/speaker/deletespeaker.action?id=${p.id}" />"></a></td>  
        </tr>
         
        </c:forEach>
      
          
      </tbody>
    </table>	
			
	</div>		
		
		</div>
<lb:page url="${pageContext.request.contextPath }/speaker/speakerList.action"/>  


  </body>
</html>