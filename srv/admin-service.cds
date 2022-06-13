using { sap.capire.ExpenseApp as my } from '../db/schema';
service AdminService @(requires:'authenticated-user') {
<<<<<<< HEAD
    entity Expense as projection on my.Expenses;
    entity Customer as projection on my.Customers;

    action acceptExpense(expense: Expense: ID, customer: Customer: name);

    action denyExpense(expense: Expense: ID, customer: Customer: name);
}
=======
  entity Expense as projection on my.Expenses;
 // entity Customer as projection on my.employee;
}
>>>>>>> b307296392e59876baa383e446a2499ec322b565
