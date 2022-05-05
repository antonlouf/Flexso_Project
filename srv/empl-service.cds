using { sap.capire.ExpenseApp as my } from '../db/schema';
service EmployeService @(path:'/browse') {

  @readonly entity Expense as SELECT from my.Expenses {*,
    Expenses.customer as customer
  };


 // @requires: 'authenticated-user'
  //action submitOrder (book: Books:ID, quantity: Integer);
}

service testservice {
  entity Customer as projection on my.Customers;
}
