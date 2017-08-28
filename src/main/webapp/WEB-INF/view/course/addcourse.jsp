<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <p class="navbar-text navbar-right">admin <a href="#" class="glyphicon glyphicon-log-in"></a><a>退出</a></p>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">视频管理</a></li>
            <li><a href="#">主讲人管理</a></li>
            <li><a href="#">课程管理</a></li>
          </ul>
        </div>
        </div>
       </div>
      
       </div>
      

    </nav>

       <div class="container">
       <div class="row" style="background-color: gray;">
       	<div class="col-md-4 col-sm-offset-1">
       	<h1> 添加课程   </h1>
    </div>
    </div>
</div>

&nbsp;&nbsp;&nbsp;

	<form class="form-horizontal" action="${pageContext.request.contextPath }/course/addListCourse.action">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">所学学科</label>
    <div class="col-sm-10">
      <select class="form-control" name=subjectId>
      	<option>请选择所学学科</option>
      	<c:forEach items="${sub }" var="s" >
      	<option value="${s.id}">${s.subjectName}</option>
      	</c:forEach>
    
      </select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">标题</label>
    <div class="col-sm-10">
      <input type="text" class="form-control"  placeholder="课程标题" name="courseName">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">简介</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="courseDescr"></textarea>
    </div>
  </div>

  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">保存</button>
    </div>
  </div>
</form>
	