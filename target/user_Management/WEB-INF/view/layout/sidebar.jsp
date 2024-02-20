<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- Sidebar-->
<div class="border-end" id="sidebar-wrapper">

	<div class="list-group list-group-flush">
		<%-- <form:form action="${contextPath}/khachhang/list" method="get">
			<input type="text" name="search" placeholder="nhap tìm kiếm"
				value="${search}" />
			<input type="submit" value="Tìm kiếm" />
		</form:form> --%>

		<a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="${contextPath}/may/list">MÁY</a> <a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="${contextPath}/khachHang/list">KHÁCH HÀNG</a> <a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="${contextPath}/dichVu/list">DỊCH VỤ</a> <a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="${contextPath}/sudungmay/list">SỬ DỤNG MÁY</a> <a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="${contextPath}/sudungdichvu/list">SU DUNG DICH VU</a> <a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="${contextPath}/showallsort">Show all</a>
	</div>
</div>
