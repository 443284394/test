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
	 <form method="post" action="save?tablenames=${tablename }">
	  <div class="form-group">
	    <label for="exampleInputEmail1">物料名称</label>
	    <input type="text" class="form-control" id="exampleInputEmail1"  name="name">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputPassword1">视规格型号</label>
	    <input type="text" class="form-control" id="exampleInputPassword1"  name="type">
	  </div>
	  <div class="form-group">
	    <label for="exampleInputFile">单位</label>
	    <input type="text" class="form-control" id="exampleInputFile" name="unit">
	  </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">数量</label>
	    <input type="text" class="form-control" name="num">
	  </div>
	  </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">品牌</label>
	    <input type="text" class="form-control"  name="brand">
	  </div>
	 </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">说明</label>
	    <input type="text" class="form-control"  name="desct">
	 </div>
	 </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">标配</label>
	    <input type="text" class="form-control"  name="states">
	 </div>
	 </div>
	 	<div class="form-group">
	    <label for="exampleInputPassword1">价格</label>
	    <input type="text" class="form-control"  name="price">
	 </div>
	 <input type="hidden" class="form-control"  name="tablename"  value="${tablename }">
  <button type="submit" class="btn btn-success" style="margin-left:180px;" id="submit">提交</button>
</body>
</html>