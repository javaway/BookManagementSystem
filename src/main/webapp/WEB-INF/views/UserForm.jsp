<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="body">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div align="center">
							<h1>Enter User Details</h1>
							<table>
								<form:form action="saveUser" method="post" modelAttribute="user">
									<form:hidden path="userId" />
									<tr>
										<td>Username:</td>
										<td><form:input path="username" /></td>
									</tr>
									<tr>
										<td>Email:</td>
										<td><form:input path="email" /></td>
									</tr>
									<tr>
										<td>Password:</td>
										<td><form:password path="password" /></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="submit"
											value="SaveUser"></td>
									</tr>
								</form:form>
							</table>

						</div>
					</div>
				</div>
			</div>

		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>