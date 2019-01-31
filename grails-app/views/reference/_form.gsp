<%@ page import="mephistopheles.Reference" %>



<div class="fieldcontain ${hasErrors(bean: referenceInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="reference.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${referenceInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: referenceInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="reference.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${referenceInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: referenceInstance, field: 'maternalLastName', 'error')} ">
	<label for="maternalLastName">
		<g:message code="reference.maternalLastName.label" default="Maternal Last Name" />
		
	</label>
	<g:textField name="maternalLastName" value="${referenceInstance?.maternalLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: referenceInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="reference.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" maxlength="10" required="" value="${referenceInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: referenceInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="reference.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${referenceInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: referenceInstance, field: 'relationship', 'error')} required">
	<label for="relationship">
		<g:message code="reference.relationship.label" default="Relationship" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="relationship" from="${referenceInstance.constraints.relationship.inList}" required="" value="${referenceInstance?.relationship}" valueMessagePrefix="reference.relationship"/>

</div>

<div class="fieldcontain ${hasErrors(bean: referenceInstance, field: 'deleted', 'error')} ">
	<label for="deleted">
		<g:message code="reference.deleted.label" default="Deleted" />
		
	</label>
	<g:checkBox name="deleted" value="${referenceInstance?.deleted}" />

</div>

<div class="fieldcontain ${hasErrors(bean: referenceInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="reference.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mephistopheles.User.list()}" optionKey="id" required="" value="${referenceInstance?.user?.id}" class="many-to-one"/>

</div>

