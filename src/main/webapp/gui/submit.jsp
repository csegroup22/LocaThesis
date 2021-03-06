<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<body>
	<table class="table table-hover" border="1">
		<thead>
			<tr>
				<th>Click on the name of the file for the results</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${files}" var="file">
				<tr>
					 <td><a href="<spring:url value="/user/${file}.html" />" target="_blank"> ${file} </a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>