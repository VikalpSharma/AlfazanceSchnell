page 70140951 "Alfa Company Setup Wizard"
{
    PageType = NavigatePage;
    //PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Alfa Config. Setup";
    Caption = 'Wizard';
    layout
    {
        area(Content)
        {
            group(StandardBanner)
            {
                Editable = false;
                Visible = TopBannerVisible;
                ShowCaption = false;
                field(MediaResourcesRec; MediaResourcesRec."Media Reference")
                {
                    ApplicationArea = ALL;
                    ShowCaption = false;
                }
            }
            group(Step1)
            {
                Visible = (CurrentStep = 1);
                ShowCaption = false;
                group(Welcome)
                {
                    Caption = 'Welcome to Alfazance Schnell.';
                    InstructionalText = 'Self Implement Wizard on Microsoft Dynamics 365 Business Central';
                    group(Letsgo)
                    {
                        Caption = 'CLICK NEXT TO GET STARTED';
                        //InstructionalText = 'Choose Next to get started.';
                    }
                }
            }
            group(Step2)
            {
                Visible = (CurrentStep = 2);
                ShowCaption = false;
                group("Enter License Key")
                {
                    ShowCaption = False;
                    field(CustomerName; CustomerName)
                    {
                        ApplicationArea = All;
                        Caption = 'User ID';
                        ToolTip = 'Enter User ID';
                    }
                    field(LicenseKey; LicenseKey)
                    {
                        ApplicationArea = All;
                        Caption = 'License Key';
                        ToolTip = 'Enter license key';
                        ExtendedDatatype = Masked;
                    }

                }
            }
            group(Step3)
            {
                Visible = (CurrentStep = 3);
                ShowCaption = false;
                group("Enter company complete information")
                {

                    group("Enter basic info")
                    {
                        Caption = 'Enter Basic Info';
                        field(Name; Name)
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the name of your company that you are configuring.';
                        }
                        field(Address; Address)
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies an address for the company that you are configuring.';
                        }
                        field("Address 2"; "Address 2")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies additional address information.';
                        }
                        field("Post Code"; "Post Code")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the postal code.';
                        }
                        field(City; City)
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the city where the company that you are configuring is located.';
                        }
                        field("Country/Region Code"; "Country/Region Code")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the country/region of the address.';
                        }
                        field("VAT Registration No."; "VAT Registration No.")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the VAT registration number.';
                        }
                        field("Industrial Classification"; "Industrial Classification")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the type of industry that the company that you are configuring is.';
                        }
                        field(Picture; Picture)
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the picture that has been set up for the company, for example, a company logo.';
                        }

                    }
                    group("Enter communication info")
                    {
                        field("Phone No."; "Phone No.")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the telephone number of the company that you are configuring.';
                        }
                        field("Fax No."; "Fax No.")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies fax number of the company that you are configuring.';
                        }
                        field("E-Mail"; "E-Mail")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the email address of the company that you are configuring.';
                        }
                        field("Home Page"; "Home Page")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies your company web site.';
                        }
                    }
                    group("Enter payment info")
                    {
                        field("Bank Name"; "Bank Name")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the name of the bank the company uses.';
                        }
                        field("Bank Branch No."; "Bank Branch No.")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the branch number of the bank that the company that you are configuring uses.';
                        }
                        field("Bank Account No."; "Bank Account No.")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the bank account number of the company that you are configuring.';
                        }
                        field("Payment Routing No."; "Payment Routing No.")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the payment routing number of the company that you are configuring.';
                        }
                        field("Giro No."; "Giro No.")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the giro number of the company that you are configuring.';
                        }
                        field("SWIFT Code"; "SWIFT Code")
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the SWIFT code (international bank identifier code) of the primary bank of the company that you are configuring.';
                        }
                        field(IBAN; IBAN)
                        {
                            ApplicationArea = All;
                            ToolTip = 'Specifies the international bank account number of the primary bank account of the company that you are configuring.';
                        }
                    }
                }
            }
            group(Step4)
            {
                Caption = 'Import Configuration.';
                Visible = (CurrentStep = 4);
                group(Control1)
                {
                    ShowCaption = false;
                    InstructionalText = 'Choose Next to load the data from the configuration to Business Central tables.';
                    Visible = ActionBackAllowed;
                }
                group(Control2)
                {
                    Caption = 'BRAVO!!!!';
                    InstructionalText = 'Setups and configuration is completed.';
                    Visible = ActionFinishAllowed;
                }
                group(Control3)
                {
                    ShowCaption = false;
                    InstructionalText = 'Let’s start importing master data.';
                    Visible = ActionFinishAllowed;
                }

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Import Configuration")
            {
                ApplicationArea = All;
                Caption = 'Import Configuration';
                Visible = (currentstep = 4);
                Image = Import;
                InFooterBar = True;
                ToolTip = 'Import the configurations and setup the company';

                trigger OnAction()
                begin
                    if CompleteWizard then begin
                        ActionFinishAllowed := true;
                        ActionBackAllowed := false;
                    end else
                        Error(Text003);
                end;
            }
            action(ActionBack)
            {
                ApplicationArea = All;
                Caption = 'Back';
                InFooterBar = true;
                Image = PreviousRecord;
                Enabled = ActionBackAllowed;

                trigger OnAction()
                begin
                    TakeStep(-1);
                end;
            }

            action(ActionNext)
            {
                ApplicationArea = All;
                Caption = 'Next';
                InFooterBar = true;
                Image = NextRecord;
                Enabled = ActionNextAllowed;

                trigger OnAction()
                var
                    AlfaLicense: Record "Alfa License";
                begin
                    IF CurrentStep = 2 THEN
                        AlfaLicense.CheckLicense(ProductId, LicenseKey);
                    If CurrentStep = 3 THEN
                        ValidateCompanyInfo();
                    TakeStep(1);
                end;
            }

            action(ActionFinish)
            {
                ApplicationArea = All;
                Caption = 'Finish';
                InFooterBar = true;
                Image = Approve;
                Enabled = ActionFinishAllowed;

                trigger OnAction()
                Var
                    AlfaLicense: Record "Alfa License";
                begin
                    CurrPage.Close();
                    AssistedSetup.SetStatus(Page::"Alfa Company Setup Wizard", AssistedSetup.Status::Completed);
                    //AlfaLicense.ImportLicense(ProductId, LicenseKey, CustomerName, ProductDesc);
                    Commit();
                    AssistedSetup.Get(70140953);
                    AssistedSetup.run;
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        CompanyInit: Codeunit "Company-Initialize";
    begin
        RESET;
        IF NOT GET THEN BEGIN
            INIT;
            INSERT;
        END ELSE begin
            DeleteAll();
            INIT;
            INSERT;
        END;
        IF NOT AssistedSetup.GET(Page::"Alfa Company Setup Wizard") THEN begin
            Commit();
            CompanyInit.Run();
            Commit();
        END;
        IF AssistedSetup.GET(Page::"Assisted Company Setup Wizard") THEN
            IF AssistedSetup.Status <> AssistedSetup.Status::Completed THEN Begin
                AssistedSetup.Status := AssistedSetup.Status::Completed;
                AssistedSetup.Modify();
            End;
        GetCompanyInfo;
        IF AlfaLicInfo.Get(ProductId) THEN
            LicenseKey := AlfaLicInfo."License Key";
        CurrentStep := 1;
        SetControls();
    end;

    trigger OnInit()
    begin
        LoadTopBanners();
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        IF CloseAction = ACTION::OK THEN
            IF AssistedSetup.GetStatus(PAGE::"Alfa Company Setup Wizard") = AssistedSetup.Status::"Not Completed" THEN
                IF NOT CONFIRM(NAVNotSetUpQst, FALSE) THEN
                    ERROR('');
    end;

    local procedure ValidateCompanyInfo()
    begin
        TestField(Name);
        TestField(Address);
        TestField("Post Code");
        TestField(City);
        TestField("Country/Region Code");
        TestField("VAT Registration No.");
        TestField("Phone No.");
    end;

    local procedure GetCompanyInfo()
    var
        Companyinfo: Record "Company Information";
    begin
        IF Companyinfo.Get then BEGIN
            Rec.TransferFields(Companyinfo);
            Rec.Modify();
        end Else
            Rec.Name := CompanyName();
    End;

    local procedure LoadTopBanners()
    var
        CompanyRec: Record "Company Information";
        LogoInStream: InStream;
    begin
        if (MediaRepositoryStandard.Get('AssistedSetup-NoText-400px.png', Format(CurrentClientType)) and
        MediaRepositoryDone.Get('AssistedSetupDone-NoText-400px.png', Format(CurrentClientType)))
        then
            if (MediaResourcesStandard.Get(MediaRepositoryStandard."Media Resources Ref") and
                MediaResourcesDone.Get(MediaRepositoryDone."Media Resources Ref"))
            then
                TopBannerVisible := MediaResourcesDone."Media Reference".HasValue();
        IF MediaRepositoryRec.Get('Schnell.png', Format(CurrentClientType())) then begin
            IF MediaResourcesRec.Get(MediaRepositoryRec."Media Resources Ref") then
                TopBannerVisible := MediaResourcesRec."Media Reference".HasValue();
        END else begin
            //MediaRepositoryRec.ImportMedia('D:\Projects\Business Central\Dynamics 365  BC\Wizard AL Projects\Schnell Company Configuration Wizard - Azure\Logo\Schnell.png', Format(CurrentClientType));
            //MediaRepositoryRec.ImportMedia('https://www.dropbox.com/s/xhpapd1pl5btyi3/Schnell.png?dl=1', Format(CurrentClientType()));
            /*
            FilePath := 'D:\Projects\Business Central\Dynamics 365  BC\Wizard AL Projects\Schnell Company Configuration Wizard - Azure\Logo\Schnell.png';
            IF FileManagement.ClientFileExists(FilePath) THEN
                ServerFileName := FileManagement.UploadFileSilent(FilePath);
            MediaRepositoryRec.ImportMedia(ServerFileName, Format(CurrentClientType()));
            */
            MediaRepositoryRec.INIT;
            MediaRepositoryRec."File Name" := 'Schnell.png';
            MediaRepositoryRec."Display Target" := 'WEB';
            MediaRepositoryRec."Media Resources Ref" := 'SCHNELL.PNG';
            MediaRepositoryRec.INSERT(TRUE);
            CompanyRec.Get();
            CompanyRec.CalcFields(Picture);
            CompanyRec.Picture.CreateInStream(LogoInStream);
            MediaResourcesRec.INIT;
            MediaResourcesRec.VALIDATE(Code, 'SCHNELL.PNG');
            //MediaResourcesRec."Media Reference".IMPORTFILE(FilePath, 'SCHNELL.PNG');
            MediaResourcesRec."Media Reference".ImportStream(LogoInStream, 'SCHNELL.PNG', '.png');
            MediaResourcesRec.Insert(true);
            Commit();
            IF (MediaRepositoryRec.Get('Schnell.png', Format(CurrentClientType()))) AND
                (MediaResourcesRec.Get(MediaRepositoryRec."Media Resources Ref")) THEN
                TopBannerVisible := MediaResourcesRec."Media Reference".HasValue();
        END;

    end;

    local procedure SetControls()
    begin
        ActionBackAllowed := CurrentStep > 1;
        ActionNextAllowed := CurrentStep < 4;
        //ActionFinishAllowed := CurrentStep = 4;
    end;

    local procedure TakeStep(Step: Integer)
    begin
        CurrentStep += Step;
        SetControls();
    end;

    Var
        CurrentStep: Integer;
        ActionBackAllowed: Boolean;
        ActionNextAllowed: Boolean;
        ActionFinishAllowed: Boolean;
        MediaRepositoryStandard: Record "Media Repository";
        MediaRepositoryDone: Record "Media Repository";
        MediaResourcesStandard: Record "Media Resources";
        MediaResourcesDone: Record "Media Resources";
        TopBannerVisible: Boolean;
        AssistedSetup: Record "Assisted Setup";
        NAVNotSetUpQst: Label 'Email has not been set up.\\Are you sure you want to exit?';
        Text004: Label 'Select a package file.';
        Text003: Label 'Select a package to run the Apply Package function.';
        ApplyVisible: Boolean;
        ConfigVisible: Boolean;
        PackageIsAlreadyAppliedErr: Label 'A package has already been selected and applied.';
        PackageFileName: Text;
        LicenseKey: Text[250];
        CustomerName: Text[100];
        ProductId: Label 'ALFA100002';
        ProductDesc: Label 'Company Configuration Wizard';
        AlfaLicInfo: Record "Alfa License";
        MediaRepositoryRec: Record "Media Repository";
        MediaResourcesRec: Record "Media Resources";
        FileManagement: Codeunit "File Management";
        FilePath: Text[250];
        ServerFileName: Text[250];
}