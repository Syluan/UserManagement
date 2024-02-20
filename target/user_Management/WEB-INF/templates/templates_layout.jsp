<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<tiles:insertAttribute name="head" />
<!-- Local Import CSS START -->
<title><tiles:insertAttribute name="title" /></title>
<tiles:importAttribute name="stylesheets" ignore="true" />
<c:forEach var="css" items="${stylesheets}">
	<link rel="stylesheet" type="text/css" href="<c:url value='${css}'/>">
</c:forEach>
<!-- Local Import CSS END -->
<style>
	.form-group span {
		color: red;
	}
     label.error {
        color: red;
        /* Các thuộc tính CSS khác mà bạn muốn áp dụng cho label lỗi */
    }
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row" id="wrapper">
			<div class="col-12">
				<tiles:insertAttribute name="header" />
			</div>
			<div class="col-2">
				<tiles:insertAttribute name="sidebar" />
			</div>
			<div class="col-10">
				<div class="content-wrapper" style="min-height: 584px;">
					<tiles:insertAttribute name="main-content" />
				</div>
			</div>
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
	<tiles:insertAttribute name="script" />
	<tiles:importAttribute name="javascripts" ignore="true" />
	<c:forEach var="js" items="${javascripts}">
		<script src="<c:url value='${js}'/>"></script>
	</c:forEach>
</body>
</html>