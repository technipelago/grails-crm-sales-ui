<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'crmSalesProjectRoleType.label', default: 'Project Role')}"/>
    <title><g:message code="crmSalesProjectRoleType.edit.title" args="[entityName, crmSalesProjectRoleType]"/></title>
</head>

<body>

<crm:header title="crmSalesProjectRoleType.edit.title" args="[entityName, crmSalesProjectRoleType]"/>

<div class="row-fluid">
    <div class="span9">

        <g:hasErrors bean="${crmSalesProjectRoleType}">
            <crm:alert class="alert-error">
                <ul>
                    <g:eachError bean="${crmSalesProjectRoleType}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </crm:alert>
        </g:hasErrors>

        <g:form class="form-horizontal" action="edit" id="${crmSalesProjectRoleType?.id}">
            <g:hiddenField name="version" value="${crmSalesProjectRoleType?.version}"/>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectRoleType.name.label"/>
                </label>

                <div class="controls">
                    <g:textField name="name" value="${crmSalesProjectRoleType.name}"  autofocus=""/>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectRoleType.description.label"/>
                </label>

                <div class="controls">
                    <g:textField name="description" value="${crmSalesProjectRoleType.description}" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectRoleType.param.label"/>
                </label>

                <div class="controls">
                    <g:textField name="param" value="${crmSalesProjectRoleType.param}" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectRoleType.icon.label"/>
                </label>

                <div class="controls">
                    <g:textField name="icon" value="${crmSalesProjectRoleType.icon}" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectRoleType.orderIndex.label"/>
                </label>

                <div class="controls">
                    <g:textField name="orderIndex" value="${crmSalesProjectRoleType.orderIndex}" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label">
                    <g:message code="crmSalesProjectRoleType.enabled.label"/>
                </label>

                <div class="controls">
                    <g:checkBox name="enabled" value="true" checked="${crmSalesProjectRoleType.enabled}"/>
                </div>
            </div>

            <div class="form-actions">
                <crm:button visual="warning" icon="icon-ok icon-white"
                            label="crmSalesProjectRoleType.button.update.label"/>
                <crm:button action="delete" visual="danger" icon="icon-trash icon-white"
                            label="crmSalesProjectRoleType.button.delete.label"
                            confirm="crmSalesProjectRoleType.button.delete.confirm.message"
                            permission="crmSalesProjectRoleType:delete"/>
                <crm:button type="link" action="list"
                            icon="icon-remove"
                            label="crmSalesProjectRoleType.button.cancel.label"/>
            </div>
        </g:form>
    </div>

    <div class="span3">
        <crm:submenu/>
    </div>
</div>
</body>
</html>
