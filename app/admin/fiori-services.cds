annotate AdminService.Expense with @(
    UI: {
        HeaderInfo:{
            TypeName : 'Open Expense',
            TypeNamePlural: 'Open Expenses',
            Title: { $Type: 'UI.DataField', Value: title}
        },

        SelectionFields: [date, expenseType, company], 
 
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
        HeaderInfo:{
            TypeName : 'Company',
            TypeNamePlural: 'Companies',
            Title: { $Type: 'UI.DataField', Value: title}
        },
        
        SelectionFields: [id, name, location, IBAN],  
  
        LineItem: [
            {Value: ID, Label: 'ID'},
            {Value: name, Label: 'Name'},
            {Value: location, Label: 'Location'},
            {Value: IBAN, Label: 'IBAN'}
        ]
    }
);