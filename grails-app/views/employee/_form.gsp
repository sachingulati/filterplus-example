<%@ page import="filterplus.example.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${employeeInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${employeeInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="employee.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${employeeInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="employee.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${employeeInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'phoneNo', 'error')} ">
	<label for="phoneNo">
		<g:message code="employee.phoneNo.label" default="Phone No" />
		
	</label>
	<g:textField name="phoneNo" value="${employeeInstance?.phoneNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'designation', 'error')} ">
	<label for="designation">
		<g:message code="employee.designation.label" default="Designation" />
		
	</label>
	<g:textField name="designation" value="${employeeInstance?.designation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'joiningDate', 'error')} ">
	<label for="joiningDate">
		<g:message code="employee.joiningDate.label" default="Joining Date" />
		
	</label>
	<g:textField name="joiningDate" value="${employeeInstance?.joiningDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="employee.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${filterplus.example.Department.list()}" optionKey="id" required="" value="${employeeInstance?.department?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'projects', 'error')} ">
	<label for="projects">
		<g:message code="employee.projects.label" default="Projects" />
		
	</label>
	<g:select name="projects" from="${filterplus.example.Project.list()}" multiple="multiple" optionKey="id" size="5" value="${employeeInstance?.projects*.id}" class="many-to-many"/>

</div>

