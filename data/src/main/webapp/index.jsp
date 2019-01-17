<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="//cdn.staticfile.org/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript" src="//cdn.staticfile.org/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<script type="text/javascript" src="//cdn.staticfile.org/jqueryui-touch-punch/0.2.2/jquery.ui.touch-punch.min.js"></script>
	<script type="text/javascript" src="//cdn.staticfile.org/twitter-bootstrap/3.0.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="v3/jquery.htmlClean.js"></script>
	<script type="text/javascript" src="v3/scripts.min.js"></script>
	<link rel="stylesheet" href="bootstrap-3.3.7/dist/css/bootstrap.css">
	<link rel="stylesheet" href="bootstrap-3.3.7/dist/js/bootstrap.js">
	<link rel="stylesheet" href="bootstrap-3.3.7/js/tab.js">
	<script type="text/javascript" src="bootstrap-3.3.7/js/tests/vendor/jquery.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-362670">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-340860" data-toggle="tab" id="data">数据采集</a>
					</li>
					<li>
						 <a href="#panel-253567" data-toggle="tab" id="vedio">视频系统</a>
					</li>
					<li>
						 <a href="#panel-1" data-toggle="tab" id="door">门禁系统</a>
					</li>
					<li>
						 <a href="#panel-2" data-toggle="tab" id="talk">对讲系统</a>
					</li>
					<li>
						 <a href="#panel-3" data-toggle="tab" id="safe">安防系统</a>
					</li>
					<li>
						 <a href="#panel-4" data-toggle="tab" id="internet">网络设备</a>
					</li>
					<li>
						 <a href="#panel-5" data-toggle="tab" id="energy">能量分析</a>
					</li>
					<li>
						 <a href="#panel-6" data-toggle="tab" id="water">水质监测</a>
					</li>
					<li>
						 <a href="#panel-7" data-toggle="tab" id="enviroment">环境监测</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-340860">
						<p>
						</p>
					</div>
					<div class="tab-pane" id="panel-253567">
						<p>
							Howdy, I'm in Section 2.
						</p>
					</div>
					<div class="tab-pane" id="panel-1">
						<p>
							Howdy, I'm in Section 3.
						</p>
					</div>
					<div class="tab-pane" id="panel-2">
						<p>
							Howdy, I'm in Section 4.
						</p>
					</div>
					<div class="tab-pane" id="panel-3">
						<p>
							Howdy, I'm in Section 5.
						</p>
					</div>						
					<div class="tab-pane" id="panel-4">
						<p>
							Howdy, I'm in Section 6.
						</p>
					</div>
					<div class="tab-pane" id="panel-5">
						<p>
							Howdy, I'm in Section 7.
						</p>
					</div>
					<div class="tab-pane" id="panel-6">
						<p>
							Howdy, I'm in Section 8.
						</p>
					</div>
					<div class="tab-pane" id="panel-7">
						<p>
							Howdy, I'm in Section 9.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<script>
	$("#data").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"datas"},
			success:function(data){
				$("#panel-340860").html(data);
			}
		})
	})
	$("#vedio").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"vedios"},
			success:function(data){
				$("#panel-253567").html(data);
			}
		})
	})
	$("#door").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"doors"},
			success:function(data){
				$("#panel-1").html(data);
			}
		})
	})
	$("#talk").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"talks"},
			success:function(data){
				$("#panel-2").html(data);
			}
		})
	})
	$("#safe").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"safes"},
			success:function(data){
				$("#panel-3").html(data);
			}
		})
	})
	$("#internet").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"internets"},
			success:function(data){
				$("#panel-4").html(data);
			}
		})
	})
	$("#energy").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"energys"},
			success:function(data){
				$("#panel-5").html(data);
			}
		})
	})
	$("#water").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"waters"},
			success:function(data){
				$("#panel-6").html(data);
			}
		})
	})
	$("#enviroment").click(function(){
		$.ajax({
			url:"init",
			data:{"name":"environments"},
			success:function(data){
				$("#panel-7").html(data);
			}
		})
	})
</script>