using { sap.capire.ExpenseApp as my } from '../db/schema';


service EmployeeService @(path:'/user') {
 //entity Employee as projection on my.employee;
 entity Expense as projection on my.Expenses;
}


using from '../app/user/fiori-services';