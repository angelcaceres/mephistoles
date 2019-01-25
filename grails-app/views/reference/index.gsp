
<%@ page import="mephistopheles.Reference" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reference.label', default: 'Reference')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-reference" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-reference" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'reference.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'reference.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="maternalLastName" title="${message(code: 'reference.maternalLastName.label', default: 'Maternal Last Name')}" />
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'reference.phoneNumber.label', default: 'Phone Number')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'reference.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="relationship" title="${message(code: 'reference.relationship.label', default: 'Relationship')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${referenceInstanceList}" status="i" var="referenceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${referenceInstance.id}">${fieldValue(bean: referenceInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: referenceInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: referenceInstance, field: "maternalLastName")}</td>
					
						<td>${fieldValue(bean: referenceInstance, field: "phoneNumber")}</td>
					
						<td>${fieldValue(bean: referenceInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: referenceInstance, field: "relationship")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${referenceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
