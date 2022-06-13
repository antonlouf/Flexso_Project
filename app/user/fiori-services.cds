
//Common met admin

annotate EmployeeService.Expense with @(
  UI: {  
       Identification  : [{Value : titel}],
       SelectionFields : [ID],
    LineItem: [
      {Value: date, Label : 'Date and Time'},
      {Value: expenseType, Label : 'Type'},
      {Value: description, Label : 'Description'},
      {Value: amount, Label : 'Amount'},
      {Value: company, Label :  'Company'},
      {Value: period, Label : 'Period'}
    ]
  }
);

/*annotate AdminService.Expense with @(
    UI: {




    }
);*/
 
 annotate AdminService.Company with @(
    UI: {
            Identification : [{Value : name}],
            SelectionFields : [ID],
    LineItem


    }
);
