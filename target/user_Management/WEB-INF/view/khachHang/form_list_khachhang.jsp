<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<div class="container bg-light mt-5">
    <div class="row mt-3">
        <div class="col-lg">			
			<form:form action="${contextPath}/khachHang/list" method="get" >
			    <input type="text" name="search" placeholder="Nhập tìm kiếm" value ="${search}"/>
			    <input type="submit" value="Tìm kiếm" />
			    <input name="pageSize" type="hidden" value="${pageSize}" />
			     <a class="btn" href="${contextPath}/khachHang/list" >cancel</a>   
			</form:form>
        </div>
    </div>
</div>

<section class="content">
	<div class="container-fluid">
		<!-- Striped Rows -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>DANH SÁCH KHÁCH HÀNG</h2>
						<a href="${contextPath}/khachHang/create">THÊM KHÁCH HÀNG</a>
					</div>
					<div class="body table-responsive">
						<table class="table table-striped" id="dataTable-listMember">
							<thead>
								<tr>
									<th>Mã khách hàng</th>
									<th>Tên Khách Hàng</th>
									<th>Địa Chỉ</th>
									<th>Số điện thoại</th>
									<th>email</th>
									<th>Action </th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${not empty fromListKhachHang}">
									<c:forEach items="${fromListKhachHang}" var="khachhang">
										<tr>
											<td>${khachhang.maKH }</td>
											<td>${khachhang.tenKH}</td>
											<td>${khachhang.diaChi}</td>
											<td>${khachhang.soDienThoai}</td>
											<td>${khachhang.diaChiEmail}</td>
											<td><a
												href="${contextPath}/khachHang/update/${khachhang.maKH}"><i class="fa-solid fa-pen-to-square"></i></a>
												<a href="" type="button" data-toggle="modal"
												data-target="#exampleModal${khachhang.maKH }"><i class="fas fa-trash-alt"></i></a> <!-- Modal -->
												<div class="modal fade" id="exampleModal${khachhang.maKH }"
													tabindex="-1" role="dialog"
													aria-labelledby="exampleModalLabel" aria-hidden="true">
													<div class="modal-dialog" role="document">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="exampleModalLabel">Xóa
																	KH</h5>
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">Bạn có muốn xóa ${khachhang.maKH} không ?</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">hủy</button>
																<a
																	href="${contextPath}/khachHang/delete/${khachhang.maKH}"
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

<%
int[] array = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
request.setAttribute("numberPageList", array);
%>

<form id="pageSizeForm" action="${contextPath}/khachhang/list"
	method="get">
	<!-- Your other form elements here -->
	<%-- <div class="form-group form-inline ml-2">
		<label for="pageSize">
			Rows: 
			
			<select class="select mx-2 rounded px-1" id="pageSize" name="pageSize" onchange="this.form.submit()">
                 <c:forEach var="number" items="${numberPageList}" >
            		<option value="${number}" ${pageSize eq number ? "selected": ""}>${number}</option>
                 </c:forEach>
            </select>
			
			per page
		</label>
		
	</div> --%>
	<div>Total record: ${totalElement }</div>

	<ul class="pagination d-flex justify-content-end mr-4">
		<c:if test="${pageNumber > 1}">
			<li class="page-item"><a class="page-link"
				href="${contextPath}/khachHang/list?pageSize=${pageSize}&pageNumber=${pageNumber-1}&search=${search}">Previous</a></li>

		</c:if>
		<c:forEach begin="1" end="${totalPages}" var="i">
			<c:choose>
				<c:when test="${pageNumber eq i}">
					<li class="page-item"><a class="page-link active text-dark">
							${i} </a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="${contextPath}/khachHang/list?pageSize=${pageSize}&pageNumber=${i}&search=${search}">${i}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<c:if test="${pageNumber lt totalPages}">
			<li class="page-item"><a class="page-link"
				href="${contextPath}/khachHang/list?pageSize=${pageSize}&pageNumber=${pageNumber+1}&search=${search}">Next</a></li>
		</c:if>
	</ul>
	<input name="search" value="${search }" type="hidden" />
</form>
