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
    <script src="${pageContext.request.contextPath }/js/jquery.validate.min.js"></script> 
    <script src="${pageContext.request.contextPath }/js/messages_zh.min.js"></script>
    
   <script>
 function add(){ 
	 alert("111")
	   
	   location.href='<c:url value="/video/addVideo.action"/>'
   }

$(function(){
	 var number=0;
	$("#checkId").click(function(){
		 var flag=$("#checkId").prop("checked");
		//alert(flag);
		 
		var ck=$("input[name=check]");
		
		
		if($("#checkId").prop("checked")==true){
	 	$("input[name=check]").each(function(index,domElement){
	 		
	 	domElement.checked="checked";
	 	
	 	});
	 	number=ck.length;
		}
		else{$("input[name=check]").each(function(index,domElement){
	 		
	 		domElement.checked=false;	
	 	});	
		number=0;
		}
			
		$("#ids").text(number);		
	});
	
	
	
	 $("input[name=check]").click(function(){
		
		
		//$("input[name=check]").each(function(index,domElement){
			
			 if(this.checked==true){
				
				number++;
				
			}else{
				
				number--;
			
			}
			$("#ids").text(number);		 
			
		
	 

});
	 
}); 	
	 
 var id="";
function del(){
	
	 var f=$("input[name=check]");
	
		f.each(function(index,domElement){
			
		alert(domElement.checked);
			if(domElement.checked){	
				id+=domElement.value+",";		
			}	
		});	
		
	
		$.confirm({
		    title: '警告',
		    content: '没选中哦',
		    buttons: {
		        confirm: function () {
		            $.alert('Confirmed!');
		        },
		        cancel: function () {
		            $.alert('Canceled!');
		        },
		        somethingElse: {
		            text: 'Something else',
		            btnClass: 'btn-blue',
		            keys: ['enter', 'shift'],
		            action: function(){
		                $.alert('Something else?');
		            }
		        }
		    }
		});	
		
		location.href="${pageContext.request.contextPath}/video/deleteVideoList.action?ids="+id;
		
		}
		 
/* var id="";
function del(){
	

	
	 var f=$("input[name=check]");
	 var deleteList=new Array;
		f.each(function(index,domElement){
			
		//alert(domElement.checked);
			if(domElement.checked){
				
			//alert(domElement.value);
				//id+=domElement.value+",";
				deleteList.push(domElement.value);
				alert(deleteList)
			}	
		});	
		
		
		
		$ajax({
			type:"post",
			dataType:"text",
			//data:"name="+id,
			data:{"name":deleteList},
			url:"${pageContext.request.contextPath}/video/deleteVideoList2.action",
			success:function(){}
		
		});
		
}
 */
 
 
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
            <li class="active"><a href="#">视频管理</a></li>
            <li><a href="<c:url value="/speaker/speakerList.action"/>">主讲人管理</a></li>
            <li><a href="<c:url value="/course/courseList.action"/>">课程管理</a></li>
             <li><a href="${pageContext.request.contextPath}/course/sub.action">统计分析</a> 
             </li>
              
          </ul>
        </div>
        </div>
       
       </div>
      </div>
    </nav>
    <div class="container" style="background-color: gainsboro;">
     <div  class="row">
        	<div class="col-md-6 col-sm-offset-1">
	         <h1>视频列表-视频管理</h1>
		 </div>
		</div>
		</div>
		&nbsp;&nbsp;&nbsp;
		<div class="container">
		 <div  class="row">
        	<div  class="col-md-4 ">
        	 <button type="button" class="btn btn-primary btn-lg active" onclick="add()">添加视频</button>
        	 <button type="submit" class="btn btn-primary btn-lg active" onclick="del(this)">批量删除<span id="ids" class="badge">0</span></button>
        	</div>
			<form class="form-inline" action="${pageContext.request.contextPath }/video/videoList.action">
  <div class="form-group col-md-offset-2 ">
    <input type="text" class="form-control" id="exampleInputName2" placeholder="视频标题" name="keyword" value="${keyword }">
  </div>
  <div class="form-group">
<select class="form-control" name="serchSpeaker">
	<option>请选择主讲人</option>
	<c:forEach items="${list}" var="lis">
	<option value="${ lis.speakerName}"${lis.speakerName eq serchSpeaker?"selected":"" }  >${lis.speakerName }</option>
	</c:forEach>
</select >
</div>
  <div class="form-group" >
  <select class="form-control" name="serchCourse">
	<option>请选择课程</option>
	<c:forEach items="${co}" var="p">
	<option value="${p.courseName}" ${p.courseName eq serchCourse?"selected":"" }>${p.courseName}</option>
	</c:forEach>
</select>
  </div>
  <button type="submit" class="btn btn-primary active" >查询</button>
</form>
		</div>

		<table class="table table-hover">
      <thead>
      
        <tr>
          <th><input type="checkbox" id="checkId" onclick="checkAll()">序号</th>
       
          <th>名称</th>
     
          
      
          <th>介绍</th>
          
          <th>讲师</th>
         
          <th>课程</th>
        
          <th>时长(秒)</th>
        
          <th>播放次数</th>
         
          <th>编辑</th>
         
          <th>删除</th>
        </tr>
      
      </thead>
      <tbody>
  <c:forEach items="${page.rows }" var="p" varStatus="var">
        <tr>

  	<th scope="row"><input type="checkbox" name="check" onclick="checkone(this)" value="${p.id}">${var.count }</th>

  
          <td>${p.videoTitle }</td>
        
          <td>${p.videoDescr  }</td>
         
          <td>${p.speakerName }</td>
       
           <td>${p.courseName }</td>
           
          <td>${p.videoLength }</td>
         
           <td>${p.videoPlayTimes }</td>
          <td><a class="glyphicon glyphicon-edit" href="<c:url value="/video/editvideo.action?id=${p.id}" />"></a></td>
         
          <td><a class="glyphicon glyphicon-trash" href="<c:url value="/video/deletevideo.action?id=${p.id}" />" ></a></td>
        </tr>
       </c:forEach>

      </tbody>
    </table>	
			
	</div>		
	<lb:page url="${pageContext.request.contextPath }/video/videoList.action"/>  

  </body>
</html>