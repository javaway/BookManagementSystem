<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="body">
			<div class="container">
				<div align="center">
					<h1>Enter Book Details</h1>
					<table>
						<form:form action="saveBook" method="post" modelAttribute="book">
							<form:hidden path="bookId" />
							<tr>
								<td>Name:</td>
								<td><form:input path="bookName" /></td>
							</tr>
							<tr>
								<td>ISBN:</td>
								<td><form:input path="bookISBN" /></td>
							</tr>
							<tr>
								<td>Description:</td>
								<td><form:input path="description" /></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									value="saveBook"></td>
							</tr>
						</form:form>
					</table>
				</div>
			</div>
		</div>

	</tiles:putAttribute>
</tiles:insertDefinition>