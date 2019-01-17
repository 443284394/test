<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="jquery-1.8.3/jquery.min.js"></script>
</head>
<body>
	 <form method="post" action="save1?tablename=${tablename }" >
	  <input type="hidden" class="form-control" id="exampleInputEmail1"  name="id" value="${data1.id }">
	  <div class="form-group">
	    <label for="exampleInputEmail1">物料名称</label>
	    <input type="text" class="form-control" id="exampleInputEmail1"  name="name" value="${data1.name }">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">视规格型号</label>
	    <input type="text" class="form-control" id="exampleInputPassword1"  name="type" value="${data1.type }">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputFile">单位</label>
	    <input type="text" class="form-control" id="exampleInputFile" name="unit" value="${data1.unit }">
	  </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">数量</label>
	    <input type="text" class="form-control" name="num" value="${data1.num }">
	  </div>
	  </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">品牌</label>
	    <input type="text" class="form-control"  name="brand" value="${data1.brand }">
	  </div>
	 </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">说明</label>
	    <input type="text" class="form-control"  name="desct" value="${data1.desct }">
	 </div>
	 </div>
	 	<div class="form-group">
	   		 <label for="exampleInputPassword1">标配</label>
	    <input type="text" class="form-control"  name="states" value="${data1.states }">
	 </div>
	  </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">价格</label>
	    <input type="text" class="form-control"  name="price" value="${data1.price }">
	 </div> 
  <button type="submit" class="btn btn-success" style="margin-left:180px;" id="submit">提交</button>
</body>
</html>