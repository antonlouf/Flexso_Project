using { sap.capire.Expense as my } from '../db/schema';
service AdminService @(requires:'authenticated-user') {
  entity Expense as projection on my.Expense;
  entity Customer as projection on my.Customer;
}
