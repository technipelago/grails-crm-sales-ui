navigation = {
    main(global: true) {
        crmSales controller: 'crmSalesProject', action: 'index', order: 300
    }
    admin(global: true) {
        crmSalesProjectRoleType controller: 'crmSalesProjectRoleType', action: 'list'
        crmSalesProjectStatus controller: 'crmSalesProjectStatus', action: 'list'
    }
}