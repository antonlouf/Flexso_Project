using { sap.capire.ExpenseApp as my } from '../db/schema';
service AdminService @(requires:'authenticated-user') {
    entity Expense as projection on my.Expenses;
    entity Company as projection on my.Companys;

    action acceptExpense(expense: Expense: ID, company: Company: name);

    action denyExpense(expense: Expense: ID, company: Company: name);

}

using from '../app/user/fiori-services';