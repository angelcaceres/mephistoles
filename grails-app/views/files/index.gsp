
<%@ page import="mephistopheles.Files" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'files.label', default: 'Files')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-files" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-files" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'files.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="profilePicture" title="${message(code: 'files.profilePicture.label', default: 'Profile Picture')}" />
					
						<g:sortableColumn property="deleted" title="${message(code: 'files.deleted.label', default: 'Deleted')}" />
					
						<th><g:message code="files.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${filesInstanceList}" status="i" var="filesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${filesInstance.id}">${fieldValue(bean: filesInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: filesInstance, field: "profilePicture")}</td>
					
						<td><g:formatBoolean boolean="${filesInstance.deleted}" /></td>
					
						<td>${fieldValue(bean: filesInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${filesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
