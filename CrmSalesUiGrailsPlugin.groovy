import grails.plugins.crm.sales.CrmSalesProject

class CrmSalesUiGrailsPlugin {
    def groupId = ""
    def version = "2.0.0"
    def grailsVersion = "2.2 > *"
    def dependsOn = [:]
    def loadAfter = ['crmSales']
    def pluginExcludes = [
            "grails-app/conf/ApplicationResources.groovy",
            "src/groovy/grails/plugins/crm/sales/TestSecurityDelegate.groovy",
            "grails-app/views/error.gsp"
    ]
    def title = "Grails CRM Sales Management UI"
    def author = "Goran Ehrsson"
    def authorEmail = "goran@technipelago.se"
    def description = '''\
Sales and lead management user interface for GR8 CRM.
'''
    def documentation = "http://gr8crm.github.io/plugins/crm-sales-ui/"
    def license = "APACHE"
    def organization = [name: "Technipelago AB", url: "http://www.technipelago.se/"]
    def issueManagement = [system: "github", url: "https://github.com/technipelago/grails-crm-sales-ui/issues"]
    def scm = [url: "https://github.com/technipelago/grails-crm-sales-ui"]

    def doWithApplicationContext = { applicationContext ->
        def crmPluginService = applicationContext.crmPluginService
        def crmContactService = applicationContext.containsBean('crmContactService') ? applicationContext.crmContactService : null
        crmPluginService.registerView('crmMessage', 'index', 'tabs',
                [id: "crmSalesProject", index: 300, label: "crmSalesProject.label",
                        template: '/crmSalesProject/messages', plugin: "crm-sales"]
        )
        if (crmContactService) {
            crmPluginService.registerView('crmContact', 'show', 'tabs',
                    [id: "opportunities", permission: "crmSalesProject:list", label: "crmSalesProject.list.label", template: '/crmSalesProject/projects', plugin: "crm-sales", model: {
                        def result
                        if (crmContact.company) {
                            result = CrmSalesProject.findAllByCustomer(crmContact, [sort: 'number', order: 'asc'])
                        } else {
                            result = CrmSalesProject.findAllByContact(crmContact, [sort: 'number', order: 'asc'])
                        }
                        [result: result, totalCount: result.size()]
                    }]
            )
        }
    }
}
