using { sap.capire.ExpenseApp as my } from '../db/schema';
service AdminService @(requires:'authenticated-user') {
  entity Expense as projection on my.Expenses;
  entity Customer as projection on my.Customers;
}
