<%@ page import="mephistopheles.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="user.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${userInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${userInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'maternalLastName', 'error')} ">
	<label for="maternalLastName">
		<g:message code="user.maternalLastName.label" default="Maternal Last Name" />
		
	</label>
	<g:textField name="maternalLastName" value="${userInstance?.maternalLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="user.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="gender" required="" value="${userInstance?.gender}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'homePhone', 'error')} required">
	<label for="homePhone">
		<g:message code="user.homePhone.label" default="Home Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homePhone" maxlength="10" required="" value="${userInstance?.homePhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cellPhoneNumber', 'error')} required">
	<label for="cellPhoneNumber">
		<g:message code="user.cellPhoneNumber.label" default="Cell Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cellPhoneNumber" maxlength="10" required="" value="${userInstance?.cellPhoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'idNumber', 'error')} required">
	<label for="idNumber">
		<g:message code="user.idNumber.label" default="Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="idNumber" maxlength="10" required="" value="${userInstance?.idNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nss', 'error')} required">
	<label for="nss">
		<g:message code="user.nss.label" default="Nss" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nss" maxlength="11" required="" value="${userInstance?.nss}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'institutionalMail', 'error')} required">
	<label for="institutionalMail">
		<g:message code="user.institutionalMail.label" default="Institutional Mail" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="institutionalMail" required="" value="${userInstance?.institutionalMail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'personalMail', 'error')} required">
	<label for="personalMail">
		<g:message code="user.personalMail.label" default="Personal Mail" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="personalMail" required="" value="${userInstance?.personalMail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="user.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${userInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="user.address.label" default="Address" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.address?}" var="a">
    <li><g:link controller="address" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="address" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'address.label', default: 'Address')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="user.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${userInstance?.birthDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'clabe', 'error')} ">
	<label for="clabe">
		<g:message code="user.clabe.label" default="Clabe" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.clabe?}" var="c">
    <li><g:link controller="clabe" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="clabe" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'clabe.label', default: 'Clabe')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'equipment', 'error')} ">
	<label for="equipment">
		<g:message code="user.equipment.label" default="Equipment" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.equipment?}" var="e">
    <li><g:link controller="equipment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="equipment" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'equipment.label', default: 'Equipment')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'exitDate', 'error')} required">
	<label for="exitDate">
		<g:message code="user.exitDate.label" default="Exit Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="exitDate" precision="day"  value="${userInstance?.exitDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'files', 'error')} ">
	<label for="files">
		<g:message code="user.files.label" default="Files" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.files?}" var="f">
    <li><g:link controller="files" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="files" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'files.label', default: 'Files')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'github', 'error')} required">
	<label for="github">
		<g:message code="user.github.label" default="Github" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="github" name="github.id" from="${mephistopheles.Github.list()}" optionKey="id" required="" value="${userInstance?.github?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'position', 'error')} ">
	<label for="position">
		<g:message code="user.position.label" default="Position" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.position?}" var="p">
    <li><g:link controller="position" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="position" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'position.label', default: 'Position')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'reference', 'error')} ">
	<label for="reference">
		<g:message code="user.reference.label" default="Reference" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.reference?}" var="r">
    <li><g:link controller="reference" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="reference" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'reference.label', default: 'Reference')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="user.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${userInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'vacations', 'error')} ">
	<label for="vacations">
		<g:message code="user.vacations.label" default="Vacations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.vacations?}" var="v">
    <li><g:link controller="vacations" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="vacations" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'vacations.label', default: 'Vacations')])}</g:link>
</li>
</ul>


</div>

