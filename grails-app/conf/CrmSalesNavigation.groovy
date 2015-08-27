navigation = {
    main(global: true) {
        crmSales controller: 'crmSalesProject', action: 'index', order: 300
    }
    admin(global: true) {
        crmSalesProjectRoleType controller: 'crmProjectRoleType', action: 'list'
        crmSalesProjectStatus controller: 'crmProjectStatus', action: 'list'
    }
}