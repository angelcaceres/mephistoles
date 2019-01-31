
<%@ page import="mephistopheles.Files" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'files.label', default: 'Files')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-files" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-files" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list files">
			
				<g:if test="${filesInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="files.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${filesInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filesInstance?.profilePicture}">
				<li class="fieldcontain">
					<span id="profilePicture-label" class="property-label"><g:message code="files.profilePicture.label" default="Profile Picture" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${filesInstance?.deleted}">
				<li class="fieldcontain">
					<span id="deleted-label" class="property-label"><g:message code="files.deleted.label" default="Deleted" /></span>
					
						<span class="property-value" aria-labelledby="deleted-label"><g:formatBoolean boolean="${filesInstance?.deleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${filesInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="files.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${filesInstance?.user?.id}">${filesInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:filesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${filesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
