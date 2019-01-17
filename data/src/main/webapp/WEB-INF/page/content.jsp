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
	<style type="text/css">
		table tr th{
		 text-align:center;
		}
		table tr td{
		 text-align:center;
		 line-height:100px;
		}
		.container1{
			margin-top:20px;
		}
	</style>
</head>
<body>
<div style="position:relative">
<div class="container1" id="main">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-striped table-hover" style="border:1px solid gray;" >
				<thead>
					<tr>
						<th>
							物料名称
						</th>
						<th>
							规格型号
						</th>
						<th>
							单位
						</th>
						<th>
							数量
						</th>
						<th>
							品牌
						</th>
						<th>
							标配
						</th>
						<th>
							说明
						</th>
						<th>
							价格
						</th>
						<th>
							
						</th>
						<th>
						</th>
						<th>
							<input class="btn btn-info" value="新增" name="add" style="width:80px;" placeholder="${tablename }">
						</th>
						<th>
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach  var="data" items="${list }" varStatus="xh">
					<tr>
						<td>
							${data.name }
						</td>
						<td>
							${data.type }
						</td>
						<td>
							${data.unit }
						</td>
						<td>
							${data.num }
						</td>
						<td>
							${data.brand }
						</td>
						<td>
							${data.states}
						</td>
						<td>
							${data.desct }
						</td>
						<td>
							${data.price }
						</td>
						<td>
						</td>
						<td>
							<input class="btn btn-warning" value="修改" style="width:80px;" name="${data.id }" placeholder="${data.tablename }">
						</td>
						<td>
							<button class="btn btn-danger" value="${data.tablename }" style="width:80px;" name="${data.name }">删除</button>
						</td>
						<td>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- <div id="view" style="display:none;position:relative;left:300px;top:-100px;width:500px;border:1px solid gray;">
	
</div> -->
</div>
</body>
</html>
<script>
	$("input[name='add']").click(function(){
		$.ajax({
			url:"add",
			data:{"id":this.name,"tablename":this.placeholder},
			success:function(data){
				$("#main").html(data);
			}
		})
	})
	$("button").click(function(){
		$.ajax({
			url:"delete",
			data:{"name":this.name,"tablename":this.value},
			success:function(data){
				alert("删除成功")
				window.location.href="index.jsp";
			}
		})
	})
	
	$("input[value='修改']").click(function(){
		$.ajax({
			url:"update",
			data:{"id":this.name,"tablename":this.placeholder},
			success:function(data){
				$("#main").html(data);
			}
		})
	})

</script>