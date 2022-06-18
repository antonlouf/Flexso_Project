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
            {Value: description, Label : 'Description'},
            {Value: expenseType, Label : 'Type'},
            {Value: amount, Label : 'Amount'},
            {Value: type, Label :  'Type'},
            {Value: period, Label : 'Period'}     
        ],
        HeaderFacets: [
            {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Information', Label: 'Information: ',},
            {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Creation', Label: 'Created by: ',}
        ], 
        Facets: [
            {
                $Type: 'UI.CollectionFacet',
                Label: 'Something nice', //Just testing
            }, 

        ],
        FieldGroup#Information: {
            Data: [
                {$Type: 'UI.DataField', Value: type},
                {$Type: 'UI.DataField', Value: date}
            ]
        }
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