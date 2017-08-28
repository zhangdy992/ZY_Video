<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <div class="container" style="background-color: gainsboro;">
     <div  class="row">
        	<div class="col-md-6 col-sm-offset-1" >
	<h1>编辑主讲人-主讲人管理<h1>
		 </div>
		</div>
		</div>
		&nbsp;&nbsp;
		<form class="form-horizontal col-sm-offset-2 " action="${pageContext.request.contextPath }/speaker/updatespeaker.action" >
 
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">主讲人</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputPassword3" placeholder="请选择主讲人" name="speakerName" value="${spk.speakerName }">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label" >职业</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputPassword3" placeholder="请选择职业"  name="speakerJob" value="${spk.speakerJob }">
    </div>
  </div>
   
   <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"  >头像图片</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputPassword3" placeholder="视频图片，网络图片" name="speakerHeadUrl" value="${spk.speakerHeadUrl }">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label" >简介</label>
    <div class="col-sm-6">
     <textarea class="form-control"  name="speakerDescr">${spk.speakerDescr }</textarea>
    </div>
  </div>
 <input type="hidden" name=id value="${spk.id }">
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary btn-lg active">保存</button>
     <a href="#" class="btn btn-default btn-lg active" role="button">返回列表</a>
    </div>
  </div>
</form>


  </body>
</html>