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
<p class="navbar-text navbar-right">admin<a href="#" class="glyphicon glyphicon-log-out"></a></p>
       
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">视频管理</a></li>
            <li><a href="#">主讲人管理</a></li>
            <li><a href="#">课程管理</a></li>
             <li><a href="#">统计分析</a></li>
             
          </ul>
        </div>
        </div>
		
       </div>
      </div>
    </nav>
    <div class="container" style="background-color: darkgrey;">
     <div  class="row">
        	<div class="col-md-6 col-sm-offset-1">
	<h1>编辑视频信息-视频管理<h1>
		 </div>
		</div>
		</div>
		&nbsp;&nbsp;
		<form class="form-horizontal col-sm-offset-2" action="${pageContext.request.contextPath }/video/updateVideo.action"  >
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label" >视频标题</label>
    <div class="col-sm-6">
      <input type="text" class="form-control"  name="videoTitle" id="inputEmail3" placeholder="视频标题" value="${video.videoTitle }">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">主讲人</label>
    <div class="col-sm-6">
      <select class="form-control" name=speakerId>
      <option>请选择主讲人</option>
      <c:forEach items="${list2}" var="lis">
      <option value="${lis.id}" ${video.speakerName eq lis.speakerName?"selected":"" }>${lis.speakerName }</option>
      </c:forEach>
      </select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">所属课程</label>
    <div class="col-sm-6">
      <select class="form-control" name=courseId>
      <option>请选择课程</option>
      <c:forEach items="${co2}" var="p">
	<option value="${p.id}" ${video.courseName eq p.courseName?"selected":""}>${p.courseName}</option>
	</c:forEach>
	   </select>
    </div>
  </div>
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">视频时长</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputPassword3" name="videoLength" placeholder="视频时长（秒）" value="${video.videoLength }">
    </div>
  </div>
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">封面图片</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputPassword3" name="videoImageUrl" placeholder="视频图片，网络图片" value="${video.videoImageUrl }">
    </div>
  </div>
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">视频播放地址</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputPassword3"  name="videoUrl" placeholder="视频播放地址，网络地址" value="${video.videoUrl}" >
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">视频简介</label>
    <div class="col-sm-6">
     <textarea class="form-control" name="videoDescr">${video.videoDescr}</textarea>
    </div>
  </div>
 <input type="hidden" name="id" value="${video.id }">
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary btn-lg active">保存</button>
     <a href="#" class="btn btn-default btn-lg active" role="button">返回列表</a>
    </div>
  </div>
</form>


  </body>
</html>