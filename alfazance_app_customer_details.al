table 70140954 alfazanceappcustomerdetails
{
    DataClassification = CustomerContent;
    Caption = 'Alfazance App Customer Details';
    fields
    {
        field(1; "Customer Portal ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Portal ID';
        }
        field(2; "Organization Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Organization Name';
        }
        field(3; "Contact First Name"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Contact First Name';
        }
        field(4; "Contact Last Name"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Contact Last Name';
        }
        field(5; Email; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';
        }
        field(6; password; Text[100])
        {
            Dataclassification = CustomerContent;
            Caption = 'Password';
            trigger OnValidate()
            begin

            end;
        }
        field(7; Phone; Text[20])
        {
            Dataclassification = CustomerContent;
            Caption = 'Phone';
        }
        field(8; "Country Code"; Code[10])
        {
            Dataclassification = CustomerContent;
            Caption = 'Country Code';
            TableRelation = "Country/Region".Code;
            ValidateTableRelation = true;
        }
        field(9; "Business Designated Zone"; Boolean)
        {
            Dataclassification = CustomerContent;
            Caption = 'Business Designated Zone';
        }
        field(10; Street; Text[50])
        {
            Dataclassification = CustomerContent;
            Caption = 'Street';
        }
        field(11; City; Text[50])
        {
            Dataclassification = CustomerContent;
            Caption = 'City';
            TableRelation = "Post Code".City;
            ValidateTableRelation = true;
        }
        field(12; "Pin Code"; Text[20])
        {
            Dataclassification = CustomerContent;
            Caption = 'Pin Code';
        }
        field(13; "Currency Code"; Code[10])
        {
            Dataclassification = CustomerContent;
            Caption = 'Currency Code';
            TableRelation = Currency.Code;
            ValidateTableRelation = true;
        }
        field(14; "Language Code"; Code[10])
        {
            Dataclassification = CustomerContent;
            Caption = 'Language Code';
            TableRelation = Language.Code;
            ValidateTableRelation = true;
        }
        field(15; "Time Zone"; Text[50])
        {
            Dataclassification = CustomerContent;
            Caption = 'Time Zone';
        }
        field(16; "VAT Registered"; Boolean)
        {
            Dataclassification = CustomerContent;
            Caption = 'VAT Registered';
        }
        field(17; "TAX Registration Number"; code[50])
        {
            Dataclassification = CustomerContent;
            Caption = 'TAX Registration Number';
        }
        field(18; "Is International Trade"; Boolean)
        {
            Dataclassification = CustomerContent;
            Caption = 'Is International Trade';
        }
        field(19; "First Tax Return From"; Text[100])
        {
            Dataclassification = CustomerContent;
            Caption = 'First Tax Return From';
        }
        field(20; "Auto Renewal"; Boolean)
        {
            Dataclassification = CustomerContent;
            Caption = 'Auto Renewal';
        }
        field(21; "Credit Card Number"; Text[16])
        {
            Dataclassification = CustomerContent;
            Caption = 'Credit Card Number';
        }
        field(22; "Credit Card Type"; Text[20])
        {
            Dataclassification = CustomerContent;
            Caption = 'Credit Card Type';
        }
        field(23; "Is Sync"; Boolean)
        {
            Dataclassification = CustomerContent;
            Caption = 'Is Sync';
        }

    }
    keys
    {
        key(PK; "Customer Portal ID")
        {
            Clustered = true;
        }
        Key(FK; "Country Code")
        { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
page 70140954 AlfazanceAppCustomerDetails
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = alfazanceappcustomerdetails;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Customer Portal ID"; "Customer Portal ID")
                {
                    ApplicationArea = All;
                }
                field("Organization Name"; "Organization Name")
                {
                    ApplicationArea = All;
                }
                field("Contact First Name"; "Contact First Name")
                {
                    ApplicationArea = All;
                }
                field("Contact Last Name"; "Contact Last Name")
                {
                    ApplicationArea = All;
                }
                field(Email; Email)
                {
                    ApplicationArea = All;
                }
                field(password; password)
                {
                    ApplicationArea = All;
                    ExtendedDatatype = Masked;
                }
                field(Phone; Phone)
                {
                    ApplicationArea = All;
                }
                field("Country Code"; "Country Code")
                {
                    ApplicationArea = All;
                }
                field("Business Designated Zone"; "Business Designated Zone")
                {
                    ApplicationArea = All;
                }
                field(Street; Street)
                {
                    ApplicationArea = All;
                }
                field(City; City)
                {
                    ApplicationArea = All;
                }
                field("Pin Code"; "Pin Code")
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; "Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Language Code"; "Language Code")
                {
                    ApplicationArea = All;
                }
                field("Time Zone"; "Time Zone")
                {
                    ApplicationArea = All;
                }
                field("VAT Registered"; "VAT Registered")
                {
                    ApplicationArea = All;
                }
                field("TAX Registration Number"; "TAX Registration Number")
                {
                    ApplicationArea = All;
                }
                field("Is International Trade"; "Is International Trade")
                {
                    ApplicationArea = All;
                }
                field("First Tax Return From"; "First Tax Return From")
                {
                    ApplicationArea = All;
                }
                field("Auto Renewal"; "Auto Renewal")
                {
                    ApplicationArea = All;
                }
                field("Credit Card Number"; "Credit Card Number")
                {
                    ApplicationArea = All;
                }
                field("Credit Card Type"; "Credit Card Type")
                {
                    ApplicationArea = All;
                }
                field("Is Sync"; "Is Sync")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
