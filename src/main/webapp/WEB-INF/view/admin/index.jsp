<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    $(function(){
    	$("#formId").validate({
    		rules:{
    			username:{
    				required:true,
    				maxlength:6	
    			},
    			 password:{
    				required:true,
    				maxlength:6
    			},
    			rpwd:{
    				required:true,
    				equalTo:"input[name=password]"
    			} 
    		 
    	},
    		    messages:{
    		    	
    		    	username:{
    		    		required:"请输入用户名",
    		    		maxlength:"长度不能超过6位数"
    		    	},
    		    	 password:{
    		    		required:"请输入密码",
    		    		maxlength:"长度不超过6"
    	
    		    	},
    		    	rpwd:{
    		    		required:"请确认密码",
    		    		equalTo:"密码不一致"
    		    	}
    		    }	
    	}); 
     });
     

    
    </script>

    
    <style>
    
   body{
   	margin-top: 300px;
   	
   }
	
    </style>

  </head>
  <body >
  
<form class="form-horizontal" action="${pageContext.request.contextPath }/login.action" method="post" id="formId">
	  <div class="col-sm-offset-5 col-sm-4 ">
	<img src="${pageContext.request.contextPath }/img/logo.png" alt="..." class="img-rounded">
  <div class="form-group">
    <div class="col-sm-7">
      <input type="text" class="form-control"  placeholder="用户名" name="username" value="admin">
    </div>
  </div>
  <div class="form-group">
   
    <div class="col-sm-7">
      <input type="password" class="form-control " id="inputPassword3" placeholder="登录密码" name="password" >
    </div>
  </div>
   <div class="form-group">
   
    <div class="col-sm-7">
      <input type="password" class="form-control " id="inputPassword3" placeholder="确认密码" name="rpwd" >
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-7">
      <button type="submit" class="btn btn-default btn-block" style="background-color: green;">登录</button>
    </div>
  </div>
   
</form>
  </div> 
  </body>
</html>