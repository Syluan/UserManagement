<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<div class="container bg-light mt-5">
	<div class="row mt-3">
		<div class="col-lg-12 text-center">
			<h2 class="mt-3">UPDATE USER</h2>
		</div>
		<div class="col-lg">
			<form:form method="post"
				action="${pageContext.request.contextPath}/user/update/${user.userID}"
				modelAttribute="user">

				<div class="form-group mt-3">
					<form:label path="ho" for="ho" style="font-weight: bold">HO<sup
							style="color: red" title="Bắt buộc nhập">*</sup>
					</form:label>
					<form:input id="ho" path="ho" cssClass="form-control"
						placeholder="Nhập HO ..." />
				</div>

				<div class="form-group mt-3">
					<form:label path="ten" for="ten" style="font-weight: bold">TEN<sup
							style="color: red" title="Bắt buộc nhập">*</sup>
					</form:label>
					<form:input id="ten" path="ten" cssClass="form-control" />
				</div>
				<div class="form-group mt-3">
					<form:label path="email" for="email" style="font-weight: bold">EMAIL<sup
							style="color: red" title="Bắt buộc nhập">*</sup>
					</form:label>
					<form:input id="email" path="email" cssClass="form-control"
						readonly="true" />
				</div>

				<form:hidden path="status" />

				<div class="form-group mt-3">
					<form:label path="soDienThoai" for="soDienThoai"
						style="font-weight: bold">SỐ ĐIỆN THOẠI<sup
							style="color: red" title="Bắt buộc nhập">*</sup>
					</form:label>
					<form:input id="soDienThoai" path="soDienThoai"
						cssClass="form-control" />
					<form:errors path="soDienThoai" cssClass="error"></form:errors>
					<span id="errorSdt" class="error"></span>
				</div>
				<div class="form-group mt-3">
					<form:label path="donVi" for="donVi" style="font-weight: bold">donVi<sup
							style="color: red" title="Bắt buộc nhập">*</sup>
					</form:label>
					<form:input id="donVi" path="donVi" cssClass="form-control" />
				</div>
				<div class="form-group">
					<form:label path="role.roleID" for="role.roleID"
						style="font-weight: bold">ROLE<sup style="color: red"
							title="Bắt buộc nhập">*</sup>
					</form:label>
					<form:select path="role.roleID" items="${rolelist}"
						itemValue="roleID" itemLabel="roleName" cssClass="form-control" />
					<form:errors path="role.roleID" cssClass="error"></form:errors>
				</div>
				<div class="form-group mt-5">
					<button class="btn btn-success" type="submit">update</button>

				</div>

			</form:form>

		</div>
	</div>
</div>
