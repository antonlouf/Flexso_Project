namespace sap.capire.ExpenseApp;

entity Expenses {
key ID : Integer;
date : DateTime;
description : String;
amount : Decimal; //max 10.000$ 
company : Association to Companys; //mag leeg zijn 
expenseType : TypeExpenses;
period : Periods; //mag leeg zijn
}

type TypeExpenses : String enum{
meal; commute; //toevoegen..
}

type Periods : String enum {
   daily; weekly; monthly; 
}

// entity employee {
    
// }

entity Companys { // bedrijf in dit geval 
key ID : Integer;
name : String;
based : String; //location
<<<<<<< HEAD
IBAN: String
=======
expenses: Association to many Expenses;

>>>>>>> b307296392e59876baa383e446a2499ec322b565
}