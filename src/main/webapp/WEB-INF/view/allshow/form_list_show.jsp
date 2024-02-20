<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<section class="content">
       <div class="container-fluid">
           <!-- Striped Rows -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Danh sach
                        </h2>
                    </div>
                    <div class="body table-responsive">
                        <table class="table table-striped" id="dataTable-listMember">
                            <thead>
                                <tr>
                                    <th>maKH</th>
									<th>tenKH</th>
									<th>maMay</th>
									<th>viTri</th>
									<th>trangThai</th>
									<th>ngayBatDauSuDung</th>
									<th>thoiGianSuDung</th>
									<th>maDV</th>
									<th>ngaySuDung</th>
									<th>gioSuDung</th>
									<th>soLuong</th>
									<th>don gia</th>
									<th>tongTien</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:if test="${not empty showList}">
                                	<c:forEach items="${showList}" var="list">
										<tr>
											<td>${list.maKH }</td>
											<td>${list.tenKH }</td>
											<td>${list.maMay }</td>
											<td>${list.viTri }</td>
											<td>${list.trangThai }</td>
											<td>${list.ngayBatDauSuDung }</td>
											<td>${list.thoiGianSuDung }</td>
											<td>${list.maDV }</td>
											<td>${list.ngaySuDung }</td>
											<td>${list.gioSuDung }</td>
											<td>${list.soLuong }</td>
											<td>${list.donGia }</td>
											<td>${list.donGia * list.soLuong}</td>											
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
    int[] array = {1, 2, 3, 4, 5,6 ,7 ,8 ,9 ,10};
    request.setAttribute("numberPageList", array);
%>

<form id="pageSizeForm" action="${contextPath}/showallsort" method="get">
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
				href="${contextPath}/showallsort?pageSize=${pageSize}&pageNumber=${pageNumber-1}">Previous</a></li>
	
		</c:if>
		<c:forEach begin="1" end="${totalPages}" var="i">
			<c:choose>
				<c:when test="${pageNumber eq i}">
					<li class="page-item"><a
						class="page-link active text-dark"> ${i} </a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="${contextPath}/showallsort?pageSize=${pageSize}&pageNumber=${i}">${i}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	
		<c:if test="${pageNumber lt totalPages}">
			<li class="page-item"><a class="page-link"
				href="${contextPath}/showallsort?pageSize=${pageSize}&pageNumber=${pageNumber+1}">Next</a></li>
		</c:if>
	</ul>

</form>

