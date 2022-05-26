namespace sap.capire.ExpenseApp;

entity Expenses {
key ID : UUID;
date : DateTime;
description : String;
amount : Decimal; //max 10.000$ 
customer : Association to Customers; //met betrekking tot welke klant, kan eventueel leeg zijn 
expenseType : Types;
period : Periods;
}

type Types : String enum{
Meal; Commute; //toevoegen..
}

type Periods : String enum {
   Daily; Weekly; Monthly; 
}

entity Customers { // bedrijf in dit geval 
key ID : UUID;
name : String;
based : String; //location
IBAN: String
}