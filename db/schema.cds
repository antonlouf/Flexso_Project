
namespace sap.capire.Expense;

entity Expense {
key ID : UUID;
date : DateTime;
description : String;
amount : Decimal; //max 10.000$ 
customer : Association to Customer; //met betrekking tot welke klant, kan eventueel leeg zijn 
expenseType : Type;
period : Period;
}

type Type : String enum{
Meal; Commute; //toevoegen..
}

type Period : String enum {
   Daily; Weekly; Monthly; 
}

entity Customer { // bedrijf in dit geval 
key ID : UUID;
name : String;
based : String; //location
}