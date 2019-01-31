
<%@ page import="mephistopheles.Github" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'github.label', default: 'Github')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-github" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-github" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="gitUserName" title="${message(code: 'github.gitUserName.label', default: 'Git User Name')}" />
					
						<g:sortableColumn property="active" title="${message(code: 'github.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="gitKey" title="${message(code: 'github.gitKey.label', default: 'Git Key')}" />
					
						<g:sortableColumn property="deleted" title="${message(code: 'github.deleted.label', default: 'Deleted')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${githubInstanceList}" status="i" var="githubInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${githubInstance.id}">${fieldValue(bean: githubInstance, field: "gitUserName")}</g:link></td>
					
						<td><g:formatBoolean boolean="${githubInstance.active}" /></td>
					
						<td><g:formatBoolean boolean="${githubInstance.gitKey}" /></td>
					
						<td><g:formatBoolean boolean="${githubInstance.deleted}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${githubInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
