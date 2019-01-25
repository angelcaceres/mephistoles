
<%@ page import="mephistopheles.Github" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'github.label', default: 'Github')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-github" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-github" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list github">
			
				<g:if test="${githubInstance?.gitUserName}">
				<li class="fieldcontain">
					<span id="gitUserName-label" class="property-label"><g:message code="github.gitUserName.label" default="Git User Name" /></span>
					
						<span class="property-value" aria-labelledby="gitUserName-label"><g:fieldValue bean="${githubInstance}" field="gitUserName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${githubInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="github.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${githubInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${githubInstance?.gitKey}">
				<li class="fieldcontain">
					<span id="gitKey-label" class="property-label"><g:message code="github.gitKey.label" default="Git Key" /></span>
					
						<span class="property-value" aria-labelledby="gitKey-label"><g:formatBoolean boolean="${githubInstance?.gitKey}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:githubInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${githubInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
