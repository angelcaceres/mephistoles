<%@ page import="mephistopheles.Position" %>



<div class="fieldcontain ${hasErrors(bean: positionInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="position.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="position" required="" value="${positionInstance?.position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: positionInstance, field: 'salary', 'error')} required">
	<label for="salary">
		<g:message code="position.salary.label" default="Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="salary" required="" value="${positionInstance?.salary}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: positionInstance, field: 'current', 'error')} ">
	<label for="current">
		<g:message code="position.current.label" default="Current" />
		
	</label>
	<g:checkBox name="current" value="${positionInstance?.current}" />

</div>

<div class="fieldcontain ${hasErrors(bean: positionInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="position.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mephistopheles.User.list()}" optionKey="id" required="" value="${positionInstance?.user?.id}" class="many-to-one"/>

</div>

