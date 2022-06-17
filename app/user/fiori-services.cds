
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

annotate AdminService.Expense with @(
    UI: {
            Identification : [{Value : name}],
            SelectionFields : [ID, name],
        LineItem: [
            {Value: ID, Label : 'IDnumber'},
            {Value: date, Label : 'Date and Time'},
            {Value: expenseType, Label : 'Type'},
            {Value: description, Label : 'Description'},
            {Value: amount, Label : 'Amount'},
            {Value: company, Label :  'Company'},
            {Value: period, Label : 'Period'}
        ] 
    }
);
 
annotate AdminService.Company with @(
    UI: {
            Identification : [{Value : name}],
            SelectionFields : [ID],
    LineItem: [
            {Value: id, Label : 'Company Name'},
            {Value: name, Label : 'Company Name'},
            {Value: expense, Label : 'Open Expenses'},
            {Value: location, Label : 'Company Location'},
            {Value: IBAN, Label : 'Company IBAN'},

        ]
    }
);
