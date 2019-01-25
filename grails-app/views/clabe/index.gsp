
<%@ page import="mephistopheles.Clabe" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clabe.label', default: 'Clabe')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-clabe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-clabe" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="clabe" title="${message(code: 'clabe.clabe.label', default: 'Clabe')}" />
					
						<g:sortableColumn property="bank" title="${message(code: 'clabe.bank.label', default: 'Bank')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'clabe.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clabeInstanceList}" status="i" var="clabeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clabeInstance.id}">${fieldValue(bean: clabeInstance, field: "clabe")}</g:link></td>
					
						<td>${fieldValue(bean: clabeInstance, field: "bank")}</td>
					
						<td>${fieldValue(bean: clabeInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clabeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
