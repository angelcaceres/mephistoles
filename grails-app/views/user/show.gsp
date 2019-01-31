
<%@ page import="mephistopheles.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="user.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.exitDate}">
				<li class="fieldcontain">
					<span id="exitDate-label" class="property-label"><g:message code="user.exitDate.label" default="Exit Date" /></span>
					
						<span class="property-value" aria-labelledby="exitDate-label"><g:formatDate date="${userInstance?.exitDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="user.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.maternalLastName}">
				<li class="fieldcontain">
					<span id="maternalLastName-label" class="property-label"><g:message code="user.maternalLastName.label" default="Maternal Last Name" /></span>
					
						<span class="property-value" aria-labelledby="maternalLastName-label"><g:fieldValue bean="${userInstance}" field="maternalLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="user.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${userInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="user.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${userInstance}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.cellPhoneNumber}">
				<li class="fieldcontain">
					<span id="cellPhoneNumber-label" class="property-label"><g:message code="user.cellPhoneNumber.label" default="Cell Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="cellPhoneNumber-label"><g:fieldValue bean="${userInstance}" field="cellPhoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.idNumber}">
				<li class="fieldcontain">
					<span id="idNumber-label" class="property-label"><g:message code="user.idNumber.label" default="Id Number" /></span>
					
						<span class="property-value" aria-labelledby="idNumber-label"><g:fieldValue bean="${userInstance}" field="idNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.nss}">
				<li class="fieldcontain">
					<span id="nss-label" class="property-label"><g:message code="user.nss.label" default="Nss" /></span>
					
						<span class="property-value" aria-labelledby="nss-label"><g:fieldValue bean="${userInstance}" field="nss"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.institutionalMail}">
				<li class="fieldcontain">
					<span id="institutionalMail-label" class="property-label"><g:message code="user.institutionalMail.label" default="Institutional Mail" /></span>
					
						<span class="property-value" aria-labelledby="institutionalMail-label"><g:fieldValue bean="${userInstance}" field="institutionalMail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.personalMail}">
				<li class="fieldcontain">
					<span id="personalMail-label" class="property-label"><g:message code="user.personalMail.label" default="Personal Mail" /></span>
					
						<span class="property-value" aria-labelledby="personalMail-label"><g:fieldValue bean="${userInstance}" field="personalMail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="user.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${userInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="user.address.label" default="Address" /></span>
					
						<g:each in="${userInstance.address}" var="a">
						<span class="property-value" aria-labelledby="address-label"><g:link controller="address" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="user.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${userInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.clabe}">
				<li class="fieldcontain">
					<span id="clabe-label" class="property-label"><g:message code="user.clabe.label" default="Clabe" /></span>
					
						<span class="property-value" aria-labelledby="clabe-label"><g:link controller="clabe" action="show" id="${userInstance?.clabe?.id}">${userInstance?.clabe?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.deleted}">
				<li class="fieldcontain">
					<span id="deleted-label" class="property-label"><g:message code="user.deleted.label" default="Deleted" /></span>
					
						<span class="property-value" aria-labelledby="deleted-label"><g:formatBoolean boolean="${userInstance?.deleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.equipment}">
				<li class="fieldcontain">
					<span id="equipment-label" class="property-label"><g:message code="user.equipment.label" default="Equipment" /></span>
					
						<g:each in="${userInstance.equipment}" var="e">
						<span class="property-value" aria-labelledby="equipment-label"><g:link controller="equipment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.files}">
				<li class="fieldcontain">
					<span id="files-label" class="property-label"><g:message code="user.files.label" default="Files" /></span>
					
						<g:each in="${userInstance.files}" var="f">
						<span class="property-value" aria-labelledby="files-label"><g:link controller="files" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.github}">
				<li class="fieldcontain">
					<span id="github-label" class="property-label"><g:message code="user.github.label" default="Github" /></span>
					
						<span class="property-value" aria-labelledby="github-label"><g:link controller="github" action="show" id="${userInstance?.github?.id}">${userInstance?.github?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="user.position.label" default="Position" /></span>
					
						<g:each in="${userInstance.position}" var="p">
						<span class="property-value" aria-labelledby="position-label"><g:link controller="position" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.reference}">
				<li class="fieldcontain">
					<span id="reference-label" class="property-label"><g:message code="user.reference.label" default="Reference" /></span>
					
						<g:each in="${userInstance.reference}" var="r">
						<span class="property-value" aria-labelledby="reference-label"><g:link controller="reference" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="user.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${userInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.vacations}">
				<li class="fieldcontain">
					<span id="vacations-label" class="property-label"><g:message code="user.vacations.label" default="Vacations" /></span>
					
						<g:each in="${userInstance.vacations}" var="v">
						<span class="property-value" aria-labelledby="vacations-label"><g:link controller="vacations" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
