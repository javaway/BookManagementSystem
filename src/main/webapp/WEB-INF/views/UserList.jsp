<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="body">
			<div class="container">
				<div align="center">
					<h1>User List</h1>
					<h2>
						<a href="newBook">New Book</a>
					</h2>

					<table border="1">
						<th>No</th>
						<th>Username</th>
						<th>Email</th>
						<th>Actions</th>

						<c:forEach var="user" items="${userList}" varStatus="status">
							<tr>
								<td>${status.index + 1}</td>
								<td>${user.username}</td>
								<td>${user.email}</td>
								<td><a
									href="${pageContext.request.contextPath}/editUser?id=${user.userId}">Edit
										&nbsp;&nbsp;&nbsp;&nbsp;</a> <a
									href="${pageContext.request.contextPath}/deleteUser?id=${user.userId}">Delete
										&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>
