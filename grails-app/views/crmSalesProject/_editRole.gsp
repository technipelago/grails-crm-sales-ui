<g:form action="editRole">

    <input type="hidden" name="id" value="${crmSalesProject.id}"/>
    <input type="hidden" name="r" value="${bean.id}"/>
    <input type="hidden" name="version" value="${bean.version}"/>

    <g:set var="entityName" value="${message(code: 'crmSalesProjectRole.label', default: 'Role')}"/>

    <div class="modal-header">
        <a class="close" data-dismiss="modal">×</a>

        <h3><g:message code="crmSalesProjectRole.edit.title" default="Edit role" args="${[entityName, bean]}"/></h3>
    </div>

    <div id="add-role-body" class="modal-body" style="overflow: auto;">

        <div class="control-group">
            <label class="control-label"><g:message code="crmSalesProjectRole.contact.label"/></label>
            <div class="controls">
                <input type="hidden" name="related" style="width: 75%;"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label"><g:message code="crmSalesProjectRole.type.label"/></label>

            <div class="controls">
                <g:select name="type" value="${bean.type?.param}" from="${roleTypes}" optionKey="param"
                          class="input-large"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label"><g:message code="crmSalesProjectRole.description.label"/></label>

            <div class="controls">
                <g:textArea name="description" value="${bean.description}" cols="70" rows="3" class="input-xlarge"/>
            </div>
        </div>
    </div>

    <div class="modal-footer">
        <crm:button action="editRole" visual="success" icon="icon-ok icon-white"
                    label="crmSalesProjectRole.button.save.label" default="Save"/>
        <crm:button action="deleteRole" visual="danger" icon="icon-trash icon-white"
                            label="crmSalesProjectRole.button.delete.label" default="Delete"
        confirm="crmSalesProjectRole.button.delete.confirm.message"/>
        <a href="#" class="btn" data-dismiss="modal"><i class="icon-remove"></i> <g:message
                code="default.button.close.label" default="Close"/></a>
    </div>
</g:form>
