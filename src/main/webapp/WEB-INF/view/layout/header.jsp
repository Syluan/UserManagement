<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="<c:url value='/resources/asets/libs/font/fontawesome/css/all.min.css'/>">
<!-- Top navigation-->
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	<!-- Navbar Brand-->
	<a class="navbar-brand ps-3 fw-bold" href="/AssignmentGeneral/home"><i
		class="fa-solid fa-bolt me-3"></i>Manage System</a>
	<!-- Sidebar Toggle-->
	<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
		id="sidebarToggle" href="#!">
		<i class="fas fa-bars"></i>
	</button>
	<!-- Navbar Search-->
	<form
		class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
	</form>
	<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
			aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
			<ul class="dropdown-menu dropdown-menu-end"
				aria-labelledby="navbarDropdown">
				<li><a class="dropdown-item fw-bold"
					href="/JWD_Assignment_03/member/edit"><i
						class="fas fa-user fa-fw"></i>User profile</a></li>
				<li><a class="dropdown-item fw-bold"
					href="/JWD_Assignment_03/logout"> <i class="fa fa-sign-out"
						aria-hidden="true"></i> Logout
				</a></li>
			</ul></li>
	</ul>
</nav>
