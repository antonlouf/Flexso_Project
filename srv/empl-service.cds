using { sap.capire.Expense as my } from '../db/schema';
service EmployeService @(path:'/browse') {

  @readonly entity Expense as SELECT from my.Expense {*,
    Expense.customer as customer
  };

@readonly entity Customer as SELECT from my.Customer 

 // @requires: 'authenticated-user'
  //action submitOrder (book: Books:ID, quantity: Integer);
}
