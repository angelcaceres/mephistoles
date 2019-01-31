
<%@ page import="mephistopheles.Reference" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reference.label', default: 'Reference')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-reference" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-reference" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list reference">
			
				<g:if test="${referenceInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="reference.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${referenceInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${referenceInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="reference.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${referenceInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${referenceInstance?.maternalLastName}">
				<li class="fieldcontain">
					<span id="maternalLastName-label" class="property-label"><g:message code="reference.maternalLastName.label" default="Maternal Last Name" /></span>
					
						<span class="property-value" aria-labelledby="maternalLastName-label"><g:fieldValue bean="${referenceInstance}" field="maternalLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${referenceInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="reference.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${referenceInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${referenceInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="reference.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${referenceInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${referenceInstance?.relationship}">
				<li class="fieldcontain">
					<span id="relationship-label" class="property-label"><g:message code="reference.relationship.label" default="Relationship" /></span>
					
						<span class="property-value" aria-labelledby="relationship-label"><g:fieldValue bean="${referenceInstance}" field="relationship"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${referenceInstance?.deleted}">
				<li class="fieldcontain">
					<span id="deleted-label" class="property-label"><g:message code="reference.deleted.label" default="Deleted" /></span>
					
						<span class="property-value" aria-labelledby="deleted-label"><g:formatBoolean boolean="${referenceInstance?.deleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${referenceInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="reference.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${referenceInstance?.user?.id}">${referenceInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:referenceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${referenceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
