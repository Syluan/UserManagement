<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="<c:url value='/resources/asets/libs/font/fontawesome/css/all.min.css'/>">

<style>
.btn-active {
	background-color: green; /* Màu xanh lá cho trạng thái active */
	color: white; /* Màu chữ trắng để đối contrast với nền xanh lá */
}

.btn-disable {
	background-color: gray; /* Màu xám cho trạng thái disable */
	color: white; /*
	 Màu chữ trắng để đối contrast với nền xám */
}
</style>
<section class="content">
	<div class="container-fluid">
		<!-- Striped Rows -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>DANH SÁCH USER</h2>
						<a href="${contextPath}/user/create">THÊM USER</a>
					</div>
					<div class="body table-responsive">
						<table class="table table-striped" id="dataTable-listMember">
							<thead>
								<tr>
									<th>HỌ VÀ TÊN</th>
									<th>ĐƠN VỊ</th>
									<th>ROLE</th>
									<th>Action</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${not empty fromListUser}">
									<c:forEach items="${fromListUser}" var="user">
										<tr>
											<td>${user.ho } ${user.ten}</td>
											<td>${user.donVi}</td>
											<td>${user.role.roleName}</td>

											<td><a
												href="${contextPath}/user/updateStatus/${user.userID}">
													<button type="button"
														class="btn btn-primary ${user.status == 'active' ? 'btn-active' : 'btn-disable'}">
														${user.status == 'active' ? 'Disable' : 'Active'}</button>
											</a></td>

											<td><a href="${contextPath}/user/update/${user.userID}"><i
													class="fa-solid fa-pen-to-square"></i></a> <a href=""
												type="button" data-toggle="modal"
												data-target="#exampleModal${user.userID }"><i
													class="fas fa-trash-alt"></i></a> <!-- Modal -->
												<div class="modal fade" id="exampleModal${user.userID }"
													tabindex="-1" role="dialog"
													aria-labelledby="exampleModalLabel" aria-hidden="true">
													<div class="modal-dialog" role="document">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="exampleModalLabel">Xóa
																	user</h5>
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">Bạn có muốn xóa ${user.ten}
																không ?</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">hủy</button>
																<a href="${contextPath}/user/delete/${user.userID}"
																	class="btn btn-primary">có</a>
															</div>
														</div>
													</div>
												</div></td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- #END# Striped Rows -->
	</div>
</section>

