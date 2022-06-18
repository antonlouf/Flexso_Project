namespace sap.capire.ExpenseApp;

entity Expenses {
    key ID : Integer;
    date: DateTime;
    description : String;
    amount : Decimal; //max 10.000$ 
    company : Association to Companys; //mag leeg zijn 
    expenseType : TypeExpenses;
    period : Periods; //mag leeg zijn
    madeBy: Association to Employee;
}

type TypeExpenses : String enum{
meal; commute; //toevoegen..
}

type Periods : String enum {
   daily; weekly; monthly; 
}

type Person : { 
    firstname: String; lastname: String; 
}

entity Employee : Person {
    key ID: Integer;
    ExpensesMade: Association to many Expenses on ExpensesMade.madeBy = $self;
    WorksFor: Association to one Companys;
}

entity Companys { // bedrijf in dit geval 
    key ID : Integer;
    name : String;
    location : String;
    IBAN: String;
    expense: Association to many Expenses;
}