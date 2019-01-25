<%@ page import="mephistopheles.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'street', 'error')} required">
	<label for="street">
		<g:message code="address.street.label" default="Street" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="street" required="" value="${addressInstance?.street}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'houseNumber', 'error')} required">
	<label for="houseNumber">
		<g:message code="address.houseNumber.label" default="House Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="houseNumber" type="number" value="${addressInstance.houseNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode">
		<g:message code="address.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipCode" maxlength="5" required="" value="${addressInstance?.zipCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${addressInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'apartment', 'error')} required">
	<label for="apartment">
		<g:message code="address.apartment.label" default="Apartment" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apartment" required="" value="${addressInstance?.apartment}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'locality', 'error')} required">
	<label for="locality">
		<g:message code="address.locality.label" default="Locality" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locality" required="" value="${addressInstance?.locality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="address.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${addressInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${addressInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="address.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${addressInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="address.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${mephistopheles.User.list()}" optionKey="id" required="" value="${addressInstance?.user?.id}" class="many-to-one"/>

</div>

