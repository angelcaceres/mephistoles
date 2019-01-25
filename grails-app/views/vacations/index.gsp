
<%@ page import="mephistopheles.Vacations" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vacations.label', default: 'Vacations')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vacations" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vacations" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dateOfRequest" title="${message(code: 'vacations.dateOfRequest.label', default: 'Date Of Request')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'vacations.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'vacations.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="approved" title="${message(code: 'vacations.approved.label', default: 'Approved')}" />
					
						<th><g:message code="vacations.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vacationsInstanceList}" status="i" var="vacationsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vacationsInstance.id}">${fieldValue(bean: vacationsInstance, field: "dateOfRequest")}</g:link></td>
					
						<td><g:formatDate date="${vacationsInstance.startDate}" /></td>
					
						<td><g:formatDate date="${vacationsInstance.endDate}" /></td>
					
						<td><g:formatBoolean boolean="${vacationsInstance.approved}" /></td>
					
						<td>${fieldValue(bean: vacationsInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vacationsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
