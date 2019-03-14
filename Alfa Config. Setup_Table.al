table 70140951 "Alfa Config. Setup"
{
    // version NAVW113.00
    Caption = 'Alfa Config. Setup';
    ReplicateData = false;
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(4; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(5; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(6; City; Text[30])
        {
            Caption = 'City';
        }
        field(7; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(8; "Phone No. 2"; Text[30])
        {
            Caption = 'Phone No. 2';
        }
        field(9; "Telex No."; Text[30])
        {
            Caption = 'Telex No.';
        }
        field(10; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(11; "Giro No."; Text[20])
        {
            Caption = 'Giro No.';
        }
        field(12; "Bank Name"; Text[50])
        {
            AccessByPermission = TableData "Bank Account" = R;
            Caption = 'Bank Name';
        }
        field(13; "Bank Branch No."; Text[20])
        {
            AccessByPermission = TableData "Bank Account" = R;
            Caption = 'Bank Branch No.';
        }
        field(14; "Bank Account No."; Text[30])
        {
            AccessByPermission = TableData "Bank Account" = R;
            Caption = 'Bank Account No.';
        }
        field(15; "Payment Routing No."; Text[20])
        {
            Caption = 'Payment Routing No.';
        }
        field(17; "Customs Permit No."; Text[10])
        {
            Caption = 'Customs Permit No.';
        }
        field(18; "Customs Permit Date"; Date)
        {
            Caption = 'Customs Permit Date';
        }
        field(19; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(20; "Registration No."; Text[20])
        {
            Caption = 'Registration No.';
        }
        field(21; "Telex Answer Back"; Text[20])
        {
            Caption = 'Telex Answer Back';
        }
        field(22; "Ship-to Name"; Text[50])
        {
            Caption = 'Ship-to Name';
        }
        field(23; "Ship-to Name 2"; Text[50])
        {
            Caption = 'Ship-to Name 2';
        }
        field(24; "Ship-to Address"; Text[50])
        {
            Caption = 'Ship-to Address';
        }
        field(25; "Ship-to Address 2"; Text[50])
        {
            Caption = 'Ship-to Address 2';
        }
        field(26; "Ship-to City"; Text[30])
        {
            Caption = 'Ship-to City';
        }
        field(27; "Ship-to Contact"; Text[50])
        {
            Caption = 'Ship-to Contact';
        }
        field(28; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
        }
        field(29; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(30; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
        }
        field(31; County; Text[30])
        {
            CaptionClass = '5,1,' + "Country/Region Code";
            Caption = 'County';
        }
        field(32; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
        }
        field(33; "Ship-to County"; Text[30])
        {
            CaptionClass = '5,1,' + "Ship-to Country/Region Code";
            Caption = 'Ship-to County';
        }
        field(34; "E-Mail"; Text[80])
        {
            Caption = 'Email';
        }
        field(35; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
        }
        field(36; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
        }
        field(37; "Ship-to Country/Region Code"; Code[10])
        {
            Caption = 'Ship-to Country/Region Code';
        }
        field(38; IBAN; Code[50])
        {
            Caption = 'IBAN';

            trigger OnValidate()
            var
                CompanyInfo: Record "Company Information";
            begin
                CompanyInfo.CheckIBAN(IBAN);
            end;
        }
        field(39; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
        }
        field(40; "Industrial Classification"; Text[30])
        {
            Caption = 'Industrial Classification';
        }
        field(500; "Logo Position on Documents"; Option)
        {
            Caption = 'Logo Position on Documents';
            OptionCaption = 'No Logo,Left,Center,Right';
            OptionMembers = "No Logo",Left,Center,Right;
        }
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
        }
        field(5791; "Check-Avail. Period Calc."; DateFormula)
        {
            Caption = 'Check-Avail. Period Calc.';
        }
        field(5792; "Check-Avail. Time Bucket"; Option)
        {
            Caption = 'Check-Avail. Time Bucket';
            OptionCaption = 'Day,Week,Month,Quarter,Year';
            OptionMembers = Day,Week,Month,Quarter,Year;
        }
        field(7600; "Base Calendar Code"; Code[10])
        {
            Caption = 'Base Calendar Code';
        }
        field(7601; "Cal. Convergence Time Frame"; DateFormula)
        {
            Caption = 'Cal. Convergence Time Frame';
            InitValue = '1Y';
        }
        field(8600; "Package File Name"; Text[250])
        {
            Caption = 'Package File Name';

        }
        field(8601; "Package Code"; Code[20])
        {
            Caption = 'Package Code';
            Editable = false;
        }
        field(8602; "Language ID"; Integer)
        {
            Caption = 'Language ID';
            Editable = false;
            TableRelation = "Windows Language";
        }
        field(8603; "Product Version"; Text[80])
        {
            Caption = 'Product Version';
            Editable = false;
        }
        field(8604; "Package Name"; Text[50])
        {
            Caption = 'Package Name';
        }
        field(8605; "Your Profile Code"; Code[30])
        {
            Caption = 'Your Profile Code';
            TableRelation = "All Profile"."Profile ID";
        }
        field(8606; "Your Profile App ID"; Guid)
        {
            Caption = 'Your Profile App ID';
        }
        field(8607; "Your Profile Scope"; Option)
        {
            Caption = 'Your Profile Scope';
            OptionCaption = 'System,Tenant';
            OptionMembers = System,Tenant;
        }
        field(8608; "Package File"; BLOB)
        {
            Caption = 'Package File';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
        }
    }
    procedure CompleteWizard(): Boolean
    var
        Scope: Option System,Tenant;
        AppID: Guid;
    begin
        CopyCompInfo;
        CopyConfiguration;
        SelectDefaultRoleCenter("Your Profile Code", AppID, Scope::System);
        exit(true);
    end;

    procedure SelectDefaultRoleCenter(ProfileID: Code[30]; AppID: Guid; Scope: Option System,Tenant)
    var
        "Profile": Record "All Profile";
        ConfPersonalizationMgt: Codeunit "Conf./Personalization Mgt.";
    begin
        if Profile.Get(Scope, AppID, ProfileID) then begin
            Profile.Validate("Default Role Center", true);
            Profile.Modify;
            ConfPersonalizationMgt.ChangeDefaultRoleCenter(Profile);
        end;
    end;

    procedure CopyCompInfo()
    var
        CompanyInfo: Record "Company Information";
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
    begin
        if not CompanyInfo.Get then begin
            CompanyInfo.Init;
            CompanyInfo.Insert;
        end;
        CompanyInfo.TransferFields(Rec);
        CompanyInfo.Modify;

        if not SalesReceivablesSetup.Get then begin
            SalesReceivablesSetup.Init;
            SalesReceivablesSetup.Insert;
        end;
        SalesReceivablesSetup."Logo Position on Documents" := "Logo Position on Documents";
        SalesReceivablesSetup.Modify;

        Commit;
    end;

    procedure CopyConfiguration()
    var
        PaymentTerms: Record "Payment Terms";
        Currency: Record "Currency";
        Language: Record "Language";
        CountryRegion: Record "Country/Region";
        ShipmentMethod: Record "Shipment Method";
        GLAccount: Record "G/L Account";
        RoundingMethod: Record "Rounding Method";
        AccountingPeriod: Record "Accounting Period";
        GenJournalTemplate: Record "Gen. Journal Template";
        ItemJournalTemplate: Record "Item Journal Template";
        AccScheduleName: Record "Acc. Schedule Name";
        AccScheduleLine: Record "Acc. Schedule Line";
        CustomerPostingGroup: Record "Customer Posting Group";
        VendorPostingGroup: Record "Vendor Posting Group";
        InventoryPostingGroup: Record "Inventory Posting Group";
        GeneralLedgerSetup: Record "General Ledger Setup";
        UnitofMeasure: Record "Unit of Measure";
        PostCode: Record "Post Code";
        GenJournalBatch: Record "Gen. Journal Batch";
        ItemJournalBatch: Record "Item Journal Batch";
        GenBusinessPostingGroup: Record "Gen. Business Posting Group";
        GenProductPostingGroup: Record "Gen. Product Posting Group";
        GeneralPostingSetup: Record "General Posting Setup";
        BankAccountPostingGroup: Record "Bank Account Posting Group";
        PaymentMethod: Record "Payment Method";
        NoSeries: Record "No. Series";
        NoSeriesLine: Record "No. Series Line";
        NoSeriesRelationship: Record "No. Series Relationship";
        SalesReceivablesSetup: Record "Sales & Receivables Setup";
        PurchasesPayablesSetup: Record "Purchases & Payables Setup";
        InventorySetup: Record "Inventory Setup";
        VATBusinessPostingGroup: Record "VAT Business Posting Group";
        VATProductPostingGroup: Record "VAT Product Posting Group";
        VATPostingSetup: Record "VAT Posting Setup";
        TrialBalanceSetup: Record "Trial Balance Setup";
        DataMigrationSetup: Record "Data Migration Setup";
        FASetup: Record "FA Setup";
        FAPostingTypeSetup: Record "FA Posting Type Setup";
        FAJournalSetup: Record "FA Journal Setup";
        FAPostingGroup: Record "FA Posting Group";
        DepreciationBook: Record "Depreciation Book";
        FAJournalTemplate: Record "FA Journal Template";
        FAJournalBatch: Record "FA Journal Batch";
        FAReclassJournalTemplate: Record "FA Reclass. Journal Template";
        FAReclassJournalBatch: Record "FA Reclass. Journal Batch";
        WarehouseSetup: Record "Warehouse Setup";
        InventoryPostingSetup: Record "Inventory Posting Setup";
        ReturnReason: Record "Return Reason";
        PaymentTermsMain: Record "Payment Terms";
        CurrencyMain: Record "Currency";
        LanguageMain: Record "Language";
        CountryRegionMain: Record "Country/Region";
        ShipmentMethodMain: Record "Shipment Method";
        GLAccountMain: Record "G/L Account";
        RoundingMethodMain: Record "Rounding Method";
        AccountingPeriodMain: Record "Accounting Period";
        GenJournalTemplateMain: Record "Gen. Journal Template";
        ItemJournalTemplateMain: Record "Item Journal Template";
        AccScheduleNameMain: Record "Acc. Schedule Name";
        AccScheduleLineMain: Record "Acc. Schedule Line";
        CustomerPostingGroupMain: Record "Customer Posting Group";
        VendorPostingGroupMain: Record "Vendor Posting Group";
        InventoryPostingGroupMain: Record "Inventory Posting Group";
        GeneralLedgerSetupMain: Record "General Ledger Setup";
        UnitofMeasureMain: Record "Unit of Measure";
        PostCodeMain: Record "Post Code";
        GenJournalBatchMain: Record "Gen. Journal Batch";
        ItemJournalBatchMain: Record "Item Journal Batch";
        GenBusinessPostingGroupMain: Record "Gen. Business Posting Group";
        GenProductPostingGroupMain: Record "Gen. Product Posting Group";
        GeneralPostingSetupMain: Record "General Posting Setup";
        BankAccountPostingGroupMain: Record "Bank Account Posting Group";
        PaymentMethodMain: Record "Payment Method";
        NoSeriesMain: Record "No. Series";
        NoSeriesLineMain: Record "No. Series Line";
        NoSeriesRelationshipMain: Record "No. Series Relationship";
        SalesReceivablesSetupMain: Record "Sales & Receivables Setup";
        PurchasesPayablesSetupMain: Record "Purchases & Payables Setup";
        InventorySetupMain: Record "Inventory Setup";
        VATBusinessPostingGroupMain: Record "VAT Business Posting Group";
        VATProductPostingGroupMain: Record "VAT Product Posting Group";
        VATPostingSetupMain: Record "VAT Posting Setup";
        TrialBalanceSetupMain: Record "Trial Balance Setup";
        DataMigrationSetupMain: Record "Data Migration Setup";
        FASetupMain: Record "FA Setup";
        FAPostingTypeSetupMain: Record "FA Posting Type Setup";
        FAJournalSetupMain: Record "FA Journal Setup";
        FAPostingGroupMain: Record "FA Posting Group";
        DepreciationBookMain: Record "Depreciation Book";
        FAJournalTemplateMain: Record "FA Journal Template";
        FAJournalBatchMain: Record "FA Journal Batch";
        FAReclassJournalTemplateMain: Record "FA Reclass. Journal Template";
        FAReclassJournalBatchMain: Record "FA Reclass. Journal Batch";
        WarehouseSetupMain: Record "Warehouse Setup";
        InventoryPostingSetupMain: Record "Inventory Posting Setup";
        ReturnReasonMain: Record "Return Reason";
    begin
        PaymentTerms.ChangeCompany('CRONUS International Ltd.');
        If PaymentTerms.FindSet() THEN repeat
                                           PaymentTermsmain.Init();
                                           PaymentTermsMain.TransferFields(PaymentTerms);
                                           PaymentTermsMain.Insert();
            until PaymentTerms.Next = 0;
        Currency.ChangeCompany('CRONUS International Ltd.');
        If Currency.FindSet() THEN repeat
                                       Currencymain.Init();
                                       CurrencyMain.TransferFields(Currency);
                                       CurrencyMain.Insert();
            until Currency.Next = 0;
        Language.ChangeCompany('CRONUS International Ltd.');
        IF Language.FINDSET() THEN REPEAT
                                       LanguageMain.INIT;
                                       LanguageMain.TransferFields(Language);
                                       LanguageMain.Insert();
            until Language.Next = 0;
        CountryRegion.ChangeCompany('CRONUS International Ltd.');
        IF CountryRegion.FINDSET() THEN REPEAT
                                            CountryRegionMain.INIT;
                                            CountryRegionMain.TransferFields(CountryRegion);
                                            CountryRegionMain.Insert();
            until CountryRegion.Next = 0;
        ShipmentMethod.ChangeCompany('CRONUS International Ltd.');
        IF ShipmentMethod.FINDSET() THEN REPEAT
                                             ShipmentMethodMain.INIT;
                                             ShipmentMethodMain.TransferFields(ShipmentMethod);
                                             ShipmentMethodMain.Insert();
            until ShipmentMethod.Next = 0;
        GLAccount.ChangeCompany('CRONUS International Ltd.');
        IF GLAccount.FINDSET() THEN REPEAT
                                        GLAccountMain.INIT;
                                        GLAccountMain.TransferFields(GLAccount);
                                        GLAccountMain.Insert();
            until GLAccount.Next = 0;
        RoundingMethod.ChangeCompany('CRONUS International Ltd.');
        IF RoundingMethod.FINDSET() THEN REPEAT
                                             RoundingMethodMain.INIT;
                                             RoundingMethodMain.TransferFields(RoundingMethod);
                                             RoundingMethodMain.Insert();
            until RoundingMethod.Next = 0;
        AccountingPeriod.ChangeCompany('CRONUS International Ltd.');
        IF AccountingPeriod.FINDSET() THEN REPEAT
                                               AccountingPeriodMain.INIT;
                                               AccountingPeriodMain.TransferFields(AccountingPeriod);
                                               AccountingPeriodMain.Insert();
            until AccountingPeriod.Next = 0;
        GenJournalTemplate.ChangeCompany('CRONUS International Ltd.');
        IF GenJournalTemplate.FINDSET() THEN REPEAT
                                                 GenJournalTemplateMain.INIT;
                                                 GenJournalTemplateMain.TransferFields(GenJournalTemplate);
                                                 GenJournalTemplateMain.Insert();
            until GenJournalTemplate.Next = 0;
        ItemJournalTemplate.ChangeCompany('CRONUS International Ltd.');
        IF ItemJournalTemplate.FINDSET() THEN REPEAT
                                                  ItemJournalTemplateMain.INIT;
                                                  ItemJournalTemplateMain.TransferFields(ItemJournalTemplate);
                                                  ItemJournalTemplateMain.Insert();
            until ItemJournalTemplate.Next = 0;
        AccScheduleName.ChangeCompany('CRONUS International Ltd.');
        IF AccScheduleName.FINDSET() THEN REPEAT
                                              AccScheduleNameMain.INIT;
                                              AccScheduleNameMain.TransferFields(AccScheduleName);
                                              AccScheduleNameMain.Insert();
            until AccScheduleName.Next = 0;
        AccScheduleLine.ChangeCompany('CRONUS International Ltd.');
        IF AccScheduleLine.FINDSET() THEN REPEAT
                                              AccScheduleLineMain.INIT;
                                              AccScheduleLineMain.TransferFields(AccScheduleLine);
                                              AccScheduleLineMain.Insert();
            until AccScheduleLine.Next = 0;
        CustomerPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF CustomerPostingGroup.FINDSET() THEN REPEAT
                                                   CustomerPostingGroupMain.INIT;
                                                   CustomerPostingGroupMain.TransferFields(CustomerPostingGroup);
                                                   CustomerPostingGroupMain.Insert();
            until CustomerPostingGroup.Next = 0;
        VendorPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF VendorPostingGroup.FINDSET() THEN REPEAT
                                                 VendorPostingGroupMain.INIT;
                                                 VendorPostingGroupMain.TransferFields(VendorPostingGroup);
                                                 VendorPostingGroupMain.Insert();
            until VendorPostingGroup.Next = 0;
        InventoryPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF InventoryPostingGroup.FINDSET() THEN REPEAT
                                                    InventoryPostingGroupMain.INIT;
                                                    InventoryPostingGroupMain.TransferFields(InventoryPostingGroup);
                                                    InventoryPostingGroupMain.Insert();
            until InventoryPostingGroup.Next = 0;
        GeneralLedgerSetup.ChangeCompany('CRONUS International Ltd.');
        IF GeneralLedgerSetup.FINDSET() THEN REPEAT
                                                 GeneralLedgerSetupMain.INIT;
                                                 GeneralLedgerSetupMain.TransferFields(GeneralLedgerSetup);
                                                 GeneralLedgerSetupMain.Insert();
            until GeneralLedgerSetup.Next = 0;
        UnitofMeasure.ChangeCompany('CRONUS International Ltd.');
        IF UnitofMeasure.FINDSET() THEN REPEAT
                                            UnitofMeasureMain.INIT;
                                            UnitofMeasureMain.TransferFields(UnitofMeasure);
                                            UnitofMeasureMain.Insert();
            until UnitofMeasure.Next = 0;
        PostCode.ChangeCompany('CRONUS International Ltd.');
        IF PostCode.FINDSET() THEN REPEAT
                                       PostCodeMain.INIT;
                                       PostCodeMain.TransferFields(PostCode);
                                       PostCodeMain.Insert();
            until PostCode.Next = 0;
        GenJournalBatch.ChangeCompany('CRONUS International Ltd.');
        IF GenJournalBatch.FINDSET() THEN REPEAT
                                              GenJournalBatchMain.INIT;
                                              GenJournalBatchMain.TransferFields(GenJournalBatch);
                                              GenJournalBatchMain.Insert();
            until GenJournalBatch.Next = 0;
        ItemJournalBatch.ChangeCompany('CRONUS International Ltd.');
        IF ItemJournalBatch.FINDSET() THEN REPEAT
                                               ItemJournalBatchMain.INIT;
                                               ItemJournalBatchMain.TransferFields(ItemJournalBatch);
                                               ItemJournalBatchMain.Insert();
            until ItemJournalBatch.Next = 0;
        GenBusinessPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF GenBusinessPostingGroup.FINDSET() THEN REPEAT
                                                      GenBusinessPostingGroupMain.INIT;
                                                      GenBusinessPostingGroupMain.TransferFields(GenBusinessPostingGroup);
                                                      GenBusinessPostingGroupMain.Insert();
            until GenBusinessPostingGroup.Next = 0;
        GenProductPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF GenProductPostingGroup.FINDSET() THEN REPEAT
                                                     GenProductPostingGroupMain.INIT;
                                                     GenProductPostingGroupMain.TransferFields(GenProductPostingGroup);
                                                     GenProductPostingGroupMain.Insert();
            until GenProductPostingGroup.Next = 0;
        GeneralPostingSetup.ChangeCompany('CRONUS International Ltd.');
        IF GeneralPostingSetup.FINDSET() THEN REPEAT
                                                  GeneralPostingSetupMain.INIT;
                                                  GeneralPostingSetupMain.TransferFields(GeneralPostingSetup);
                                                  GeneralPostingSetupMain.Insert();
            until GeneralPostingSetup.Next = 0;
        BankAccountPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF BankAccountPostingGroup.FINDSET() THEN REPEAT
                                                      BankAccountPostingGroupMain.INIT;
                                                      BankAccountPostingGroupMain.TransferFields(BankAccountPostingGroup);
                                                      BankAccountPostingGroupMain.Insert();
            until BankAccountPostingGroup.Next = 0;
        PaymentMethod.ChangeCompany('CRONUS International Ltd.');
        IF PaymentMethod.FINDSET() THEN REPEAT
                                            PaymentMethodMain.INIT;
                                            PaymentMethodMain.TransferFields(PaymentMethod);
                                            PaymentMethodMain.Insert();
            until PaymentMethod.Next = 0;
        NoSeries.ChangeCompany('CRONUS International Ltd.');
        IF NoSeries.FINDSET() THEN REPEAT
                                       NoSeriesMain.INIT;
                                       NoSeriesMain.TransferFields(NoSeries);
                                       NoSeriesMain.Insert();
            until NoSeries.Next = 0;
        NoSeriesLine.ChangeCompany('CRONUS International Ltd.');
        IF NoSeriesLine.FINDSET() THEN REPEAT
                                           NoSeriesLineMain.INIT;
                                           NoSeriesLineMain.TransferFields(NoSeriesLine);
                                           NoSeriesLineMain.Insert();
            until NoSeriesLine.Next = 0;
        NoSeriesRelationship.ChangeCompany('CRONUS International Ltd.');
        IF NoSeriesRelationship.FINDSET() THEN REPEAT
                                                   NoSeriesRelationshipMain.INIT;
                                                   NoSeriesRelationshipMain.TransferFields(NoSeriesRelationship);
                                                   NoSeriesRelationshipMain.Insert();
            until NoSeriesRelationship.Next = 0;
        SalesReceivablesSetup.ChangeCompany('CRONUS International Ltd.');
        IF SalesReceivablesSetup.FINDSET() THEN REPEAT
                                                    SalesReceivablesSetupMain.INIT;
                                                    SalesReceivablesSetupMain.TransferFields(SalesReceivablesSetup);
                                                    SalesReceivablesSetupMain.Insert();
            until SalesReceivablesSetup.Next = 0;
        PurchasesPayablesSetup.ChangeCompany('CRONUS International Ltd.');
        IF PurchasesPayablesSetup.FINDSET() THEN REPEAT
                                                     PurchasesPayablesSetupMain.INIT;
                                                     PurchasesPayablesSetupMain.TransferFields(PurchasesPayablesSetup);
                                                     PurchasesPayablesSetupMain.Insert();
            until PurchasesPayablesSetup.Next = 0;
        InventorySetup.ChangeCompany('CRONUS International Ltd.');
        IF InventorySetup.FINDSET() THEN REPEAT
                                             InventorySetupMain.INIT;
                                             InventorySetupMain.TransferFields(InventorySetup);
                                             InventorySetupMain.Insert();
            until InventorySetup.Next = 0;
        VATBusinessPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF VATBusinessPostingGroup.FINDSET() THEN REPEAT
                                                      VATBusinessPostingGroupMain.INIT;
                                                      VATBusinessPostingGroupMain.TransferFields(VATBusinessPostingGroup);
                                                      VATBusinessPostingGroupMain.Insert();
            until VATBusinessPostingGroup.Next = 0;
        VATProductPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF VATProductPostingGroup.FINDSET() THEN REPEAT
                                                     VATProductPostingGroupMain.INIT;
                                                     VATProductPostingGroupMain.TransferFields(VATProductPostingGroup);
                                                     VATProductPostingGroupMain.Insert();
            until VATProductPostingGroup.Next = 0;
        VATPostingSetup.ChangeCompany('CRONUS International Ltd.');
        IF VATPostingSetup.FINDSET() THEN REPEAT
                                              VATPostingSetupMain.INIT;
                                              VATPostingSetupMain.TransferFields(VATPostingSetup);
                                              VATPostingSetupMain.Insert();
            until VATPostingSetup.Next = 0;
        TrialBalanceSetup.ChangeCompany('CRONUS International Ltd.');
        IF TrialBalanceSetup.FINDSET() THEN REPEAT
                                                TrialBalanceSetupMain.INIT;
                                                TrialBalanceSetupMain.TransferFields(TrialBalanceSetup);
                                                TrialBalanceSetupMain.Insert();
            until TrialBalanceSetup.Next = 0;
        DataMigrationSetup.ChangeCompany('CRONUS International Ltd.');
        IF DataMigrationSetup.FINDSET() THEN REPEAT
                                                 DataMigrationSetupMain.INIT;
                                                 DataMigrationSetupMain.TransferFields(DataMigrationSetup);
                                                 DataMigrationSetupMain.Insert();
            until DataMigrationSetup.Next = 0;
        FASetup.ChangeCompany('CRONUS International Ltd.');
        IF FASetup.FINDSET() THEN REPEAT
                                      FASetupMain.INIT;
                                      FASetupMain.TransferFields(FASetup);
                                      FASetupMain.Insert();
            until FASetup.Next = 0;
        FAPostingTypeSetup.ChangeCompany('CRONUS International Ltd.');
        IF FAPostingTypeSetup.FINDSET() THEN REPEAT
                                                 FAPostingTypeSetupMain.INIT;
                                                 FAPostingTypeSetupMain.TransferFields(FAPostingTypeSetup);
                                                 FAPostingTypeSetupMain.Insert();
            until FAPostingTypeSetup.Next = 0;
        FAJournalSetup.ChangeCompany('CRONUS International Ltd.');
        IF FAJournalSetup.FINDSET() THEN REPEAT
                                             FAJournalSetupMain.INIT;
                                             FAJournalSetupMain.TransferFields(FAJournalSetup);
                                             FAJournalSetupMain.Insert();
            until FAJournalSetup.Next = 0;
        FAPostingGroup.ChangeCompany('CRONUS International Ltd.');
        IF FAPostingGroup.FINDSET() THEN REPEAT
                                             FAPostingGroupMain.INIT;
                                             FAPostingGroupMain.TransferFields(FAPostingGroup);
                                             FAPostingGroupMain.Insert();
            until FAPostingGroup.Next = 0;
        DepreciationBook.ChangeCompany('CRONUS International Ltd.');
        IF DepreciationBook.FINDSET() THEN REPEAT
                                               DepreciationBookMain.INIT;
                                               DepreciationBookMain.TransferFields(DepreciationBook);
                                               DepreciationBookMain.Insert();
            until DepreciationBook.Next = 0;
        FAJournalTemplate.ChangeCompany('CRONUS International Ltd.');
        IF FAJournalTemplate.FINDSET() THEN REPEAT
                                                FAJournalTemplateMain.INIT;
                                                FAJournalTemplateMain.TransferFields(FAJournalTemplate);
                                                FAJournalTemplateMain.Insert();
            until FAJournalTemplate.Next = 0;
        FAJournalBatch.ChangeCompany('CRONUS International Ltd.');
        IF FAJournalBatch.FINDSET() THEN REPEAT
                                             FAJournalBatchMain.INIT;
                                             FAJournalBatchMain.TransferFields(FAJournalBatch);
                                             FAJournalBatchMain.Insert();
            until FAJournalBatch.Next = 0;
        FAReclassJournalTemplate.ChangeCompany('CRONUS International Ltd.');
        IF FAReclassJournalTemplate.FINDSET() THEN REPEAT
                                                       FAReclassJournalTemplateMain.INIT;
                                                       FAReclassJournalTemplateMain.TransferFields(FAReclassJournalTemplate);
                                                       FAReclassJournalTemplateMain.Insert();
            until FAReclassJournalTemplate.Next = 0;
        FAReclassJournalBatch.ChangeCompany('CRONUS International Ltd.');
        IF FAReclassJournalBatch.FINDSET() THEN REPEAT
                                                    FAReclassJournalBatchMain.INIT;
                                                    FAReclassJournalBatchMain.TransferFields(FAReclassJournalBatch);
                                                    FAReclassJournalBatchMain.Insert();
            until FAReclassJournalBatch.Next = 0;
        WarehouseSetup.ChangeCompany('CRONUS International Ltd.');
        IF WarehouseSetup.FINDSET() THEN REPEAT
                                             WarehouseSetupMain.INIT;
                                             WarehouseSetupMain.TransferFields(WarehouseSetup);
                                             WarehouseSetupMain.Insert();
            until WarehouseSetup.Next = 0;
        InventoryPostingSetup.ChangeCompany('CRONUS International Ltd.');
        IF InventoryPostingSetup.FINDSET() THEN REPEAT
                                                    InventoryPostingSetupMain.INIT;
                                                    InventoryPostingSetupMain.TransferFields(InventoryPostingSetup);
                                                    InventoryPostingSetupMain.Insert();
            until InventoryPostingSetup.Next = 0;
        ReturnReason.ChangeCompany('CRONUS International Ltd.');
        IF ReturnReason.FINDSET() THEN REPEAT
                                           ReturnReasonMain.INIT;
                                           ReturnReasonMain.TransferFields(ReturnReason);
                                           ReturnReasonMain.Insert();
            until ReturnReason.Next = 0;
    end;

}

