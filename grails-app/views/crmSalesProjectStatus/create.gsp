<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'crmSalesProjectStatus.label', default: 'Project Status')}"/>
    <title><g:message code="crmSalesProjectStatus.create.title" args="[entityName]"/></title>
</head>

<body>

<crm:header title="crmSalesProjectStatus.create.title" args="[entityName]"/>

<div class="row-fluid">
    <div class="span9">

        <g:hasErrors bean="${crmSalesProjectStatus}">
            <crm:alert class="alert-error">
                <ul>
                    <g:eachError bean="${crmSalesProjectStatus}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </crm:alert>
        </g:hasErrors>

        <g:form class="form-horizontal" action="create">

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.name.label"/>
                </label>

                <div class="controls">
                    <g:textField name="name" value="${crmSalesProjectStatus.name}" autofocus=""/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.description.label"/>
                </label>

                <div class="controls">
                    <g:textField name="description" value="${crmSalesProjectStatus.description}"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.param.label"/>
                </label>

                <div class="controls">
                    <g:textField name="param" value="${crmSalesProjectStatus.param}"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.icon.label"/>
                </label>

                <div class="controls">
                    <g:textField name="icon" value="${crmSalesProjectStatus.icon}"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.orderIndex.label"/>
                </label>

                <div class="controls">
                    <g:textField name="orderIndex" value="${crmSalesProjectStatus.orderIndex}"/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectStatus.enabled.label"/>
                </label>

                <div class="controls">
                    <g:checkBox name="enabled" value="true" checked="${crmSalesProjectStatus.enabled}"/>
                </div>
            </div>

            <div class="form-actions">
                <crm:button visual="success" icon="icon-ok icon-white" label="crmSalesProjectStatus.button.save.label"/>
                <crm:button type="link" action="list"
                            icon="icon-remove"
                            label="crmSalesProjectStatus.button.cancel.label"/>
            </div>

        </g:form>
    </div>

    <div class="span3">
        <crm:submenu/>
    </div>
</div>
</body>
</html>
